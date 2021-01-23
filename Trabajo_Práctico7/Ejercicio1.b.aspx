<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejercicio1.b.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
			<asp:Table BorderStyle="Ridge" GridLines="Both" BorderWidth="2px" Width="60%" Height="5%" runat="server">
				<asp:TableRow>
					<asp:TableCell></asp:TableCell>
					<asp:TableCell><b>COMPONENTES</b></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Caja de Texto</asp:TableCell>
					<asp:TableCell><asp:TextBox TextMode="SingleLine" ID="cajaTexto" runat="server"/></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Combo</asp:TableCell>
					<asp:TableCell><asp:DropDownList ID="combo" runat="server">
							<asp:ListItem Value="Hombre" Text="Hombre"></asp:ListItem>
							<asp:ListItem Value="Mujer" Text="Mujer"></asp:ListItem>
						</asp:DropDownList></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Imagen</asp:TableCell>
					<asp:TableCell><asp:Image ImageUrl="montañas.jpg" DescriptionUrl="Montañas" ID="img" runat="server"/></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Check Box</asp:TableCell>
					<asp:TableCell><asp:CheckBoxList RepeatColumns="2" ID="chBox" runat="server">
							<asp:ListItem Text="SI" Value="SI"></asp:ListItem>
							<asp:ListItem Text="NO" Value="NO"></asp:ListItem>
						</asp:CheckBoxList></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Hipervinculo</asp:TableCell>
					<asp:TableCell><asp:HyperLink ID="hiper" NavigateUrl="https://www.google.com.ar/" runat="server">Google</asp:HyperLink></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Radio Button</asp:TableCell>
					<asp:TableCell><asp:RadioButtonList ID="radio" RepeatColumns="3" runat="server">
							<asp:ListItem Text="Alta" Value="Alta"></asp:ListItem>
							<asp:ListItem Text="Media" Value="Media"></asp:ListItem>
							<asp:ListItem Text="Baja" Value="Baja"></asp:ListItem>
						</asp:RadioButtonList></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Campo Oculto</asp:TableCell>
					<asp:TableCell><asp:HiddenField ID="oculto" Value="Valor oculto" runat="server"/></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>Botón</asp:TableCell>
					<asp:TableCell><asp:Button Text="Button" OnClick="EnviarDatos" runat="server"/></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow><asp:TableCell ColumnSpan="2"><b>Datos Ingresados</b></asp:TableCell></asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Caja de Texto:</b></asp:TableCell>
					<asp:TableCell id="rsCajaTexto" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Combo:</b></asp:TableCell>
					<asp:TableCell id="rsCombo" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Imagen:</b></asp:TableCell>
					<asp:TableCell id="rsImg" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Check Box:</b></asp:TableCell>
					<asp:TableCell id="rsChBox" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Hipervinculo:</b></asp:TableCell>
					<asp:TableCell id="rsHiper" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Radio Button:</b></asp:TableCell>
					<asp:TableCell id="rsRadio" runat="server"></asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell><b>Campo Oculto:</b></asp:TableCell>
					<asp:TableCell id="rsCampoOculto" runat="server"></asp:TableCell>
				</asp:TableRow>
			</asp:Table>
        </div>
    </form>
</body>
</html>
