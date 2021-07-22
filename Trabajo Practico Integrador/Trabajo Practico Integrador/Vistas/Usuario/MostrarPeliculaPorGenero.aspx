<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPeliculaPorGenero.aspx.cs" Inherits="Vistas.Usuario.MostrarPeliculaPorGenero" %>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID">

                <AlternatingItemTemplate>
                    <span style="">ID:
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
                </AlternatingItemTemplate>

                <EditItemTemplate>
                    <span style="">ID:
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
                    <span style="">
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
                         <span>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="275px" ImageUrl='<%# Eval("Imagen") %>' Width="185px" />
                    </span>
                    <asp:Button ID="btnAgregar" runat="server" CommandArgument='<%# Eval("ID") %>' OnCommand="btnAgregar_Command" CommandName="eventoAgregar" Text="Agregar a lista" />
                    </span></span>
                    <br />
                    <span></span>
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                       
                       
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">ID:
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OscarWinnersConnectionString %>" SelectCommand="select P.ID, P.Nombre, G.Nombre as 'Genero',C.Nombre as 'Categoria', P.Año, P.Sinopsis,P.Imagen from Peliculas P
inner join Categorias C on C.ID=P.IdCategorias
inner join Generos G on G.ID= P.IdGenero
where G.Nombre = @GENERO">
                <SelectParameters>
                    <asp:QueryStringParameter Name="GENERO" QueryStringField="Gen" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/VerDespues.aspx">Ver Lista</asp:HyperLink>
            <br />
        </div>
        <asp:LinkButton ID="btnLinkMenu" runat="server" OnClick="btnLinkMenu_Click">Volver al menu</asp:LinkButton>
    </form>
</body>
</html>
