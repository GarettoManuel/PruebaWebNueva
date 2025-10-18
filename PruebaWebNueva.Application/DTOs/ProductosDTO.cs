namespace PruebaWebNueva.Application.DTOs
{
    public class ProductosDTO
    {
        public int Id { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public decimal Precio { get; set; }
        public string? Descripcion { get; set; }
        public int CantidadStock { get; set; }
        public int StockMinimo { get; set; }
        public DateTime FechaUltimaActualizacion { get; set; }
        public string? CodigoBarras { get; set; }
        public string? Categoria { get; set; }
    }
}