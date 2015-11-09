<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditStatus" Codebehind="EditStatus.aspx.vb" %>
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
			<div class="titleText">Durum Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblCustomerId" runat="server" Visible="False"></asp:Label>
			<asp:label id="lblErr" runat="server"></asp:label>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "OrderStatus")%> :</label>
						<asp:DropDownList id="ddlStatus" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="lblStatus2" runat="server" Visible="False">Satýþ Ortaðý Durumu :</asp:Label></label>
						<asp:DropDownList id="ddlStatus2" runat="server" Visible="False">
						<asp:ListItem Text="<%$ Resources:admin,Pending %>"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Approved %>"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Cancel %>"></asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lblStatus3" runat="server" Visible="False"><%=GetGlobalResourceObject("admin", "GiftCertificateStatus")%> :</asp:Label></label>
						<asp:DropDownList id="ddlStatus3" runat="server" Visible="False">
						<asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="0"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Approved %>" Value="1"></asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:button id="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:button>
				<asp:Button id="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>