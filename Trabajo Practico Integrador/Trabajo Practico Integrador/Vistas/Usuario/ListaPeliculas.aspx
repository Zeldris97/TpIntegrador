<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaPeliculas.aspx.cs" Inherits="Vistas.ListaPeliculas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body style="height: 422px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Oscar Winners Finder"></asp:Label>
            <br />
            <br />
        </div>
        <asp:GridView ID="grdPeliculas" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:TemplateField HeaderText="Nombre"></asp:TemplateField>
                <asp:TemplateField HeaderText="Año de premiere"></asp:TemplateField>
                <asp:TemplateField HeaderText="Género"></asp:TemplateField>
                <asp:TemplateField HeaderText="Mejor película"></asp:TemplateField>
                <asp:TemplateField HeaderText="Mejor director"></asp:TemplateField>
                <asp:TemplateField HeaderText="Mejor actor"></asp:TemplateField>
                <asp:TemplateField HeaderText="Mejor actriz"></asp:TemplateField>
                <asp:TemplateField HeaderText="Mejor guion original"></asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ver seleccionada</asp:LinkButton>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server">Volver al menu</asp:LinkButton>
        </p>
    </form>
</body>
</html>
