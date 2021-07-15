﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPeliculaPorCategoria.aspx.cs" Inherits="Vistas.Usuario.BuscarPeliculaPorCategoria" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 403px; width: 1108px;">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Oscar Winners Finder"></asp:Label>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">
              <%-- <%-- <AlternatingItemTemplate>
                    <li style="background-color: #FAFAD2;color: #284775;">Nombre_Pelicula:
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
                        Productor:
                        <asp:Label ID="ProductorLabel" runat="server" Text='<%# Eval("Productor") %>' />
                        <br />
                        Sinopsis:
                        <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>--%>
               
                <InsertItemTemplate>
                    <li style="">Nombre:
                        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                        <br />IdGenero:
                        <asp:TextBox ID="IdGeneroTextBox" runat="server" Text='<%# Bind("IdGenero") %>' />
                        <br />IdCategorias:
                        <asp:TextBox ID="IdCategoriasTextBox" runat="server" Text='<%# Bind("IdCategorias") %>' />
                        <br />Año:
                        <asp:TextBox ID="AñoTextBox" runat="server" Text='<%# Bind("Año") %>' />
                        <br />Sinopsis:
                        <asp:TextBox ID="SinopsisTextBox" runat="server" Text='<%# Bind("Sinopsis") %>' />
                        <br />Imagen:
                        <asp:TextBox ID="ImagenTextBox" runat="server" Text='<%# Bind("Imagen") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
<br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #DCDCDC; color: #000000;">&nbsp;<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                        <br />
                        <asp:Label ID="IdGeneroLabel" runat="server" Text='<%# Eval("IdGenero") %>' />
                        <br />
                        <asp:Label ID="IdCategoriasLabel" runat="server" Text='<%# Eval("IdCategorias") %>' />
                    </li>
                    <li style="background-color: #DCDCDC;color: #000000;">
                        <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>'></asp:Label>
                        <br />
                        <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>'></asp:Label>
                    </li>
                    <li style="background-color: #DCDCDC;color: #000000;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Imagen") %>' Width="16px" />
                        <br />
                        &nbsp;<br /></li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">ID:
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
                        Sinopsis:
                        <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>' />
                        <br />
                        Imagen:
                        <asp:Label ID="ImagenLabel" runat="server" Text='<%# Eval("Imagen") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\SQLEXPRESS;Initial Catalog=OscarWinners;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="sp_BuscarPeliculaPorCategoria" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CATEGORIA" QueryStringField="Cat" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <asp:LinkButton ID="btnLinkMenu" runat="server">Volver al menu</asp:LinkButton>
    </form>
</body>
</html>
