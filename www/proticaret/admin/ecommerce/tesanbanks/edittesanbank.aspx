<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="edittesanbank.aspx.vb" Inherits=".edittesanbank" %>
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
            <div id="divalert" class="alert alert-error" runat="server" visible="false" ><asp:Label ID="lblError" runat="server"></asp:Label></div>            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
            <div class="dataForm">
                <div class="row">
                    <div class="colTwo">
                    	<label>Bankaya Verilecek İp Adresi :</label>
                        <label class="labelInput"><asp:Label ID="lblIp" runat="server"></asp:Label></label>
                    </div>
                    <div class="colTwo">
                    	<label>Taksitleri Çek :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkInstallment" runat="server" Checked="False" AutoPostBack ="True" /> Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                    	<label>Taksit Oranlarını Çek :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkInstallmentRate" runat="server" Checked="False" /> Aktif/Pasif</label>
                    </div>
                    <div class="colTwo">
                    	<label>Tanımlı Olan Bankaları Çek :</label>
                        <asp:Button ID="btnSaveData" runat="server" Text="Çek" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                    	<label>Tanımlı Bankalar :</label>
                        <asp:DropDownList ID="ddlTesanBankName" runat="server"> </asp:DropDownList>
                    </div>
                    <div class="colTwo">
                    	<label>Görünen Ad <small>(Banka adı yerine gösterilecek)</small> : </label>
                        <asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                    	<label>Banka Şubesi (Havale) :</label>
                        <asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                    	<label>Hesap No (Havale) :</label>
                        <asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo colBtn">
                    	<label>Taksit Seçenekleri İçin Banka Logosu :</label>
                        <asp:TextBox ID="Src" runat="server"></asp:TextBox>
                        <asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" Text="Galeri" onclick="BrowseServer('Src');" NavigateUrl="#"></asp:HyperLink>
                    </div>
                    <div class="colTwo">
                    	<label>Sanal Pos Aktif :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"> </asp:CheckBox> Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                    	<label>Taksitli Çekim Aktif :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" /> Aktif/Pasif</label>
                    </div>
                    <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    	<label>Varsayılan Pos Olarak Kullan :</label>
                        <label class="labelInput"><asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>"> </asp:CheckBox> Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row" runat="server" visible="<%# chkIsCreditCard.checked %>">
                	<div class="colOne">
                    	<label><asp:Label ID="Label14" runat="server" Visible="<%# chkIsCreditCard.checked %>" >3D Güvenlik Aktif :</asp:Label></label>
                        <label class="labelInput"><asp:CheckBox ID="chkUse3d" runat="server" Visible="<%# chkIsCreditCard.checked %>" Text='Sadece 3D desteği olan bankalar için kullanınız.' AutoPostBack="True" Enabled ="False"> </asp:CheckBox> Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                    	<label>Açıklama <small>(Bu alan ödeme sayfasında banka adının yanında gösterilecek)</small>:</label>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="3000"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                    	<div class="buttonGroup">
                            <asp:Button ID="btnAdd" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
                            <asp:Button ID="btnCancel" runat="server" Text="İptal" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>