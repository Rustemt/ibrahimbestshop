<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editoksidbank.aspx.vb" Inherits="ASPNetPortal.editoksidbank" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Oksid Banka Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Oksid Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Yetkilendirilmesi gereken IP adresi :</label>
						<asp:Label ID="lblIp" runat="server"></asp:Label>
					</div>
					<div class="colTwo">
						<label>Oksid Banka Listesi : <asp:RequiredFieldValidator ID="rqFieldBank" runat="server" ControlToValidate="ddlOksidBanks" ErrorMessage="Banka seçmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlOksidBanks" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Görünecek Ad :</label>
						<asp:TextBox ID="txtOksidDisplayName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo colBtn">
						<label><label>Taksit Seçenekleri İçin Banka Logosu :</label>
						<asp:TextBox ID="Src" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('Src');" NavigateUrl="#" Text="Galeri"></asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Taksitli Çekim :</label>
						<label class="labelInput"><asp:CheckBox ID="chkOksidTaksit" runat="server" /> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label>Sanal Pos :</label>
						<label class="labelInput"><asp:CheckBox ID="chksanalpos" runat="server" /> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Varsayılan Pos Olarak Kullan :</label>
						<label class="labelInput"><asp:CheckBox ID="chkvarsiyilan" runat="server" /> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama <small>(Bu alan ödeme sayfasında banka adının yanında gösterilecek)</small> :</label>
						<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="3000"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="İptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>