<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxNoEmpty.ascx.cs" Inherits="TextBoxNoEmpty" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Campo obligatorio!" Text="*"></asp:RequiredFieldValidator>

