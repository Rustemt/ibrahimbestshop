<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editwizardgroup" Codebehind="editwizardgroup.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Grup Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Grup Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Grup Adý : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Grup Adý Girmelisiniz." ControlToValidate="txtGroupName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtGroupName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Gösterim Sýrasý : <asp:RequiredFieldValidator ID="rq3" runat="server" ErrorMessage="Özellik Adý Girmelisiniz." ControlToValidate="txtOrder">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtOrder" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right">1</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True" Text="Aktif" /> <asp:CheckBox ID="chkIsVisible" runat="server" Checked="True" Text="Arama sihirbazýnda göster" Visible="false" /></label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnsave" runat="server" CssClass="btnDefault" Text="Kaydet" CausesValidation="False"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>