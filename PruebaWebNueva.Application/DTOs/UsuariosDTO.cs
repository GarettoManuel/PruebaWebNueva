namespace PruebaWebNueva.Application.DTOs
{
    public class UsuariosDTO
    {
        public int Id { get; set; }
        public string NombreUsuario { get; set; } = string.Empty;
        public string NombreCompleto { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        // No incluir PasswordHash por seguridad en DTOs de transporte
        public bool Activo { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime? UltimoLogin { get; set; }

        // Opcional: lista de permisos por Id para evitar cargas completas de entidades
        public List<int>? PermisoIds { get; set; }
    }
}