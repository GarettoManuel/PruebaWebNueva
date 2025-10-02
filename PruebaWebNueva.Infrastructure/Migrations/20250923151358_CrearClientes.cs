using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PruebaWebNueva.Infrastructure.Migrations
{
    public partial class CrearClientes : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 1,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6324));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 2,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6328));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 3,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6329));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 4,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6331));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 5,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6332));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 6,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6334));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 7,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6336));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 8,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6337));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 9,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6338));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 10,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6339));

            migrationBuilder.UpdateData(
                table: "UsuarioPermisos",
                keyColumn: "Id",
                keyValue: 11,
                column: "FechaAsignacion",
                value: new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(6340));

            migrationBuilder.UpdateData(
                table: "Usuarios",
                keyColumn: "Id",
                keyValue: 1,
                columns: new[] { "FechaCreacion", "PasswordHash" },
                values: new object[] { new DateTime(2025, 9, 23, 12, 13, 58, 387, DateTimeKind.Local).AddTicks(5723), "$2a$11$yvgFPaj3uO7TroG1zBse6Ome3IBBtAHlCxd1Nyz59jiPVQzEVjfqS" });

            migrationBuilder.CreateIndex(
                name: "IX_Clientes_CuitCuil",
                table: "Clientes",
                column: "CuitCuil",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Clientes");

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
    }
}
