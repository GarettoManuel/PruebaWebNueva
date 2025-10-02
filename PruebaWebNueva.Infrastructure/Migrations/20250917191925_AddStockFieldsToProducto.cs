using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PruebaWebNueva.Infrastructure.Migrations
{
    public partial class AddStockFieldsToProducto : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CantidadStock",
                table: "Productos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Categoria",
                table: "Productos",
                type: "nvarchar(20)",
                maxLength: 20,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CodigoBarras",
                table: "Productos",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "FechaUltimaActualizacion",
                table: "Productos",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<int>(
                name: "StockMinimo",
                table: "Productos",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 1,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9216));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 2,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9220));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 3,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9221));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 4,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9223));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 5,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9224));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 6,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9225));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 7,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9226));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 8,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9228));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 9,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9229));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 10,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9230));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 11,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(9231));

            migrationBuilder.UpdateData(
                table: "Usuarios",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "FechaCreacion", "PasswordHash" },
                values: new object[] { new DateTime(2025, 9, 17, 16, 19, 24, 765, DateTimeKind.Local).AddTicks(8553), "$2a$11$5WvKx2HmeyVmMJHevGakdOfIX7bAkNoBN0bwyU2YVOlwDIwUUP9O2" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CantidadStock",
                table: "Productos");

            migrationBuilder.DropColumn(
                name: "Categoria",
                table: "Productos");

            migrationBuilder.DropColumn(
                name: "CodigoBarras",
                table: "Productos");

            migrationBuilder.DropColumn(
                name: "FechaUltimaActualizacion",
                table: "Productos");

            migrationBuilder.DropColumn(
                name: "StockMinimo",
                table: "Productos");

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 1,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5393));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 2,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5398));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 3,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5401));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 4,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5403));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 5,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5405));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 6,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5407));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 7,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5410));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 8,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5412));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 9,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5414));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 10,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5416));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 11,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(5418));

            migrationBuilder.UpdateData(
                table: "Usuarios",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "FechaCreacion", "PasswordHash" },
                values: new object[] { new DateTime(2025, 9, 16, 17, 32, 5, 362, DateTimeKind.Local).AddTicks(4517), "$2a$11$D7rTmPCrAlht/KVv9VuLcOyJnVKu70IrnWzohw70swi9ttTnFPJq." });
        }
    }
}
