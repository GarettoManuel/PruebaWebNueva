using Microsoft.EntityFrameworkCore;
using PruebaWebNueva.Domain.Entities;
using PruebaWebNueva.Infrastructure.Persistence;

namespace PruebaWebNueva.Application.Services
{
    public class AuthService : IAuthService
    {
        private readonly AppDbContext _context;
        private static Usuario? _usuarioActualGlobal; // Static para mantener entre requests

        public AuthService(AppDbContext context)
        {
            _context = context;
        }

        public async Task<Usuario?> LoginAsync(string nombreUsuario, string password)
        {
            var usuario = await _context.Usuarios
                .Include(u => u.UsuarioPermisos)
                    .ThenInclude(up => up.Permiso)
                .FirstOrDefaultAsync(u => u.NombreUsuario == nombreUsuario && u.Activo);

            if (usuario != null && BCrypt.Net.BCrypt.Verify(password, usuario.PasswordHash))
            {
                // Actualizar último login
                usuario.UltimoLogin = DateTime.Now;
                await _context.SaveChangesAsync();

                // Guardar usuario globalmente
                _usuarioActualGlobal = usuario;
                return usuario;
            }

            return null;
        }

        public Task LogoutAsync()
        {
            _usuarioActualGlobal = null;
            return Task.CompletedTask;
        }

        public async Task<bool> TienePermisoAsync(int usuarioId, string modulo, string accion)
        {
            return await _context.UsuarioPermisos
                .Include(up => up.Permiso)
                .AnyAsync(up => up.UsuarioId == usuarioId &&
                              up.Permiso.Modulo == modulo &&
                              up.Permiso.Accion == accion);
        }

        public async Task<List<Permiso>> GetPermisosUsuarioAsync(int usuarioId)
        {
            return await _context.UsuarioPermisos
                .Where(up => up.UsuarioId == usuarioId)
                .Select(up => up.Permiso)
                .ToListAsync();
        }

        public Task<Usuario?> GetUsuarioActualAsync()
        {
            return Task.FromResult(_usuarioActualGlobal);
        }

        public void SetUsuarioActual(Usuario usuario)
        {
            _usuarioActualGlobal = usuario;
        }
    }
}