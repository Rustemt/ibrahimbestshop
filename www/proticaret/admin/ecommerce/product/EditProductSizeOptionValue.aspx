<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductSizeOptionValue" Codebehind="EditProductSizeOptionValue.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Boyut Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:label ID="lblheader" runat="server">Boyut Deðeri Düzenle</asp:label></div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lblName" runat="server">Deðer Adý : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boyut Adý Girmelisiniz." ControlToValidate="txtName">*</asp:RequiredFieldValidator></asp:Label></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo colBtn">
						<label><asp:Label ID="lblsrc" runat="server">Resim Yolu :</asp:Label></label>
						<asp:TextBox ID="Src" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" NavigateUrl="#" onclick="BrowseServer('Src');" ><i class="fa fa-folder-open-o"></i>  Galeri</asp:HyperLink>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnEkle" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>