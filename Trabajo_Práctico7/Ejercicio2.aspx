<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ejercicio2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel BorderStyle="Ridge" BorderColor="LightGray" BackColor="LightGray" runat="server" Height="970px" Width="360px" style="margin-right: 7px"><br/>
                
            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Nombre</b><br/>

            <div style="text-align:center">
                &emsp;<asp:TextBox placeholder="Nombre" BorderStyle="Ridge" BorderColor="LightGray" ID="nombre" runat="server" Width="125px"/>
                <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="nombre" Text="*" ErrorMessage="Debe ingresar su nombre." runat="server"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev1" ControlToValidate="nombre" Text="*" ErrorMessage="El campo nombre solo acepta letras." ValidationExpression="^[a-zA-Z]*$" runat="server"></asp:RegularExpressionValidator>
                <asp:TextBox placeholder="Apellidos" BorderStyle="Ridge" BorderColor="LightGray" ID="apellidos" runat="server" Width="125px"/>
                <asp:RequiredFieldValidator ID="rfv2" ControlToValidate="apellidos" Text="*" ErrorMessage="Debe ingresar su apellido." runat="server"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev2" ControlToValidate="apellidos" Text="*" ErrorMessage="El campo apellido solo acepta letras." ValidationExpression="^[a-zA-Z]*$" runat="server"></asp:RegularExpressionValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Nombre de usuario</b><br/>

            <div style="text-align:center">
                &emsp;<asp:TextBox placeholder="@gmail.com" BorderStyle="Ridge" BorderColor="LightGray" ID="usuario" runat="server" Width="296px"/>
                <asp:RequiredFieldValidator ID="rfv3" ControlToValidate="usuario" Text="*" ErrorMessage="Debe ingresar su e-mail." runat="server"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev3" ControlToValidate="usuario" Text="*" ErrorMessage="El formato del e-mail no es correcto." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server"></asp:RegularExpressionValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Contraseña</b><br/>

            <div style="text-align:center">
                &emsp;<asp:TextBox TextMode="Password" BorderStyle="Ridge" BorderColor="LightGray" ID="pass" runat="server" Width="296px"/>
                <asp:RequiredFieldValidator ID="rfv4" ControlToValidate="pass" Text="*" ErrorMessage="Debe ingresar su contraseña." runat="server"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rev4" ControlToValidate="pass" Text="*" ErrorMessage="La contraseña debe contener alguno de estos símbolos (!@#$%^&*+;:)." ValidationExpression=".*[!@#$%^&+;:]+.*" runat="server"></asp:RegularExpressionValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Confirma tu contraseña</b><br/>

            <div style="text-align:center">
                &emsp;<asp:TextBox TextMode="Password" BorderStyle="Ridge" BorderColor="LightGray" ID="passConf" runat="server" Width="296px"/>
                <asp:RequiredFieldValidator ID="rfv5" ControlToValidate="passConf" Text="*" ErrorMessage="Debe repetir su contraseña." runat="server"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv1" ControlToValidate="passConf" Text="*" ErrorMessage="Las contraseñas deben ser iguales." ControlToCompare="pass" Operator="Equal" runat="server"></asp:CompareValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Fecha de nacimiento</b><br/>

             <div style="text-align:center">
                &emsp;<asp:TextBox placeholder="Día" BorderStyle="Ridge" BorderColor="LightGray" ID="dia" runat="server" Width="51px"/>
                <asp:RequiredFieldValidator ID="rfv6" ControlToValidate="dia" Text="*" ErrorMessage="Debe ingresar su día de nacimiento." runat="server"></asp:RequiredFieldValidator>
                <asp:DropDownList BorderStyle="Ridge" BorderColor="LightGray" ID="mes" runat="server" Width="131px">
                    <asp:ListItem Text="Mes" Value=""></asp:ListItem>
                    <asp:ListItem Text="Enero" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Febrero" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Marzo" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Abril" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Mayo" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Junio" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Julio" Value="7"></asp:ListItem>
                    <asp:ListItem Text="Agosto" Value="8"></asp:ListItem>
                    <asp:ListItem Text="Septiembre" Value="9"></asp:ListItem>
                    <asp:ListItem Text="Octubre" Value="10"></asp:ListItem>
                    <asp:ListItem Text="Noviembre" Value="11"></asp:ListItem>
                    <asp:ListItem Text="Diciembre" Value="12"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv7" ControlToValidate="mes" Text="*" ErrorMessage="Debe ingresar su mes de nacimiento." runat="server"></asp:RequiredFieldValidator>
                <asp:TextBox placeholder="Año" BorderStyle="Ridge" BorderColor="LightGray" ID="anio" runat="server" Width="69px"/>
                <asp:RequiredFieldValidator ID="rfv8" ControlToValidate="anio" Text="*" ErrorMessage="Debe ingresar su año de nacimiento." runat="server"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rv1" ControlToValidate="anio" Text="*" ErrorMessage="El año debe estar comprendido entre 1930 y el año actual." MinimumValue="1930" MaximumValue="2020" Type="Integer" runat="server"></asp:RangeValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Sexo</b><br/>

            <div style="text-align:center">
                &ensp;<asp:DropDownList BorderStyle="Ridge" BorderColor="LightGray" ID="sexo" runat="server" Height="16px" Width="300px">
                    <asp:ListItem Text="Selecciona tu sexo" Value=""></asp:ListItem>
                    <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                    <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv9" ControlToValidate="sexo" Text="*" ErrorMessage="Debe ingresar su sexo." runat="server"></asp:RequiredFieldValidator><br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Teléfono móvil</b><br/>

            <div style="text-align:center">
               &emsp;<asp:TextBox placeholder="(XXX) XXX-XXXX" BorderStyle="Ridge" BorderColor="LightGray" ID="telefono" runat="server" Width="296px"/>
               <asp:RequiredFieldValidator ID="rfv10" ControlToValidate="telefono" Text="*" ErrorMessage="Debe ingresar su teléfono." runat="server"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="rev5" ControlToValidate="telefono" Text="*" ErrorMessage="El formato del teléfono no es correcto." ValidationExpression="[(]\d{3}[)]\s\d{3}[-]\d{4}" runat="server"></asp:RegularExpressionValidator>
               <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Correo alternativo</b><br/>
            
            <div style="text-align:center">
               &emsp;<asp:TextBox placeholder="@gmail.com" BorderStyle="Ridge" BorderColor="LightGray" ID="alternativo" runat="server" Width="296px"/>
               <asp:RequiredFieldValidator ID="rfv11" ControlToValidate="alternativo" Text="*" ErrorMessage="Debe ingresar un e-mail alternativo." runat="server"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="rev6" ControlToValidate="alternativo" Text="*" ErrorMessage="El formato del e-mail alternativo no es correcto." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server"></asp:RegularExpressionValidator>
               <br/><br/>
            </div>

            &emsp;&ensp;<asp:Image ID="imagen" ImageUrl="captcha.jpg" runat="server" Width="300px"/>

            <div style="text-align:left">
                &emsp;&ensp;<asp:TextBox BorderStyle="Ridge" BorderColor="LightGray" ID="captcha" runat="server" Width="170px"/>
                <asp:RequiredFieldValidator ID="rfv12" ControlToValidate="captcha" Text="*" ErrorMessage="Debe demostrar que no es un robot." runat="server"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv2" ControlToValidate="captcha" Text="*" ErrorMessage="Las palabras del captcha no son correctas." ValueToCompare="rsonals culasi" Operator="Equal" runat="server"></asp:CompareValidator>
                <br/><br/>
            </div>

            &emsp;&ensp;<b style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Ubicación</b><br/>

            <div style="text-align:center">
               &ensp;<asp:DropDownList BorderStyle="Ridge" BorderColor="LightGray" ID="ubicacion" runat="server" Width="300px">
                   <asp:ListItem Text="Selecciona tu ubicación" Value=""></asp:ListItem>
                   <asp:ListItem Text="Argentina" Value="Argentina"></asp:ListItem>
                   <asp:ListItem Text="Uruguay" Value="Uruguay"></asp:ListItem>
                   <asp:ListItem Text="Brasil" Value="Brasil"></asp:ListItem>
                   <asp:ListItem Text="Chile" Value="Chile"></asp:ListItem>
                   <asp:ListItem Text="Colombia" Value="Colombia"></asp:ListItem>
                   <asp:ListItem Text="Perú" Value="Perú"></asp:ListItem>
                   <asp:ListItem Text="Ecuador" Value="Ecuador"></asp:ListItem>
                   <asp:ListItem Text="Bolivia" Value="Bolivia"></asp:ListItem>
                   <asp:ListItem Text="Paraguay" Value="Paraguay"></asp:ListItem>
                   <asp:ListItem Text="Venezuela" Value="Venezuela"></asp:ListItem>
               </asp:DropDownList>
               <asp:RequiredFieldValidator ID="rfv13" ControlToValidate="ubicacion" Text="*" ErrorMessage="Debe ingresar su ubicación." runat="server"></asp:RequiredFieldValidator><br/><br/>
            </div>
            
            &emsp;<asp:CheckBox ID="politicas" runat="server"/>Acepto las
            <asp:HyperLink Text="Condiciones del servicio" NavigateUrl="https://policies.google.com/terms?hl=es" runat="server"></asp:HyperLink> 
            &emsp;&ensp; y la &nbsp<asp:HyperLink Text="Política de privacidad" NavigateUrl="https://policies.google.com/privacy?hl=es" runat="server"></asp:HyperLink>&nbsp de Google
            <asp:CustomValidator ID="custom1" Text="*" ErrorMessage="Debe aceptar los términos y condiciones." OnServerValidate="ValidaPoliticas" runat="server"></asp:CustomValidator>
            <br/><br/>
            <div style="text-align:right">
                <asp:Button  ID="button" Text="Siguiente paso" BorderStyle="Ridge" BorderColor="LightGray" OnClick="SiguientePaso" runat="server"/>
            </div>
            &emsp;<asp:ValidationSummary ID="sumario" HeaderText="Corrija los siguientes aspectos:" runat="server"/>
        </asp:Panel>
    </form>
</body>
</html>
