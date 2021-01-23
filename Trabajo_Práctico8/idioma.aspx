<%@ Page Language="C#" AutoEventWireup="true" CodeFile="idioma.aspx.cs" Inherits="idioma" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <b>CV. Idiomas:</b>
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell Width="50%">Idioma</asp:TableCell>
                <asp:TableCell Width="50%">
                    <asp:CheckBox ID="ingles" Text="Inglés" runat="server"/>
                    <asp:CheckBox ID="portugues" Text="Portugués" runat="server"/>
                    <asp:CheckBox ID="aleman" Text="Alemán" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">Nivel de Conocimiento</asp:TableCell>
                <asp:TableCell Width="50%">
                    <asp:RadioButtonList ID="nivelConocimiento" runat="server">
                        <asp:ListItem Text="Basico" Value="Basico"></asp:ListItem>
                        <asp:ListItem Text="Intermedio" Value="Intermedio"></asp:ListItem>
                        <asp:ListItem Text="Avanzado" Value="Avanzado"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="enviar" Text="Terminar" OnClick="enviar4" runat="server"></asp:Button>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="volver" Text="Volver" OnClick="volver3" runat="server"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
