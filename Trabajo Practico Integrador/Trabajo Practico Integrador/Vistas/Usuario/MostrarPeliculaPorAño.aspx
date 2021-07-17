<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPeliculaPorAño.aspx.cs" Inherits="Vistas.Usuario.MostrarPeliculaPorAño" %>

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
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ID" GroupItemCount="3">
              
                <EditItemTemplate>
                    <td runat="server" style="">ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        Nombre:
                        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                        <br />
                        IdGenero:
                        <asp:TextBox ID="IdGeneroTextBox" runat="server" Text='<%# Bind("IdGenero") %>' />
                        <br />
                        IdCategorias:
                        <asp:TextBox ID="IdCategoriasTextBox" runat="server" Text='<%# Bind("IdCategorias") %>' />
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
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
               
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
               
                <InsertItemTemplate>
                    <td runat="server" style="">Nombre:
                        <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                        <br />
                        IdGenero:
                        <asp:TextBox ID="IdGeneroTextBox" runat="server" Text='<%# Bind("IdGenero") %>' />
                        <br />
                        IdCategorias:
                        <asp:TextBox ID="IdCategoriasTextBox" runat="server" Text='<%# Bind("IdCategorias") %>' />
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
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">ID:
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
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" ImageUrl='<%# Eval("Imagen") %>' Width="200px" />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">ID:
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
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost\\sqlExpress;Initial Catalog=OscarWinners;Integrated Security=True" SelectCommand="SELECT [ID], [Nombre], [IdGenero], [IdCategorias], [Año], [Sinopsis], [Imagen] FROM [Peliculas] WHERE ([Año] = @Año)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Año" QueryStringField="Anio" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="btnLinkMenu" runat="server" OnClick="btnLinkMenu_Click">Volver al menu</asp:LinkButton>
    </form>
</body>
</html>
