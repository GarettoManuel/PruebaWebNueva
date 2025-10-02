using System.ComponentModel.DataAnnotations;

namespace PruebaWebNueva.Domain.Entities
{
    public class Permiso
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Nombre { get; set; } = string.Empty;

        [StringLength(200)]
        public string Descripcion { get; set; } = string.Empty;

        [Required]
        [StringLength(50)]
        public string Modulo { get; set; } = string.Empty; // "Productos", "Clientes", "Ventas", "Stock"

        [Required]
        [StringLength(20)]
        public string Accion { get; set; } = string.Empty; // "Leer", "Crear", "Editar", "Eliminar"

        // Relación con usuarios
        public virtual ICollection<UsuarioPermiso> UsuarioPermisos { get; set; } = new List<UsuarioPermiso>();
    }
}