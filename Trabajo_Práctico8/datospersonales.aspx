<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datospersonales.aspx.cs" Inherits="datospersonales" %>

<%@ Register src="TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="uc1" %>
<%@ Register src="ComboPaises.ascx" tagname="ComboPaises" tagprefix="uc2" %>
<%@ Register src="RadioButtonSex.ascx" tagname="RadioButtonSex" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <b>CV. Datos Personales:</b>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell Width="50%">Nombre</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="nombre" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Apellido</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="apellido" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">DNI</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="dni" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Domicilio</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="domicilio" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nacionalidad</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc2:ComboPaises ID="nacionalidad" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Sexo</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc3:RadioButtonSex ID="sexo" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Fecha Nacimiento</asp:TableCell>
                <asp:TableCell Width="50%">
                    <asp:Calendar ID="fechaNac" runat="server"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="enviar" Text="Siguiente" OnClick="enviar1" runat="server"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:ValidationSummary ID="sumario" runat="server"/>
    </form>
</body>
</html>
