using Microsoft.EntityFrameworkCore;
using PruebaWebNueva.Domain.Entities;

namespace PruebaWebNueva.Infrastructure.Persistence
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        // DbSets existentes
        public DbSet<Producto> Productos { get; set; }

        // Nuevos DbSets para autenticación
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Permiso> Permisos { get; set; }
        public DbSet<UsuarioPermiso> UsuarioPermisos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Configuración de Cliente
            modelBuilder.Entity<Cliente>()
                .HasIndex(c => c.CuitCuil)
                .IsUnique();

            // Opcional: podrías definir la longitud máxima si querés reforzar
            modelBuilder.Entity<Cliente>()
                .Property(c => c.CuitCuil)
                .HasMaxLength(13); // ej: "20-12345678-3"

            // Configuración para Producto
            modelBuilder.Entity<Producto>()
                .Property(p => p.Precio)
                .HasPrecision(18, 2);

            // Configuraciones para Usuario
            modelBuilder.Entity<Usuario>()
                .HasIndex(u => u.NombreUsuario)
                .IsUnique();

            modelBuilder.Entity<Usuario>()
                .HasIndex(u => u.Email)
                .IsUnique();

            // Configuración para UsuarioPermiso (relación muchos a muchos)
            modelBuilder.Entity<UsuarioPermiso>()
                .HasOne(up => up.Usuario)
                .WithMany(u => u.UsuarioPermisos)
                .HasForeignKey(up => up.UsuarioId);

            modelBuilder.Entity<UsuarioPermiso>()
                .HasOne(up => up.Permiso)
                .WithMany(p => p.UsuarioPermisos)
                .HasForeignKey(up => up.PermisoId);

            // Datos iniciales (Seed Data)
            SeedData(modelBuilder);
        }

        private void SeedData(ModelBuilder modelBuilder)
        {
            // Permisos iniciales
            var permisos = new List<Permiso>
            {
                // Productos
                new Permiso { Id = 1, Nombre = "ProductosLeer", Descripcion = "Ver listado de productos", Modulo = "Productos", Accion = "Leer" },
                new Permiso { Id = 2, Nombre = "ProductosCrear", Descripcion = "Crear nuevos productos", Modulo = "Productos", Accion = "Crear" },
                new Permiso { Id = 3, Nombre = "ProductosEditar", Descripcion = "Editar productos existentes", Modulo = "Productos", Accion = "Editar" },
                new Permiso { Id = 4, Nombre = "ProductosEliminar", Descripcion = "Eliminar productos", Modulo = "Productos", Accion = "Eliminar" },
                
                // Clientes (para futuro)
                new Permiso { Id = 5, Nombre = "ClientesLeer", Descripcion = "Ver listado de clientes", Modulo = "Clientes", Accion = "Leer" },
                new Permiso { Id = 6, Nombre = "ClientesCrear", Descripcion = "Crear nuevos clientes", Modulo = "Clientes", Accion = "Crear" },
                new Permiso { Id = 7, Nombre = "ClientesEditar", Descripcion = "Editar clientes existentes", Modulo = "Clientes", Accion = "Editar" },
                new Permiso { Id = 8, Nombre = "ClientesEliminar", Descripcion = "Eliminar clientes", Modulo = "Clientes", Accion = "Eliminar" },
                
                // Stock (para futuro)
                new Permiso { Id = 9, Nombre = "StockLeer", Descripcion = "Ver inventario", Modulo = "Stock", Accion = "Leer" },
                new Permiso { Id = 10, Nombre = "StockEditar", Descripcion = "Modificar inventario", Modulo = "Stock", Accion = "Editar" },
                
                // Usuarios (solo admin)
                new Permiso { Id = 11, Nombre = "UsuariosGestionar", Descripcion = "Gestionar usuarios del sistema", Modulo = "Usuarios", Accion = "Gestionar" }
            };

            modelBuilder.Entity<Permiso>().HasData(permisos);

            // Usuario administrador por defecto
            var adminUser = new Usuario
            {
                Id = 1,
                NombreUsuario = "administrador",
                PasswordHash = BCrypt.Net.BCrypt.HashPassword("admin123"), // Vamos a necesitar instalar BCrypt
                NombreCompleto = "Administrador del Sistema",
                Email = "admin@sistema.com",
                Activo = true,
                FechaCreacion = DateTime.Now
            };

            modelBuilder.Entity<Usuario>().HasData(adminUser);

            // Asignar todos los permisos al admin
            var adminPermisos = permisos.Select(p => new UsuarioPermiso
            {
                Id = p.Id,
                UsuarioId = 1,
                PermisoId = p.Id,
                FechaAsignacion = DateTime.Now
            }).ToList();

            modelBuilder.Entity<UsuarioPermiso>().HasData(adminPermisos);
        }
    }
}
