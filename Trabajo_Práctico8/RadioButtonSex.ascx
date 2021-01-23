<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RadioButtonSex.ascx.cs" Inherits="WebUserControl" %>
<asp:RadioButton Id="radioBtn1" runat="server" Text="Masculino" GroupName="sexo"/>
<asp:RadioButton Id="radioBtn2" runat="server" Text="Femenino" GroupName="sexo"/>
<asp:CustomValidator ID="custom3" runat="server" ErrorMessage="Indique su sexo!" Text="*" OnServerValidate="custom3_ServerValidate"></asp:CustomValidator>

