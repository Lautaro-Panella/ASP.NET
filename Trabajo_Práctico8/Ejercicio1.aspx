<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejercicio1.aspx.cs" Inherits="Ejercicio1" %>

<%@ Register src="TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="uc1" %>
<%@ Register src="TextBoxCuit.ascx" tagname="TextBoxCuit" tagprefix="uc2" %>
<%@ Register src="TextBoxMayorEdad.ascx" tagname="TextBoxMayorEdad" tagprefix="uc3" %>
<%@ Register src="RadioButtonSex.ascx" tagname="RadioButtonSex" tagprefix="uc4" %>
<%@ Register src="ComboPaises.ascx" tagname="ComboPaises" tagprefix="uc5" %>
<%@ Register src="RangoHijosMenores.ascx" tagname="RangoHijosMenores" tagprefix="uc6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell Width="50%">Apellido</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="TextBoxNoEmpty1" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nombre</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="TextBoxNoEmpty2" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nro de CUIT</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc2:TextBoxCuit ID="TextBoxCuit1" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Edad del Solicitante</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc3:TextBoxMayorEdad ID="TextBoxMayorEdad1" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Sexo</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc4:RadioButtonSex ID="RadioButtonSex1" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nacionalidad</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc5:ComboPaises ID="ComboPaises1" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nro de Hijos Menores de Edad</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc6:RangoHijosMenores ID="RangoHijosMenores1" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="enviar" Text="Validar" runat="server"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:ValidationSummary ID="sumario" runat="server"/>
    </form>
</body>
</html>
