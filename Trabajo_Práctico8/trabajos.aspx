<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trabajos.aspx.cs" Inherits="trabajos" %>

<%@ Register src="TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <b>CV. Experiencia Laboral:</b>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell Width="20%">Periodo de Ocupacion</asp:TableCell>
                <asp:TableCell>
                    Desde:<asp:Calendar ID="desde" runat="server"></asp:Calendar>
                </asp:TableCell>
                <asp:TableCell>
                    Hasta:<asp:Calendar ID="hasta" runat="server"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="20%">Lugar de Trabajo</asp:TableCell>
                <asp:TableCell Width="20%">
                    <uc1:TextBoxNoEmpty ID="lugarTrabajo" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="20%">Tarea Desempeñada</asp:TableCell>
                <asp:TableCell Width="20%">
                    <uc1:TextBoxNoEmpty ID="tareaDesempeniada" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="enviar" Text="Siguiente" OnClick="enviar3" runat="server"></asp:Button>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="volver" Text="Volver" OnClick="volver2" runat="server"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:ValidationSummary ID="sumario" runat="server"/>
    </form>
</body>
</html>
