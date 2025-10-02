using PruebaWebNueva.Domain.Entities;

namespace PruebaWebNueva.Application.Services
{
    public interface IAuthService
    {
        Task<Usuario?> LoginAsync(string nombreUsuario, string password);
        Task LogoutAsync();
        Task<bool> TienePermisoAsync(int usuarioId, string modulo, string accion);
        Task<List<Permiso>> GetPermisosUsuarioAsync(int usuarioId);
        Task<Usuario?> GetUsuarioActualAsync();
        void SetUsuarioActual(Usuario usuario);
    }
}