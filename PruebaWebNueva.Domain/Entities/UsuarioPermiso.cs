namespace PruebaWebNueva.Domain.Entities
{
    public class UsuarioPermiso
    {
        public int Id { get; set; }

        public int UsuarioId { get; set; }
        public virtual Usuario Usuario { get; set; } = null!;

        public int PermisoId { get; set; }
        public virtual Permiso Permiso { get; set; } = null!;

        public DateTime FechaAsignacion { get; set; } = DateTime.Now;
    }
}