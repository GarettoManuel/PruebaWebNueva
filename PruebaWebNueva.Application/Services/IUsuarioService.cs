using PruebaWebNueva.Domain.Entities;

namespace PruebaWebNueva.Application.Services
{
    public interface IUsuarioService
    {
        Task<List<Usuario>> GetAllAsync();
        Task<Usuario?> GetByIdAsync(int id);
        Task<Usuario> CreateAsync(Usuario usuario, string password, List<int> permisosIds);
        Task UpdateAsync(Usuario usuario);
        Task DeleteAsync(int id);
        Task<bool> ChangePasswordAsync(int usuarioId, string passwordActual, string passwordNueva);
        Task AssignPermisosAsync(int usuarioId, List<int> permisosIds);
        Task<List<Permiso>> GetAllPermisosAsync();
    }
}