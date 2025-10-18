namespace PruebaWebNueva.Application.DTOs
{
    public class ClientesDTO
    {
        public int Id { get; set; }
        public string RazonSocial { get; set; } = string.Empty;
        public string CuitCuil { get; set; } = string.Empty;
        public string? Email { get; set; }
        public string? Telefono { get; set; }
        public string? Direccion { get; set; }
        public string? CondicionIva { get; set; }
        public bool Activo { get; set; }
    }
}