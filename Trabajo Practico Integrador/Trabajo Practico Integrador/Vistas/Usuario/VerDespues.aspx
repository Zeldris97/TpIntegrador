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
            <asp:DataList ID="DataList1" runat="server" BackColor="Black" BorderColor="Olive" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Names="Calibri" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" GridLines="Vertical" DataKeyField="ID">
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Nombre:
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br />
                    IdGenero:
                    <asp:Label ID="IdGeneroLabel" runat="server" Text='<%# Eval("IdGenero") %>' />
                    <br />
                    IdCategorias:
                    <asp:Label ID="IdCategoriasLabel" runat="server" Text='<%# Eval("IdCategorias") %>' />
                    <br />
                    Año:
                    <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>' />
                    <br />
                    Sinopsis: <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>' />
                    <br />
                    Imagen:
                    <asp:Label ID="ImagenLabel" runat="server" Text='<%# Eval("Imagen") %>' />
<br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OscarWinnersConnectionString2 %>" SelectCommand="SELECT * FROM [Peliculas]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
