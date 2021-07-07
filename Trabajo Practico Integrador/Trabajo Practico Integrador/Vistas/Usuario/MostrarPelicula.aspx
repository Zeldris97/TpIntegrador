<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPelicula.aspx.cs" Inherits="Vistas.MostrarPelicula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 403px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Oscar Winners Finder"></asp:Label>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
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
                <EditItemTemplate>
                    <li style="background-color: #FFCC66;color: #000080;">Nombre_Pelicula:
                        <asp:TextBox ID="Nombre_PeliculaTextBox" runat="server" Text='<%# Bind("Nombre_Pelicula") %>' />
                        <br />
                        Genero:
                        <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
                        <br />
                        Año_Premio:
                        <asp:TextBox ID="Año_PremioTextBox" runat="server" Text='<%# Bind("Año_Premio") %>' />
                        <br />
                        Director:
                        <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
                        <br />
                        Productor:
                        <asp:TextBox ID="ProductorTextBox" runat="server" Text='<%# Bind("Productor") %>' />
                        <br />
                        Sinopsis:
                        <asp:TextBox ID="SinopsisTextBox" runat="server" Text='<%# Bind("Sinopsis") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No se han devuelto datos.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">Nombre_Pelicula:
                        <asp:TextBox ID="Nombre_PeliculaTextBox" runat="server" Text='<%# Bind("Nombre_Pelicula") %>' />
                        <br />Genero:
                        <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
                        <br />Año_Premio:
                        <asp:TextBox ID="Año_PremioTextBox" runat="server" Text='<%# Bind("Año_Premio") %>' />
                        <br />Director:
                        <asp:TextBox ID="DirectorTextBox" runat="server" Text='<%# Bind("Director") %>' />
                        <br />Productor:
                        <asp:TextBox ID="ProductorTextBox" runat="server" Text='<%# Bind("Productor") %>' />
                        <br />Sinopsis:
                        <asp:TextBox ID="SinopsisTextBox" runat="server" Text='<%# Bind("Sinopsis") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
<br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="background-color: #FFFBD6;color: #333333;">Nombre_Pelicula:
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
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">Nombre_Pelicula:
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
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:parcial1ConnectionString %>" SelectCommand="SELECT [Nombre_Pelicula], [Genero], [Año_Premio], [Director], [Productor], [Sinopsis] FROM [PELICULAS]"></asp:SqlDataSource>
        <asp:LinkButton ID="btnLinkMenu" runat="server">Volver al menu</asp:LinkButton>
    </form>
</body>
</html>
