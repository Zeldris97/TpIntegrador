<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarPelicula.aspx.cs" Inherits="Vistas.EliminarPelicula" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> </title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 139px;
        }
        .auto-style4 {
            width: 353px;
        }
    
        .auto-style19 {
            width: 226px;
            height: 26px;
        }
        .auto-style20 {
            width: 272px;
            height: 26px;
        }
        .auto-style21 {
            height: 61px;
        }
        .auto-style22 {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19">
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="btnLinkAgregar" runat="server">Agregar peliculas</asp:LinkButton>
                    </td>
                    <td class="auto-style20">
                        <asp:LinkButton ID="btnLinkListar" runat="server">Listar peliculas</asp:LinkButton>
                    </td>
                    <td class="auto-style22">
                        <asp:LinkButton ID="LinkButton1" runat="server">Eliminar peliculas</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21">
                        <br />
                        <asp:Label ID="lblEliminarSucursales" runat="server" Font-Bold="True" Font-Size="Larger" Text="Eliminar películas"></asp:Label>
                    </td>
                    <td class="auto-style21"></td>
                    <td class="auto-style21"></td>
                </tr>
            </table>
            <div>
                <br />
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Ingrese ID de pelicula:</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtIdSucursal" runat="server" CssClass="auto-style2" ValidationGroup="1" Width="334px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" ValidationGroup="1" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Label ID="lblAlerta" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:CompareValidator ID="cvNumeros" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="CompareValidator" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValidationGroup="1" ValueToCompare="0">Solo debe ingresar numeros</asp:CompareValidator>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
