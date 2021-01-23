<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <b>Longitud</b><br />
        <asp:Label Text="Quiero convertir:" runat="server"></asp:Label><br />
        <asp:TextBox ID="numero" placeholder="0000.0000" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="numero" ErrorMessage="Campo obligatorio!" Text="*" runat="server"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev1" ControlToValidate="numero" ErrorMessage="Solo se permiten números, si hubiera parte decimal separela con un punto (.)!" Text="*" ValidationExpression="\d+([.]\d)*" runat="server"></asp:RegularExpressionValidator><br />
        <asp:DropDownList ID="unidad1" runat="server">
            <asp:ListItem Text="Kilómetro (Km)" Value="km"></asp:ListItem>
            <asp:ListItem Text="Metro (m)" Value="m"></asp:ListItem>
            <asp:ListItem Text="Decímetro (dm)" Value="dm"></asp:ListItem>
            <asp:ListItem Text="Centímetro (cm)" Value="cm"></asp:ListItem>
            <asp:ListItem Text="Milímetro (mm)" Value="mm"></asp:ListItem>
            <asp:ListItem Text="Micrómetro (um)" Value="um"></asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label Text="A:" runat="server"></asp:Label><br />
        <asp:DropDownList ID="unidad2" runat="server">
            <asp:ListItem Text="Kilómetro (Km)" Value="km"></asp:ListItem>
            <asp:ListItem Text="Metro (m)" Value="m"></asp:ListItem>
            <asp:ListItem Text="Decímetro (dm)" Value="dm"></asp:ListItem>
            <asp:ListItem Text="Centímetro (cm)" Value="cm"></asp:ListItem>
            <asp:ListItem Text="Milímetro (mm)" Value="mm"></asp:ListItem>
            <asp:ListItem Text="Micrómetro (um)" Value="um"></asp:ListItem>
        </asp:DropDownList><br />
        <asp:Button Text="Convertir" OnClick="convertir" runat="server"/>
        <asp:TextBox ID="resultado" runat="server"></asp:TextBox><br />
        <asp:Button Text="Conversión detallada" OnClick="mostrarDetalle" runat="server"/>
        <asp:Label ID="detalle" runat="server"></asp:Label><br /><br />
        <asp:ValidationSummary HeaderText="Corrija los siguientes errores:" runat="server"/>
    </form>
</body>
</html>
