namespace PruebaWebNueva.Application.Services
{
    public interface IEmailService
    {
        Task<bool> EnviarReporteStockAsync(string emailDestino, string nombreUsuario);
        Task<bool> EnviarEmailAsync(string emailDestino, string asunto, string mensaje, byte[]? archivo = null, string? nombreArchivo = null);
    }
}