<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editiparabank.aspx.vb" Inherits="ASPNetPortal.editiparabank" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>IPara Banka Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">IPara Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label>IPara'ya Verilecek Geri Dönüş Adresi :</label>
						<label class="labelInput"><asp:Label ID="lblurl" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>IPara'ya Verilecek İp Adresi :</label>
						<label class="labelInput"><asp:Label ID="lblIp" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Banka Adı : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Adı Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
						<asp:ListItem Value="Akbank">IPara Akbank</asp:ListItem>
						<asp:ListItem Value="Albaraka T&#252;rk">IPara Albaraka T&#252;rk(Sanal pos yok)</asp:ListItem>
						<asp:ListItem Value="Anadolubank">IPara Anadolubank</asp:ListItem>
						<asp:ListItem Value="Bank Asya">IPara Bank Asya</asp:ListItem>
						<asp:ListItem Value="Finansbank">IPara Finansbank</asp:ListItem>
						<asp:ListItem Value="Fortis">IPara Fortis</asp:ListItem>
						<asp:ListItem Value="Garanti Bankası">IPara Garanti Bankası</asp:ListItem>
						<asp:ListItem Value="Halk Bankası">IPara Halk Bankası</asp:ListItem>
						<asp:ListItem Value="HSBC Bank">IPara HSBC Bank</asp:ListItem>
						<asp:ListItem Value="İş Bankası">IPara İş Bankası</asp:ListItem>
						<asp:ListItem Value="Ko&#231; Bank">IPara Ko&#231; Bank(Sanal pos yok)</asp:ListItem>
						<asp:ListItem Value="Kuveyt T&#252;rk Katılım Bankası">IPara Kuveyt T&#252;rk Katılım Bankası</asp:ListItem>
						<asp:ListItem Value="T&#252;rk Ekonomi Bankası">IPara T&#252;rk Ekonomi Bankası</asp:ListItem>
						<asp:ListItem Value="T&#252;rkiye Finans Katılım Bankası">IPara T&#252;rkiye Finans Katılım Bankası</asp:ListItem>
						<asp:ListItem Value="T&#252;rkiye Halk Bankası">IPara T&#252;rkiye Halk Bankası</asp:ListItem>
						<asp:ListItem Value="Yapı Kredi">IPara Yapı Kredi</asp:ListItem>
						<asp:ListItem Value="VakıfBank">IPara VakıfBank</asp:ListItem>
						<asp:ListItem Value="Ziraat Bankası">IPara Ziraat Bankası(Sanal pos yok)</asp:ListItem>
						<asp:ListItem Value="DenizBank">IPara DenizBank</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="colTwo">
						<label>Görünen Ad <small>(Banka adı yerine gösterilecek)</small> :</label>
						<asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Banka Şubesi<small>(Havale)</small> :</label>
						<asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Hesap No(Havale) :</label>
						<asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label>Taksit Seçenekleri İçin Banka Logosu :</label>
						<asp:TextBox ID="Src" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('Src');" NavigateUrl="#"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
					</div>
					<div class="colTwo">
						<label>Sanal Pos Aktif :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Taksitli Çekim Aktif :</label>
						<label class="labelInput"><asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" /> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr runat="server" id="tr6" visible="<%# chkIsCreditCard.checked %>">
						<td>
						<label>Varsayılan Pos Olarak Kullan :</label>
						<label class="labelInput"><asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:CheckBox> Aktif/Pasif</label>
						</td>
						</tr>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Public Key : <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="Public Key Girmelisiniz" ControlToValidate="txtpublic" runat="server" /></label>
						<asp:TextBox ID="txtpublic" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Private Key : <asp:RequiredFieldValidator ID="rfv3" ErrorMessage="Private Key Girmelisiniz" ControlToValidate="txtprivate" runat="server" /></label>
						<asp:TextBox ID="txtprivate" runat="server"></asp:TextBox>
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