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
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
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
                <AlternatingItemTemplate>
                    <span style="background-color: #FAFAD2;color: #284775;">Nombre:
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
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #FFCC66;color: #000080;">Nombre:
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #FFFBD6; color: #333333;">Nombre:
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
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div style="font-family: Verdana, Arial, Helvetica, sans-serif;" id="itemPlaceholderContainer" runat="server">
                        <span runat="server" id="itemPlaceholder" />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Imagen") %>' Width="150px" />
                        <br />
                        <br />
                        </span>
                    </div>
                    <div style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">Nombre:
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
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
        </div>
        <asp:LinkButton ID="btnLinkMenu" runat="server">Volver al menu</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OscarWinnersConnectionString %>" SelectCommand="sp_BuscarPeliculaPorNombre" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter Name="NOMBREPELICULA" QueryStringField="Nom" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
