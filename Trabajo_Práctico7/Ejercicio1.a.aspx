<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejercicio1.a.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<table border="1" style="width: 60%; height: 5%">
				<tr>
					<td></td>
					<td><b>COMPONENTES</b></td>
				</tr>
				<tr>
					<td>Caja de Texto</td>
					<td><input type="text" id="cajaTexto" runat="server"/></td>
				</tr>
				<tr>
					<td>Combo</td>
					<td><select id="combo" runat="server">
							<option value="Hombre">Hombre</option>
							<option value="Mujer">Mujer</option>
						</select></td>
				</tr>
				<tr>
					<td>Imagen</td>
					<td><img src="montañas.jpg" alt="Montañas" id="img" runat="server"/></td>
				</tr>
				<tr>
					<td>Check Box</td>
					<td>
						SI<input type="checkbox" id="chBox1" name="chBox" value="SI" runat="server"/>
						NO<input type="checkbox" id="chBox2" name="chBox" value="NO" runat="server"/></td>
				</tr>
				<tr>
					<td>Hipervinculo</td>
					<td><a href="https://www.google.com.ar/" id="hiper" runat="server">Google</a></td>
				</tr>
				<tr>
					<td>Radio Button</td>
					<td>
						<input type="radio" id="radio1" name="radioB" value="Alta" onserverchange="EnviarDatos" runat="server"/>Alta
						<input type="radio" id="radio2" name="radioB" value="Media" onserverchange="EnviarDatos" runat="server"/>Media
						<input type="radio" id="radio3" name="radioB" value="Baja" onserverchange="EnviarDatos" runat="server"/>Baja</td>
				</tr>
				<tr>
					<td>Campo Oculto</td>
					<td><input type="hidden" id="oculto" value="Valor oculto" runat="server"/></td>
				</tr>
				<tr>
					<td>Botón</td>
					<td><input type="button" value="Button" onserverclick="EnviarDatos" runat="server"/></td>
				</tr>
				<tr><td colspan="2"><b>Datos Ingresados</b></td></tr>
				<tr>
					<td><b>Caja de Texto:</b></td>
					<td id="rsCajaTexto" runat="server"></td>
				</tr>
				<tr>
					<td><b>Combo:</b></td>
					<td id="rsCombo" runat="server"></td>
				</tr>
				<tr>
					<td><b>Imagen:</b></td>
					<td id="rsImg" runat="server"></td>
				</tr>
				<tr>
					<td><b>Check Box:</b></td>
					<td id="rsChBox" runat="server"></td>
				</tr>
				<tr>
					<td><b>Hipervinculo:</b></td>
					<td id="rsHiper" runat="server"></td>
				</tr>
				<tr>
					<td><b>Radio Button:</b></td>
					<td id="rsRadio" runat="server"></td>
				</tr>
				<tr>
					<td><b>Campo Oculto:</b></td>
					<td id="rsCampoOculto" runat="server"></td>
				</tr>
			</table>
        </div>
    </form>
</body>
</html>
