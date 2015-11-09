<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editbultenuser" Codebehind="editbultenuser.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>E-Bülten Üye Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">E-Bülten Üye Düzenle</div>
		</div>
		<div class="toggleContent">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
			<td runat="server">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
						<asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="E-Posta Boþ Býrakýlamaz" ControlToValidate="txtMail" runat="server" >*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="<%$ Resources:admin,UserNameMsg2 %>" ControlToValidate="txtMail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FullName")%> :</label>
						<asp:TextBox ID="txtFullName" runat="server" MaxLength="254"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="Ad Soyad Boþ Býrakýlamaz" ControlToValidate="txtFullName" runat="server" >*</asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "UserStatus")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CreateDate")%> :</label>
						<label class="labelInput"><asp:Label ID="lblTarih" runat="server" ></asp:Label></label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
			</div>
			</td>
			</tr>
			</table>
		</div>
	</div>
</div>
</form>
</body>
</html>