using System.ComponentModel.DataAnnotations;

namespace PruebaWebNueva.Domain.Entities
{
    public class Cliente
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "La Razón Social es obligatoria")]
        [MaxLength(150)]
        public string RazonSocial { get; set; }

        [Required(ErrorMessage = "El CUIT/CUIL es obligatorio")]
        [RegularExpression(@"^\d{2}-\d{8}-\d{1}$", ErrorMessage = "Formato de CUIT/CUIL inválido (ej: 20-12345678-3)")]
        public string CuitCuil { get; set; }

        [EmailAddress(ErrorMessage = "Formato de email inválido")]
        [MaxLength(100)]
        public string Email { get; set; }

        [Phone(ErrorMessage = "Formato de teléfono inválido")]
        [MaxLength(20)]
        public string Telefono { get; set; }

        [MaxLength(200)]
        public string Direccion { get; set; }

        [MaxLength(50)]
        public string CondicionIva { get; set; }

        public bool Activo { get; set; } = true;
    }
}
