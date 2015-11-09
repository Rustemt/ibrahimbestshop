<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditStatu" Codebehind="EditStatu.aspx.vb" %>
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
			<asp:Label ID="lblErr" runat="server" ></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "StatusName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIl" ErrorMessage="<%$ Resources:admin,StatusNameMsg1 %>" >*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtIl" runat="server"></asp:TextBox>
					</div>
				</div>
			</div>
			
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>