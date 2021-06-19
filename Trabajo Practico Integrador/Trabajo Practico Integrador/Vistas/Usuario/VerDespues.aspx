<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerDespues.aspx.cs" Inherits="Vistas.Usuario.VerDespues" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 399px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Oscar Winners Finder"></asp:Label>
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="Black" BorderColor="Olive" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Names="Calibri" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" GridLines="Vertical">
                <ItemTemplate>
                    Nombre_Pelicula:
                    <asp:Label ID="Nombre_PeliculaLabel" runat="server" Text='<%# Eval("Nombre_Pelicula") %>' />
                    <br />
                    Genero:
                    <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
                    <br />
                    Año_Premio:
                    <asp:Label ID="Año_PremioLabel" runat="server" Text='<%# Eval("Año_Premio") %>' />
                    <br />
                    Director:
                    <asp:Label ID="DirectorLabel" runat="server" Text='<%# Eval("Director") %>' />
                    <br />
                    Sinopsis:
                    <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>' />
                    <br />
                    &nbsp;<asp:Label ID="URL_Imagen_PeliculaLabel" runat="server" Text='<%# Eval("URL_Imagen_Pelicula") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" SelectCommand="SELECT [Nombre_Pelicula], [Genero], [Año_Premio], [Director], [Sinopsis], [URL_Imagen_Pelicula] FROM [PELICULAS]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
