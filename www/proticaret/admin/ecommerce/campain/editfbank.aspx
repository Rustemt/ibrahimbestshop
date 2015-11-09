<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditfBank" CodeBehind="editfbank.aspx.vb" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Banka Düzenle</title>
</head>
<body>
<form id="Form1" method="post" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" ForeColor=" "></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="Label1" runat="server">Banka Adý:</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Banka Seçiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="cmbBankName" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server"></asp:CheckBox> <asp:Label ID="Label10" runat="server">Aktif/Pasif</asp:Label></label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnTest" runat="server" CssClass="btnDefault" Visible="False" Text="Test"></asp:Button>
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>&nbsp;
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Ýptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>