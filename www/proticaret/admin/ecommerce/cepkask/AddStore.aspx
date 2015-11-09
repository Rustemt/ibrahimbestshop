<%@ Page Language="vb" ValidateRequest="true" AutoEventWireup="false" CodeBehind="AddStore.aspx.vb" Inherits="ASPNetPortal.AddStore" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Cep Kask Yeni Mağaza Ekranı</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Mağaza Adı : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStoreName" ErrorMessage="Lütfen, mağaza ismini giriniz">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtStoreName" runat="server"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSaveStore" runat="server" CssClass="btnDefault" Text="Mağaza Kaydet" />
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="İptal" />
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>