<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditfBankInfo"  CodeBehind="editfbankinfo.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Banka Taksit Tanýmlarý</title>
</head>
<body>
<form id="Form1" method="post" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Taksit Tanýmlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" CssClass="Admin_HataMesaji"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="Label2" runat="server">Taksit:</asp:Label> <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ErrorMessage="Kg Girmelisiniz." ControlToValidate="txtKg">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtKg" runat="server" PositiveNumber="True" TextAlign="Left"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="Label1" runat="server">Faiz Oraný(%):</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Limit Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPrice" runat="server" TextAlign="Left"></ew:NumericBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Ýptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
