namespace PruebaWebNueva.Application.Services
{
    public interface IExcelService
    {
        Task<byte[]> GenerarReporteStockAsync();
        Task<byte[]> GenerarReporteProductosAsync();
    }
}