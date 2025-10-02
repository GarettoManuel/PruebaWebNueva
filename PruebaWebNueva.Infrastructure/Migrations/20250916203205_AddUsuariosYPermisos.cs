using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PruebaWebNueva.Infrastructure.Migrations
{
    public partial class AddUsuariosYPermisos : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Permisos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nombre = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Descripcion = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    Modulo = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Accion = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Permisos", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombreUsuario = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PasswordHash = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    NombreCompleto = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Email = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Activo = table.Column<bool>(type: "bit", nullable: false),
                    FechaCreacion = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UltimoLogin = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UsuarioPermisos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UsuarioId = table.Column<int>(type: "int", nullable: false),
                    PermisoId = table.Column<int>(type: "int", nullable: false),
                    FechaAsignacion = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UsuarioPermisos", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UsuarioPermisos_Permisos_PermisoId",
                        column: x => x.PermisoId,
                        principalTable: "Permisos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UsuarioPermisos_Usuarios_UsuarioId",
                        column: x => x.UsuarioId,
                        principalTable: "Usuarios",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Permisos",
                columns: new[] { "Id", "Accion", "Descripcion", "Modulo", "Nombre" },
                values: new object[,]
                {
                    { 1, "Leer", "Ver listado de productos", "Productos", "ProductosLeer" },
                    { 2, "Crear", "Crear nuevos productos", "Productos", "ProductosCrear" },
                    { 3, "Editar", "Editar productos existentes", "Productos", "ProductosEditar" },
                    { 4, "Eliminar", "Eliminar productos", "Productos", "ProductosEliminar" },
                    { 5, "Leer", "Ver listado de clientes", "Clientes", "ClientesLeer" },
                    { 6, "Crear", "Crear nuevos clientes", "Clientes", "ClientesCrear" },
                    { 7, "Editar", "Editar clientes existentes", "Clientes", "ClientesEditar" },
                    { 8, "Eliminar", "Eliminar clientes", "Clientes", "ClientesEliminar" },
                    { 9, "Leer", "Ver inventario", "Stock", "StockLeer" },
                    { 10, "Editar", "Modificar inventario", "Stock", "StockEditar" },
                    { 11, "Gestionar", "Gestionar usuarios del sistema", "Usuarios", "UsuariosGestionar" }
                });

            migrationBuilder.InsertData(
                table: "Usuarios",
                columns: new[] { "Id", "Activo", "Email", "FechaCreacion", "NombreCompleto", "NombreUsuario", "PasswordHash", "UltimoLogin" },
                values: new object[] { 1, true, "admin@sistema.com", new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(4517), "Administrador del Sistema", "administrador", "$2a$11$D7rTmPCrAlht/KVv9VuLcOyJnVKu70IrnWzohw70swi9ttTnFPJq.", null });

            migrationBuilder.InsertData(
                table: "UsuarioPermisos",
                columns: new[] { "Id", "FechaAsignacion", "PermisoId", "UsuarioId" },
                values: new object[,]
                {
                    { 1, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5393), 1, 1 },
                    { 2, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5398), 2, 1 },
                    { 3, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5401), 3, 1 },
                    { 4, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5403), 4, 1 },
                    { 5, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5405), 5, 1 },
                    { 6, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5407), 6, 1 },
                    { 7, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5410), 7, 1 },
                    { 8, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5412), 8, 1 },
                    { 9, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5414), 9, 1 },
                    { 10, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5416), 10, 1 },
                    { 11, new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5418), 11, 1 }
                });

            migrationBuilder.CreateIndex(
                name: "IX_UsuarioPermisos_PermisoId",
                table: "UsuarioPermisos",
                column: "PermisoId");

            migrationBuilder.CreateIndex(
                name: "IX_UsuarioPermisos_UsuarioId",
                table: "UsuarioPermisos",
                column: "UsuarioId");

            migrationBuilder.CreateIndex(
                name: "IX_Usuarios_Email",
                table: "Usuarios",
                column: "Email",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Usuarios_NombreUsuario",
                table: "Usuarios",
                column: "NombreUsuario",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UsuarioPermisos");

            migrationBuilder.DropTable(
                name: "Permisos");

            migrationBuilder.DropTable(
                name: "Usuarios");
        }
    }
}
