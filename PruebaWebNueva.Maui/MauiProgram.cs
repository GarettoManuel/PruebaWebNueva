using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Microsoft.Maui;
using Microsoft.Maui.Controls.Hosting;
using Microsoft.Maui.Hosting;
using PruebaWebNueva.Application.Services;
using PruebaWebNueva.Infrastructure;
using PruebaWebNueva.Infrastructure.Persistence;

namespace PruebaWebNueva.Maui
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();

            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Services.AddLogging(logging =>
            {
                logging.AddDebug();
            });
#endif

            // Configurar DbContext con SQLite
            var dbPath = Path.Combine(FileSystem.AppDataDirectory, "pruebawebnueva.db");
            builder.Services.AddDbContext<AppDbContext>(options =>
                options.UseSqlite($"Data Source={dbPath}"));

            // Registrar servicios
            builder.Services.AddScoped<IClienteService, ClienteService>();
            builder.Services.AddScoped<IAuthService, AuthService>();
            builder.Services.AddScoped<IProductoService, ProductoService>();

            return builder.Build();
        }
    }
}