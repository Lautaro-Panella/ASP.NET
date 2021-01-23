<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TextBoxCuit.ascx.cs" Inherits="TextBoxCuit" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:CustomValidator ID="custom1" runat="server" ErrorMessage="Cuit inválido!" Text="*" OnServerValidate="custom1_ServerValidate"></asp:CustomValidator>

