using MailKit.Net.Smtp;
using MimeKit;
using Microsoft.Extensions.Configuration;

namespace PruebaWebNueva.Application.Services
{
    public class EmailService : IEmailService
    {
        private readonly IConfiguration _configuration;
        private readonly IExcelService _excelService;

        public EmailService(IConfiguration configuration, IExcelService excelService)
        {
            _configuration = configuration;
            _excelService = excelService;
        }

        public async Task<bool> EnviarReporteStockAsync(string emailDestino, string nombreUsuario)
        {
            try
            {
                // Generar archivo Excel
                var archivoExcel = await _excelService.GenerarReporteStockAsync();
                string nombreArchivo = $"ReporteStock_{DateTime.Now:yyyyMMdd_HHmm}.xlsx";

                // Crear mensaje HTML
                string mensaje = $@"
                <html>
                <body style='font-family: Arial, sans-serif;'>
                    <h2 style='color: #007bff;'>Reporte de Stock - SistemaGest</h2>
                    <p>Estimado/a <strong>{nombreUsuario}</strong>,</p>
                    <p>Se adjunta el reporte de stock solicitado, generado el <strong>{DateTime.Now:dd/MM/yyyy}</strong> a las <strong>{DateTime.Now:HH:mm}</strong> hs.</p>
                    
                    <div style='background-color: #f8f9fa; padding: 15px; border-left: 4px solid #007bff; margin: 20px 0;'>
                        <h4>Información del reporte:</h4>
                        <ul>
                            <li>📊 <strong>Archivo:</strong> {nombreArchivo}</li>
                            <li>📅 <strong>Fecha de generación:</strong> {DateTime.Now:dd/MM/yyyy HH:mm}</li>
                            <li>📦 <strong>Incluye:</strong> Stock actual, stock mínimo y alertas</li>
                        </ul>
                    </div>
                    
                    <p>El archivo Excel contiene:</p>
                    <ul>
                        <li>✅ Listado completo de productos</li>
                        <li>📈 Cantidades en stock actuales</li>
                        <li>⚠️ Alertas de stock bajo y sin stock</li>
                        <li>💰 Precios actualizados</li>
                    </ul>
                    
                    <hr style='margin: 30px 0;'>
                    <p style='color: #6c757d; font-size: 12px;'>
                        Este correo fue generado automáticamente por SistemaGest.<br>
                        No responda a este mensaje.
                    </p>
                </body>
                </html>";

                return await EnviarEmailAsync(emailDestino, $"Reporte de Stock - {DateTime.Now:dd/MM/yyyy}", mensaje, archivoExcel, nombreArchivo);
            }
            catch (Exception)
            {
                return false;
            }
        }

        public async Task<bool> EnviarEmailAsync(string emailDestino, string asunto, string mensaje, byte[]? archivo = null, string? nombreArchivo = null)
        {
            try
            {
                var email = new MimeMessage();

                // Configuración del remitente (tú configurarás esto después)
                email.From.Add(new MailboxAddress("SistemaGest", _configuration["Email:Username"]));
                email.To.Add(new MailboxAddress("", emailDestino));
                email.Subject = asunto;

                var bodyBuilder = new BodyBuilder
                {
                    HtmlBody = mensaje
                };

                // Adjuntar archivo si existe
                if (archivo != null && !string.IsNullOrEmpty(nombreArchivo))
                {
                    bodyBuilder.Attachments.Add(nombreArchivo, archivo);
                }

                email.Body = bodyBuilder.ToMessageBody();

                // Configuración SMTP
                using (var smtp = new SmtpClient())
                {
                    await smtp.ConnectAsync(
                        _configuration["Email:SmtpServer"],
                        int.Parse(_configuration["Email:SmtpPort"]),
                        MailKit.Security.SecureSocketOptions.StartTls);

                    await smtp.AuthenticateAsync(_configuration["Email:Username"], _configuration["Email:Password"]);
                    await smtp.SendAsync(email);
                    await smtp.DisconnectAsync(true);
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}