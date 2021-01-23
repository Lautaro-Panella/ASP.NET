<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RangoHijosMenores.ascx.cs" Inherits="RangoHijosMenores" %>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:RangeValidator ID="range2" runat="server" ControlToValidate="TextBox3" MinimumValue="1" MaximumValue="17" Type="Integer" ErrorMessage="Rango permitido: 1-17" Text="*"></asp:RangeValidator>

