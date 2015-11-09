<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editwizardlookup" Codebehind="editwizardlookup.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Seçenek Ekle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Seçenek Ekle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Seçenek Adý : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtLookup" ErrorMessage="Özellik Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtLookup" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Gösterim Sýrasý : <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ControlToValidate="txtOrder" ErrorMessage="Özellik Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtOrder" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True">1</ew:NumericBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>