<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditIntegration" Codebehind="EditIntegration.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Durum Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin", "StatusEdit")%></div>
		</div>
		<div class="toggleContent">
			<asp:label id="lblErr" runat="server"></asp:label>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "IntegrationStatus")%> :</label>
						<asp:DropDownList id="ddlStatus" runat="server" >
						<asp:ListItem Text="<%$ Resources:admin,Pending2 %>" Selected="True" Value="0"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Integrated %>" Value="1"></asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:button id="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:button>
				<asp:Button id="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>