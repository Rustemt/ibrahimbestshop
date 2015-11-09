<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editgenpabank.aspx.vb" Inherits="ASPNetPortal.editgenpabank" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Genpa Banka Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Genpa Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Bankaya Verilecek İp Adresi :</label>
						<label class="labelInput"><asp:Label ID="lblIp" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Banka Adı : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Adı Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
						<asp:ListItem Value="Akbank">Genpa Akbank</asp:ListItem>
						<asp:ListItem Value="Bank Asya">Genpa Bank Asya</asp:ListItem>
						<asp:ListItem Value="Finansbank">Genpa Finansbank</asp:ListItem>
						<asp:ListItem Value="Garanti Bankası">Genpa Garanti Bankası</asp:ListItem>
						<asp:ListItem Value="Halk Bankası">Genpa Halk Bankası</asp:ListItem>
						<asp:ListItem Value="HSBC Bank">Genpa HSBC Bank</asp:ListItem>
						<asp:ListItem Value="İş Bankası">Genpa İş Bankası</asp:ListItem>
						<asp:ListItem Value="Yapı Kredi">Genpa Yapı Kredi</asp:ListItem>
						<asp:ListItem Value="VakıfBank">Genpa VakıfBank</asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Görünen Ad <small>(Banka adı yerine gösterilecek) :</small></label>
						<asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Banka Şubesi <small>(Havale)</small> :</label>
						<asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Hesap No <small>(Havale)</small> :</label>
						<asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo colBtn">
						<label>Taksit Seçenekleri İçin Banka Logosu :</label>
						<asp:TextBox ID="Src" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('Src');" NavigateUrl="#"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Sanal Pos :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label>Taksitli Çekim :</label>
						<label class="labelInput"><asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" /> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>3D Desteği :</label>
						<label class="labelInput"><asp:CheckBox ID="chkUse3d" runat="server" Text='Sadece 3D desteği olan bankalar için kullanınız.' AutoPostBack="True" Checked="true" Visible="false"></asp:CheckBox> Aktif/Pasif</label>
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
						<label>Servis Kodu <small>(ServiceId)</small> : <asp:RequiredFieldValidator ID="rvf5" ErrorMessage="Servis Kodu Girmelisiniz" ControlToValidate="txt3DKey" runat="server" /></label>
						<asp:TextBox ID="txt3DKey" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Mağaza Kodu <small>(StoreId)</small> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="Mağaza Kodu Girmelisiniz" ControlToValidate="txtstoreId" runat="server" /></label>
						<asp:TextBox ID="txtstoreId" runat="server"></asp:TextBox>
					</div>
				</div>
				<%-- 
				<div class="row">
					<div class="colTwo">
						
						<label>Hesap Id <small>(AccountId)</small> : <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="Servis Kodu Girmelisiniz" ControlToValidate="txtserviceId" runat="server" /></label>
						<asp:TextBox ID="txtserviceId" runat="server"></asp:TextBox>
						
					</div>
				</div>
				--%>
				<div class="row">
					<div class="colTwo">
						<label>Kullanıcı Adı : <asp:RequiredFieldValidator ID="rfv3" ErrorMessage="Kullanıcı Adı Girmelisiniz" ControlToValidate="txtusername" runat="server" /></label>
						<asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Kullanıcı Parola : <asp:RequiredFieldValidator ID="rvf4" ErrorMessage="Kullanıcı Şifresi Girmelisiniz" ControlToValidate="txtuserpass" runat="server" /></label>
						<asp:TextBox ID="txtuserpass" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama : Bu alan ödeme sayfasında banka adının yanında gösterilecek</label>
						<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="3000"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="İptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>