<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxMayorEdad.ascx.cs" Inherits="TextBoxMayorEdad" %>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RangeValidator ID="range1" runat="server" ControlToValidate="TextBox2" MinimumValue="18" MaximumValue="105" Type="Integer" ErrorMessage="No puede ser menor de 18!" Text="*"></asp:RangeValidator>

