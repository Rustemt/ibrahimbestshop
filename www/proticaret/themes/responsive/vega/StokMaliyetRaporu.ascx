<%@ Control Language="vb" AutoEventWireup="false" Codebehind="StokMaliyetRaporu.ascx.vb" Inherits="ASPNetPortal.StokMaliyetRaporu" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>

<BR>
<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label>
<asp:dropdownlist id="ddlFirmalar" runat="server" Width="204px" AutoPostBack="True" CssClass="Global_Normal_ComboBox"></asp:dropdownlist>
<BR>
&nbsp;
<BR>
<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label>
<asp:dropdownlist id="ddlDonem" runat="server" AutoPostBack="True" Width="160px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
<BR>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<asp:HyperLink id="showReport" runat="server" Target="_blank" Visible="False" CssClass="Global_Normal_Link">Rapor Göster</asp:HyperLink>
