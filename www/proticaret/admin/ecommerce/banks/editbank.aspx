<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditBank" CodeBehind="EditBank.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Banka Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
			<div class="dataForm">
			<div class="row">
				<div class="colOne">
					<label>Bankaya Verilecek Ýp Adresi : </label>
                    <label class="labelInput"><asp:Label ID="lblIp" runat="server" CssClass="textRed"></asp:Label></label>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label>Banka Adý : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Adý Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
					<asp:ListItem Value="Akbank">Akbank</asp:ListItem>
					<asp:ListItem Value="Albaraka T&#252;rk">Albaraka T&#252;rk(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="Anadolubank">Anadolubank</asp:ListItem>
					<asp:ListItem Value="Bank Asya">Bank Asya</asp:ListItem>
					<asp:ListItem Value="Finansbank">Finansbank</asp:ListItem>
					<asp:ListItem Value="Fortis">Fortis</asp:ListItem>
					<asp:ListItem Value="Garanti Bankasý">Garanti Bankasý</asp:ListItem>
					<asp:ListItem Value="Halk Bankasý">Halk Bankasý</asp:ListItem>
					<asp:ListItem Value="HSBC Bank">HSBC Bank</asp:ListItem>
					<asp:ListItem Value="Ýþ Bankasý">Ýþ Bankasý</asp:ListItem>
					<asp:ListItem Value="Ko&#231; Bank">Ko&#231; Bank(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="Kuveyt T&#252;rk Katýlým Bankasý">Kuveyt T&#252;rk Katýlým Bankasý</asp:ListItem>
					<asp:ListItem Value="SHOPMILES">SHOPMILES(Paynet)</asp:ListItem>
					<asp:ListItem Value="T&#252;rk Ekonomi Bankasý">T&#252;rk Ekonomi Bankasý</asp:ListItem>
					<asp:ListItem Value="T&#252;rkiye Finans Katýlým Bankasý">T&#252;rkiye Finans Katýlým Bankasý</asp:ListItem>
					<asp:ListItem Value="T&#252;rkiye Halk Bankasý">T&#252;rkiye Halk Bankasý</asp:ListItem>
					<asp:ListItem Value="Yapý Kredi">Yapý Kredi</asp:ListItem>
					<asp:ListItem Value="VakýfBank">VakýfBank</asp:ListItem>
					<asp:ListItem Value="Ziraat Bankasý">Ziraat Bankasý(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="DenizBankNew">Deniz Bank (Yeni Sanal Pos)</asp:ListItem>
					<asp:ListItem>DenizBank</asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="colTwo">
					<label>Görünen Ad : <small>(Banka adý yerine gösterilecek)</small></label>
					<asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label>Banka Þubesi(Havale) :</label>
					<asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
				</div>
				<div class="colTwo">
					<label>Hesap No(Havale) :</label>
					<asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colTwo colBtn">
					<label>Taksit Seçenekleri Ýçin Banka Logosu :</label>
					<asp:TextBox ID="Src" runat="server"></asp:TextBox>
					<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('Src');" NavigateUrl="#"><i class="fa fa-folder-open-o"></i>  Galeri</asp:HyperLink>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
                	<label>Sanal Pos</label>
					<label class="labelInput"><asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
				</div>
				<div class="colTwo">
                	<label>Taksitli Çekim</label>
					<label class="labelInput"><asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" /> Aktif/Pasif</label>
				</div>
			</div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.Checked %>">
                    <label>Sanal Pos Ortamý (Test/Üretim) :</label>
                    <asp:DropDownList ID="ddlTest" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="0">&#220;retim Ortamý</asp:ListItem>
                    <asp:ListItem Value="1">Test Ortamý</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" id="testOrderId" visible="<%# ddltest.selectedvalue=1 %>">
                    <label>Sanal Pos Test Ortamý Sipariþ No :</label>
                    <asp:TextBox ID="txtOrderId" runat="server" ToolTip="Bankanýz özel bir sipariþ numarasý ile iþlem yapmanýzý istediðinde bu alaný kullanýnýz." Visible="<%# ddltest.selectedvalue=1 %>"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>Sanal Pos Entegrasyonu(Arena) :</label>
                    <asp:DropDownList ID="ddlPaynet" runat="server" AutoPostBack="True" Visible="<%# chkIsCreditCard.checked %>">
                        <asp:ListItem Value="0">--Yok--</asp:ListItem>
                        <asp:ListItem Value="1">Paynet(Arena)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
                    <label>Bayi Kodu(Arena) :</label>
                    <asp:TextBox ID="txtPaynetCode" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz." ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz." Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
                    <label>Kullanýcý Adý(Arena) :</label>
                    <asp:TextBox ID="txtPaynetUserName" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullanýcý adý girmelisiniz." ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullanýcý adý girmelisiniz." Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:LinkButton ID="btnAutoFill" runat="server" CssClass="textRed" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ValidationGroup="posnet">Pos bilgilerini otomatik doldur</asp:LinkButton>
                    <div class="alert alert-info" runat="server" id="alert" visible="false" ><asp:Label ID="lblEntMsg" runat="server"></asp:Label></div>
                </div>
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>Varsayýlan Pos Olarak Kullan :</label>
                    <label class="labelInput"><asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:CheckBox> Aktif/Pasif</label>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>Ödeme Türü :</label>
                    <asp:DropDownList ID="ddlAuth" runat="server" Visible="<%# chkIsCreditCard.checked %>">
                        <asp:ListItem Value="Auth">Otorizasyon</asp:ListItem>
                        <asp:ListItem Value="PreAuth">&#214;n Otorizasyon</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" id="divSection" visible="false">
                    <label>Bölüm :</label>
                    <asp:DropDownList runat="server" ID="ddlSection">
                        <asp:ListItem Text="1" Value="1" />
                        <asp:ListItem Text="2" Value="2" />
                    </asp:DropDownList>
                </div>
            </div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lbl2" runat="server" Visible="False">Pos No : <asp:RequiredFieldValidator ID="rqPosNo" runat="server" ControlToValidate="txtPosNo" ErrorMessage="Pos No Girmelisiniz." Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator></asp:Label></label>
					<asp:TextBox ID="txtPosNo" runat="server" Visible="False"></asp:TextBox>
				</div>
				<div class="colTwo">
					<label><asp:Label ID="lbl1" runat="server" Visible="False">Xcip :</asp:Label></label>
					<asp:TextBox ID="txtXcip" runat="server" Visible="False"></asp:TextBox>
					<asp:RequiredFieldValidator ID="rqXcip" runat="server" ControlToValidate="txtXcip" ErrorMessage="Xcip girmelisiniz." Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lblId1" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos ID(Uye No/Client Id/Org.Kodu) :</asp:Label></label>
					<asp:TextBox ID="txtPosId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" ErrorMessage="Sanal Pos ID Girmelisiniz." ControlToValidate="txtPosId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lblId2" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Kullanýcý Adý(Name/MID/F.Kodu) :</asp:Label></label>
					<asp:TextBox ID="txtPosUserId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" ErrorMessage="Sanal Pos Kullanýcý Adý Girmelisiniz." ControlToValidate="txtPosUserId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
				<div class="colTwo">
					<label><asp:Label ID="lblId3" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Parola(Password/TID/Terminal No) :</asp:Label></label>
					<asp:TextBox ID="txtPosPassword" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator8" runat="server" ErrorMessage="Sanal Pos Parola Girmelisiniz." ControlToValidate="txtPosPassword" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colOne">
					<label><asp:Label ID="Label14" runat="server" Visible="<%# chkIsCreditCard.checked %>">3D Güvenlik Aktif :</asp:Label></label>
					<label class="labelInput"><asp:CheckBox ID="chkUse3d" runat="server" Visible="<%# chkIsCreditCard.checked %>" Text='Sadece 3D desteði olan bankalar için kullanýnýz.' AutoPostBack="True"></asp:CheckBox></label>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lbl3DKey" runat="server" Visible="False">3D Güvenlik Anahtarý(Storekey) :</asp:Label></label>
					<asp:TextBox ID="txt3DKey" runat="server" Visible="False"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colOne">
					<label>Açýklama : <small>(Bu alan ödeme sayfasýnda banka adýnýn yanýnda gösterilecek)</small></label>
					<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="3000"></asp:TextBox>
				</div>
				<div class="colTwo"></div>
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