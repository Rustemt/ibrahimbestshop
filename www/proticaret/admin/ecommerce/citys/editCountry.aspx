<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editCountry.aspx.vb" Inherits="ASPNetPortal.editCountry" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Ülke Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ülke Düzenle</div>
		</div>
		<div class="toggleContent">
			<table width="100%" cellpadding="0" cellspacing="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CountryName")%> : <asp:RequiredFieldValidator runat="server" ID="rq" ControlToValidate="txtCountryName" ErrorMessage="<%$ Resources:admin,CountryAddMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtCountryName"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:CheckBox runat="server" ID="chkStatus" Checked="true" /> <%=GetGlobalResourceObject("admin", "StatusActiveorPassive")%></label>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>&nbsp;
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>