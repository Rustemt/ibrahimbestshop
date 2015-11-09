<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="problemedit.aspx.vb" Inherits="ASPNetPortal.problemedit" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Duyuru Ekle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Duyuru Ekle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lbl" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="true"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
			<td runat="server">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Announcements")%> :</label>
						<asp:TextBox ID="txtaddproblem" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo"></div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnaddproblem" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>