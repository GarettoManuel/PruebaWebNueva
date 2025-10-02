using OfficeOpenXml;
using PruebaWebNueva.Infrastructure.Persistence;
using Microsoft.EntityFrameworkCore;
using System.Drawing;

namespace PruebaWebNueva.Application.Services
{
    public class ExcelService : IExcelService
    {
        private readonly AppDbContext _context;

        public ExcelService(AppDbContext context)
        {
            _context = context;
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
        }

        public async Task<byte[]> GenerarReporteStockAsync()
        {
            var productos = await _context.Productos.OrderBy(p => p.Nombre).ToListAsync();

            using (var package = new ExcelPackage())
            {
                var worksheet = package.Workbook.Worksheets.Add("Stock");

                // Encabezados principales
                worksheet.Cells[1, 1].Value = "REPORTE DE STOCK";
                worksheet.Cells[1, 1, 1, 8].Merge = true;
                worksheet.Cells[1, 1].Style.Font.Size = 16;
                worksheet.Cells[1, 1].Style.Font.Bold = true;
                worksheet.Cells[1, 1].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;

                worksheet.Cells[2, 1].Value = $"Generado el: {DateTime.Now:dd/MM/yyyy HH:mm}";
                worksheet.Cells[2, 1, 2, 8].Merge = true;
                worksheet.Cells[2, 1].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;

                // Headers de columnas
                int row = 4;
                worksheet.Cells[row, 1].Value = "ID";
                worksheet.Cells[row, 2].Value = "Nombre";
                worksheet.Cells[row, 3].Value = "Descripción";
                worksheet.Cells[row, 4].Value = "Precio";
                worksheet.Cells[row, 5].Value = "Stock Actual";
                worksheet.Cells[row, 6].Value = "Stock Mínimo";
                worksheet.Cells[row, 7].Value = "Estado";
                worksheet.Cells[row, 8].Value = "Última Actualización";

                // Estilo de encabezados - usando colores hex en lugar de System.Drawing.Color
                using (var range = worksheet.Cells[row, 1, row, 8])
                {
                    range.Style.Font.Bold = true;
                    range.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                    range.Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml("#ADD8E6")); // Light Blue
                    range.Style.Border.BorderAround(OfficeOpenXml.Style.ExcelBorderStyle.Thick);
                }

                // Datos
                row = 5;
                foreach (var producto in productos)
                {
                    try
                    {
                        worksheet.Cells[row, 1].Value = producto.Id;
                        worksheet.Cells[row, 2].Value = producto.Nombre ?? "";
                        worksheet.Cells[row, 3].Value = producto.Descripcion ?? "-";
                        worksheet.Cells[row, 4].Value = producto.Precio;
                        worksheet.Cells[row, 5].Value = producto.CantidadStock;
                        worksheet.Cells[row, 6].Value = producto.StockMinimo;

                        // Estado del stock
                        string estado = producto.CantidadStock <= 0 ? "SIN STOCK" :
                                       producto.CantidadStock <= producto.StockMinimo ? "STOCK BAJO" : "OK";
                        worksheet.Cells[row, 7].Value = estado;

                        // Colorear según estado usando colores hex
                        worksheet.Cells[row, 7].Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                        if (estado == "SIN STOCK")
                            worksheet.Cells[row, 7].Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml("#FFB6C1")); // Light Red
                        else if (estado == "STOCK BAJO")
                            worksheet.Cells[row, 7].Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml("#FFFFE0")); // Light Yellow
                        else
                            worksheet.Cells[row, 7].Style.Fill.BackgroundColor.SetColor(System.Drawing.ColorTranslator.FromHtml("#90EE90")); // Light Green

                        worksheet.Cells[row, 8].Value = producto.FechaUltimaActualizacion.ToString("dd/MM/yyyy HH:mm");

                        row++;
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Error procesando producto {producto.Id}: {ex.Message}");
                        continue; // Continúa con el siguiente producto
                    }
                }

                // Formato de columnas
                worksheet.Cells[5, 4, row - 1, 4].Style.Numberformat.Format = "$#,##0.00"; // Precio
                worksheet.Column(1).Width = 8;  // ID
                worksheet.Column(2).Width = 30; // Nombre
                worksheet.Column(3).Width = 35; // Descripción
                worksheet.Column(4).Width = 12; // Precio
                worksheet.Column(5).Width = 15; // Stock Actual
                worksheet.Column(6).Width = 15; // Stock Mínimo
                worksheet.Column(7).Width = 12; // Estado
                worksheet.Column(8).Width = 20; // Fecha

                // Bordes para toda la tabla
                using (var range = worksheet.Cells[4, 1, row - 1, 8])
                {
                    range.Style.Border.Top.Style = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
                    range.Style.Border.Left.Style = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
                    range.Style.Border.Right.Style = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
                    range.Style.Border.Bottom.Style = OfficeOpenXml.Style.ExcelBorderStyle.Thin;
                }

                Console.WriteLine($"Excel generado exitosamente con {productos.Count} productos");
                return package.GetAsByteArray();
            }
        }

        public async Task<byte[]> GenerarReporteProductosAsync()
        {
            return await GenerarReporteStockAsync();
        }
    }
}