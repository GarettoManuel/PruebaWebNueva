namespace PruebaWebNueva.Application.DTOs
{
    public class UsuarioPermisosDTO
    {
        public int Id { get; set; }
        public int UsuarioId { get; set; }
        public int PermisoId { get; set; }
        public DateTime FechaAsignacion { get; set; }
    }
}