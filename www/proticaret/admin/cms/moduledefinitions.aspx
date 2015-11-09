<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ModuleDefinitions" Codebehind="ModuleDefinitions.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "ModuleTypeDefinition")%></title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Modul Tipi Tanýmý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
			<td runat="server">
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "ModuleName")%> : <asp:RequiredFieldValidator ID="Req1" runat="server" Display="Static" ErrorMessage="<%$ Resources:admin,AddModuleMsg1 %>" ControlToValidate="FriendlyName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="FriendlyName" runat="server" MaxLength="150"></asp:TextBox>
					</div>
				</div>
                <div class="row">
                	<div class="colOne colBtn">
						<label><%=GetGlobalResourceObject("admin", "ModulePath")%> : <asp:RequiredFieldValidator ID="Req2" runat="server" Display="Static" ErrorMessage="<%$ Resources:admin,AddModuleMsg2 %>" ControlToValidate="DesktopSrc">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="DesktopSrc" runat="server" MaxLength="150"></asp:TextBox>
						<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#" CssClass="btnDefault" onclick="BrowseServer('DesktopSrc');" Text="<%$ Resources:admin,Gallery %>"></asp:HyperLink>
					</div>
                </div>
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label4" runat="server" Visible="False">Mobil Modül Kaynaðý: </asp:Label></label>
						<asp:TextBox ID="MobileSrc" runat="server" MaxLength="150" Visible="False"></asp:TextBox>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
			<asp:LinkButton ID="updateButton" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"><i class="fa fa-floppy-o"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>