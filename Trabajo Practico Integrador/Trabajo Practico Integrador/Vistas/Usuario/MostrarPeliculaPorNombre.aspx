<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPeliculaPorNombre.aspx.cs" Inherits="Vistas.MostrarPelicula" %>

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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" DataKeyNames="ID">
              
<%--                <AlternatingItemTemplate>
                    <span style="background-color: #FFF8DC;">Nombre:
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br />
                    Genero:
                    <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
                    <br />
                    Categoria:
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
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
                    <br />
                    </span>
                </AlternatingItemTemplate>--%>
              
               
              
                <EditItemTemplate>
                    <span style="background-color: #FFCC66; color: #000080;">ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Genero:
                    <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
                    <br />
                    Categoria:
                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    <br />
                    Año:
                    <asp:TextBox ID="AñoTextBox" runat="server" Text='<%# Bind("Año") %>' />
                    <br />
                    Sinopsis:
                    <asp:TextBox ID="SinopsisTextBox" runat="server" Text='<%# Bind("Sinopsis") %>' />
                    <br />
                    Imagen:
                    <asp:TextBox ID="ImagenTextBox" runat="server" Text='<%# Bind("Imagen") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No se han devuelto datos.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Genero:
                    <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
                    <br />
                    Categoria:
                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                    <br />
                    Año:
                    <asp:TextBox ID="AñoTextBox" runat="server" Text='<%# Bind("Año") %>' />
                    <br />
                    Sinopsis:
                    <asp:TextBox ID="SinopsisTextBox" runat="server" Text='<%# Bind("Sinopsis") %>' />
                    <br />
                    Imagen:
                    <asp:TextBox ID="ImagenTextBox" runat="server" Text='<%# Bind("Imagen") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #FFFBD6; color: #333333;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Nombre:
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br />
                    Genero:
                    <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
                    <br />
                    Categoria:
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                    <br />
                    Año:
                    <asp:Label ID="AñoLabel" runat="server" Text='<%# Eval("Año") %>' />
                    <br />
                    Sinopsis:
                    <asp:Label ID="SinopsisLabel" runat="server" Text='<%# Eval("Sinopsis") %>' />
                    <br />
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Imagen") %>' Width="150px" />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                        <br />
                        <br />
                        <span style="background-color: #FFFBD6;color: #333333;">
                        <asp:Button ID="btnAgregar" runat="server" CommandArgument='<%# Eval("ID") %>' OnCommand="btnAgregar_Command" Text="Agregar a lista" />
                        </span></span>
                    </div>
                    <div style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #FFCC66; font-weight: bold;color: #000080;">ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Nombre:
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br />
                    Genero:
                    <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
                    <br />
                    Categoria:
                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
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
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
        <asp:LinkButton ID="btnLinkMenu" runat="server" OnClick="btnLinkMenu_Click">Volver al menu</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OscarWinnersConnectionString %>" SelectCommand="select P.ID, P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis, P.Imagen from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero WHERE P.Nombre LIKE '%' + @Nombre + '%'">
            <SelectParameters>
                <asp:QueryStringParameter Name="Nombre" QueryStringField="Nom" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
