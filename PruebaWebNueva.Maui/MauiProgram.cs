using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using PruebaWebNueva.Application.Services;
using PruebaWebNueva.Infrastructure.Persistence;

namespace PruebaWebNueva.Maui;

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

#if DEBUG
        builder.Logging.AddDebug();
#endif

        // ✅ Habilitar Blazor dentro de MAUI
        builder.Services.AddMauiBlazorWebView();

        // ✅ Base de datos (puede ser SQLite local o la misma que usás en server)
        builder.Services.AddDbContext<AppDbContext>(options =>
            options.UseSqlite("Data Source=app.db"));

        // ✅ Servicios de aplicación
        builder.Services.AddScoped<IProductoService, ProductoService>();
        builder.Services.AddScoped<IClienteService, ClienteService>();
        builder.Services.AddScoped<IAuthService, AuthService>();
        builder.Services.AddScoped<IEmailService, EmailService>();
        builder.Services.AddScoped<IExcelService, ExcelService>();

        return builder.Build();
    }
}

