<%@ Page Language="C#" AutoEventWireup="true" CodeFile="estudios.aspx.cs" Inherits="estudios" %>

<%@ Register src="TextBoxNoEmpty.ascx" tagname="TextBoxNoEmpty" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <b>CV. Antecedentes Educacionales:</b>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell Width="50%">Nivel de Estudio</asp:TableCell>
                <asp:TableCell Width="50%">
                     <asp:DropDownList ID="nivelEstudio" runat="server">
                        <asp:ListItem Text="Primario" Value="Primario"></asp:ListItem>
                        <asp:ListItem Text="Secundario" Value="Secundario"></asp:ListItem>
                        <asp:ListItem Text="Universitario" Value="Universitario"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Titulo</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="titulo" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Establecimiento</asp:TableCell>
                <asp:TableCell Width="50%">
                    <uc1:TextBoxNoEmpty ID="establecimiento" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="enviar" Text="Siguiente" OnClick="enviar2" runat="server"></asp:Button>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="volver" Text="Volver" OnClick="volver1" runat="server"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:ValidationSummary ID="sumario" runat="server"/>
    </form>
</body>
</html>
