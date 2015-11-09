<%@ Register TagPrefix="uc1" TagName="DesktopModuleTitle" Src="../DesktopModuleTitle.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Bilanco.ascx.vb" Inherits="ASPNetPortal.CBilanco" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<%@ Register TagPrefix="uc1" TagName="DesktopModuleFootter" Src="../DesktopModuleFootter.ascx" %>
<uc1:desktopmoduletitle id="DesktopModuleTitle1" runat="server"></uc1:desktopmoduletitle>
<TABLE id="Table1" class="Global_Modul_Modul" cellSpacing="0" cellPadding="5" width="100%"
	border="0">
	<TR>
		<TD width="17" height="17"></TD>
		<TD align="right" width="115" height="17"></TD>
		<TD height="17"></TD>
		<TD height="17"></TD>
	</TR>
	<TR>
		<TD noWrap></TD>
		<TD noWrap align="right" width="115">
			<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label></TD>
		<TD noWrap>
			<asp:dropdownlist id="ddlFirmalar" runat="server" CssClass="Global_Normal_ComboBox" Width="204px"
				AutoPostBack="True"></asp:dropdownlist></TD>
		<TD noWrap></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD align="right" width="115">
			<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label></TD>
		<TD>
			<asp:dropdownlist id="ddlDonem" runat="server" CssClass="Global_Normal_ComboBox" Width="160px" AutoPostBack="True"></asp:dropdownlist>
			<asp:hyperlink id="showReport" runat="server" Visible="False" CssClass="Global_Normal_Link">Bilanço Göster</asp:hyperlink></TD>
		<TD></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD align="right" width="115"></TD>
		<TD></TD>
		<TD></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD align="right" width="115"></TD>
		<TD></TD>
		<TD></TD>
	</TR>
</TABLE>
<uc1:DesktopModuleFootter id="DesktopModuleFootter1" runat="server"></uc1:DesktopModuleFootter>
