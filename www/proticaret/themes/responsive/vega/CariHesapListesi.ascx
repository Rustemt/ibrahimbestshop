<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CariHesapListesi.ascx.vb" Inherits="ASPNetPortal.CariHesapListesi" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
 
<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label><asp:dropdownlist id="ddlFirmalar" runat="server" AutoPostBack="True" Width="204px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
&nbsp;
<BR>
<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label><asp:dropdownlist id="ddlDonem" runat="server" AutoPostBack="True" Width="160px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
<BR>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<asp:hyperlink id="showReport" runat="server" Visible="False" Target="_blank" CssClass="Global_Normal_Link">Rapor Göster</asp:hyperlink>
