using Microsoft.EntityFrameworkCore;
using PruebaWebNueva.Domain.Entities;
using PruebaWebNueva.Infrastructure.Persistence;

namespace PruebaWebNueva.Application.Services
{
    public class UsuarioService : IUsuarioService
    {
        private readonly AppDbContext _context;

        public UsuarioService(AppDbContext context)
        {
            _context = context;
        }

        public async Task<List<Usuario>> GetAllAsync()
        {
            return await _context.Usuarios
                .Include(u => u.UsuarioPermisos)
                    .ThenInclude(up => up.Permiso)
                .ToListAsync();
        }

        public async Task<Usuario?> GetByIdAsync(int id)
        {
            return await _context.Usuarios
                .Include(u => u.UsuarioPermisos)
                    .ThenInclude(up => up.Permiso)
                .FirstOrDefaultAsync(u => u.Id == id);
        }

        public async Task<Usuario> CreateAsync(Usuario usuario, string password, List<int> permisosIds)
        {
            usuario.PasswordHash = BCrypt.Net.BCrypt.HashPassword(password);
            usuario.FechaCreacion = DateTime.Now;

            _context.Usuarios.Add(usuario);
            await _context.SaveChangesAsync();

            // Asignar permisos
            await AssignPermisosAsync(usuario.Id, permisosIds);

            return usuario;
        }

        public async Task UpdateAsync(Usuario usuario)
        {
            _context.Usuarios.Update(usuario);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(int id)
        {
            var usuario = await _context.Usuarios.FindAsync(id);
            if (usuario != null && usuario.Id != 1) // No permitir eliminar admin
            {
                // Eliminar permisos asociados
                var permisos = await _context.UsuarioPermisos
                    .Where(up => up.UsuarioId == id)
                    .ToListAsync();

                _context.UsuarioPermisos.RemoveRange(permisos);
                _context.Usuarios.Remove(usuario);
                await _context.SaveChangesAsync();
            }
        }

        public async Task<bool> ChangePasswordAsync(int usuarioId, string passwordActual, string passwordNueva)
        {
            var usuario = await _context.Usuarios.FindAsync(usuarioId);
            if (usuario != null && BCrypt.Net.BCrypt.Verify(passwordActual, usuario.PasswordHash))
            {
                usuario.PasswordHash = BCrypt.Net.BCrypt.HashPassword(passwordNueva);
                await _context.SaveChangesAsync();
                return true;
            }
            return false;
        }

        public async Task AssignPermisosAsync(int usuarioId, List<int> permisosIds)
        {
            // Eliminar permisos existentes
            var permisosExistentes = await _context.UsuarioPermisos
                .Where(up => up.UsuarioId == usuarioId)
                .ToListAsync();

            _context.UsuarioPermisos.RemoveRange(permisosExistentes);

            // Agregar nuevos permisos
            var nuevosPermisos = permisosIds.Select(permisoId => new UsuarioPermiso
            {
                UsuarioId = usuarioId,
                PermisoId = permisoId,
                FechaAsignacion = DateTime.Now
            }).ToList();

            _context.UsuarioPermisos.AddRange(nuevosPermisos);
            await _context.SaveChangesAsync();
        }

        public async Task<List<Permiso>> GetAllPermisosAsync()
        {
            return await _context.Permisos.OrderBy(p => p.Modulo).ThenBy(p => p.Accion).ToListAsync();
        }
    }
}