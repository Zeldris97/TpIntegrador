<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPeliculas.aspx.cs" Inherits="Vistas.AgregarPeliculas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 984px;
            margin-left: 54px;
            height: 276px;
        }
        .auto-style7 {
            width: 135px;
            height: 41px;
        }
        .auto-style9 {
            width: 248px;
            height: 41px;
        }
        .auto-style22 {
            width: 135px;
            height: 43px;
        }
        .auto-style24 {
            width: 248px;
            height: 43px;
        }
        .auto-style25 {
            width: 135px;
            height: 42px;
        }
        .auto-style27 {
            width: 248px;
            height: 42px;
        }
        .auto-style28 {
            width: 135px;
            height: 20px;
        }
        .auto-style30 {
            width: 248px;
            height: 20px;
        }
        .auto-style34 {
            width: 135px;
            height: 35px;
        }
        .auto-style36 {
            width: 248px;
            height: 35px;
        }
        .auto-style37 {
            width: 135px;
            height: 71px;
        }
        .auto-style39 {
            width: 248px;
            height: 71px;
        }
        .auto-style40 {
            width: 230px;
            height: 20px;
        }
        .auto-style41 {
            width: 230px;
            height: 71px;
        }
        .auto-style42 {
            width: 230px;
            height: 43px;
        }
        .auto-style43 {
            width: 230px;
            height: 42px;
        }
        .auto-style44 {
            width: 230px;
            height: 41px;
        }
        .auto-style45 {
            width: 230px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="btnAgregarLink" runat="server">Agregar pelicula</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnLinkListar" runat="server">Listar película</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar pelicula</asp:HyperLink>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblGrupo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Oscar Winners Finder"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Agregar Pelicula"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style5">
                <tr>
                    <td class="auto-style28" style="text-align: left; line-height: -12px;">Nombre pelicula:</td>
                    <td class="auto-style40">
                        <asp:TextBox ID="txbSucNom" runat="server" Width="278px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">
                        <asp:RequiredFieldValidator ID="rfvSuc" runat="server" ControlToValidate="txbSucNom" ErrorMessage="Ingrese un nombre de sucursal" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37" style="text-align: left; white-space: normal; line-height: normal; vertical-align: text-bottom;">Genero:</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="txbDesc" runat="server" Height="50px" Width="276px"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:RequiredFieldValidator ID="rfvDesc" runat="server" ControlToValidate="txbDesc" ErrorMessage="Ingrese una descripcion" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22" style="text-align: left; white-space: normal; line-height: normal; vertical-align: text-bottom;">Año de premio:</td>
                    <td class="auto-style42">
                        <asp:DropDownList ID="ddlProv" runat="server" AppendDataBoundItems="True" Height="18px" Width="283px">
                            <asp:ListItem Selected="True" Value="999">Seleccionar año</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style24">
                        <asp:RequiredFieldValidator ID="rfvPorv" runat="server" ControlToValidate="ddlProv" ErrorMessage="Seleccione una Provincia" ForeColor="Red" InitialValue="999" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" style="text-align: left; white-space: normal; line-height: normal; vertical-align: text-bottom;">Director:</td>
                    <td class="auto-style43">
                        <asp:TextBox ID="txbDir" runat="server" Width="274px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        <asp:RequiredFieldValidator ID="rfvDir" runat="server" ControlToValidate="txbDesc" ErrorMessage="Ingrese una direccion" ForeColor="Red" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: left; white-space: normal; line-height: normal; vertical-align: text-bottom;">Productor:</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="txtProductor" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style34" style="text-align: left; white-space: normal; line-height: normal; vertical-align: text-bottom;">Sinopsis:</td>
                    <td class="auto-style45">
                        <asp:TextBox ID="txtSinopsis" runat="server" Height="138px" Width="352px"></asp:TextBox>
                    </td>
                    <td class="auto-style36">
                        &nbsp;</td>
                </tr>


            </table>
        </div>
                        <asp:ValidationSummary ID="vserrores" runat="server" ForeColor="Red" Width="281px" ValidationGroup="1" />
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" ValidationGroup="1" />
    </form>
</body>
</html>
