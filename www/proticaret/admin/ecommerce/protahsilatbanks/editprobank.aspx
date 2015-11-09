<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editprobank.aspx.vb" Inherits=".editprobank" %>

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
                    <div class="alert alert-info" id="alert" runat="server" visible="false">
                        <asp:Label ID="lblError" runat="server"></asp:Label></div>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>

                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label>Bankaya Verilecek İp Adresi :</label>
                                <asp:Label ID="lblIp" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Site Adresi :</label>
                                <asp:TextBox ID="txtServiceUrl" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Kullanıcı Adı :</label>
                                <asp:TextBox ID="txtUserName" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Şifre :</label>
                                <asp:TextBox ID="txtUserPassword" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Taksitleri Çek :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkInstallment" runat="server" Checked="False" AutoPostBack="True" />
                                    Aktif/Pasif</label>
                            </div>
                            <div class="colTwo">
                                <label>Taksit Oranlarını Çek :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkInstallmentRate" runat="server" Checked="False" />
                                    Aktif/Pasif</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Tanımlı Olan Bankaları Çek :</label>
                                <asp:Button ID="btnSaveData" runat="server" CssClass="btnDefault" Text="Çek"></asp:Button>
                            </div>
                            <div class="colTwo">
                                <label>Tanımlı Bankalar :</label>
                                <asp:DropDownList ID="ddlProBankName" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <%-- 
			Banka Adı :
			<asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
			<asp:ListItem Value="Akbank">Akbank</asp:ListItem>
			<asp:ListItem Value="Albaraka T&#252;rk">Albaraka T&#252;rk(Sanal pos yok)</asp:ListItem>
			<asp:ListItem Value="Anadolubank">Anadolubank</asp:ListItem>
			<asp:ListItem Value="Bank Asya">Bank Asya</asp:ListItem>
			<asp:ListItem Value="Finansbank">Finansbank</asp:ListItem>
			<asp:ListItem Value="Fortis">Fortis</asp:ListItem>
			<asp:ListItem Value="Garanti Bankası">Garanti Bankası</asp:ListItem>
			<asp:ListItem Value="Halk Bankası">Halk Bankası</asp:ListItem>
			<asp:ListItem Value="HSBC Bank">HSBC Bank</asp:ListItem>
			<asp:ListItem Value="İş Bankası">İş Bankası</asp:ListItem>
			<asp:ListItem Value="Ko&#231; Bank">Ko&#231; Bank(Sanal pos yok)</asp:ListItem>
			<asp:ListItem Value="Kuveyt T&#252;rk Katılım Bankası">Kuveyt T&#252;rk Katılım Bankası</asp:ListItem>
			<asp:ListItem Value="SHOPMILES">SHOPMILES(Paynet)</asp:ListItem>
			<asp:ListItem Value="T&#252;rk Ekonomi Bankası">T&#252;rk Ekonomi Bankası</asp:ListItem>
			<asp:ListItem Value="T&#252;rkiye Finans Katılım Bankası">T&#252;rkiye Finans Katılım Bankası</asp:ListItem>
			<asp:ListItem Value="T&#252;rkiye Halk Bankası">T&#252;rkiye Halk Bankası</asp:ListItem>
			<asp:ListItem Value="Yapı Kredi">Yapı Kredi</asp:ListItem>
			<asp:ListItem Value="VakıfBank">VakıfBank</asp:ListItem>
			<asp:ListItem Value="Ziraat Bankası">Ziraat Bankası(Sanal pos yok)</asp:ListItem>
			<asp:ListItem>DenizBank</asp:ListItem>
			</asp:DropDownList>
			<asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Adı Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator>
                        --%>
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
                                <label>Sanal Pos Aktif :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                            <div class="colTwo">
                                <label>Taksitli Çekim Aktif :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" />
                                    Aktif/Pasif</label>
                            </div>
                        </div>

                        <%--
			<tr runat="server" id="tr1" visible="<%# chkIsCreditCard.Checked %>">
			<td align="right">
			Sanal Pos Ortamı (Test/Üretim) :
			
			
			<asp:DropDownList ID="ddlTest" runat="server" AutoPostBack="True">
			<asp:ListItem Value="0">&#220;retim Ortamı</asp:ListItem>
			<asp:ListItem Value="1">Test Ortamı</asp:ListItem>
			</asp:DropDownList>
			
                        --%>
                        <%--<tr runat="server" id="tr2" visible="<%# ddltest.selectedvalue=1 %>">
			<td align="right">
			Sanal Pos Test Ortamı Sipariş No :
			
			
			<asp:TextBox ID="txtOrderId" runat="server" ToolTip="Bankanız özel bir sipariş numarası ile işlem yapmanızı istediğinde bu alanı kullanınız."
			Visible="<%# ddltest.selectedvalue=1 %>"></asp:TextBox>
			
                        --%>
                        <%--<tr runat="server" id="tr3" visible="<%# chkIsCreditCard.checked %>">
			<td align="right">
			Sanal Pos Entegrasyonu(Arena) :
			
			
			<asp:DropDownList ID="ddlPaynet" runat="server" AutoPostBack="True" Visible="<%# chkIsCreditCard.checked %>">
			<asp:ListItem Value="0">--Yok--</asp:ListItem>
			<asp:ListItem Value="1">Paynet(Arena)</asp:ListItem>
			</asp:DropDownList>
			
                        --%>
                        <%--<tr runat="server" id="tr4" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
			<td align="right">
			Bayi Kodu(Arena) :
			
			
			<asp:TextBox ID="txtPaynetCode" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPaynetCode"
			Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz."
			ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPaynetCode"
			Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz."
			Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
			
			
			<tr runat="server" id="tr5" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
			<td align="right">
			Kullanıcı Adı(Arena) :
			
			
			<asp:TextBox ID="txtPaynetUserName" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPaynetCode"
			Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullanıcı adı girmelisiniz."
			ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
			<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPaynetCode"
			Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullanıcı adı girmelisiniz."
			Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
			<asp:LinkButton ID="btnAutoFill" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"
			ValidationGroup="posnet">Pos bilgilerini otomatik doldur</asp:LinkButton>
			<asp:Label ID="lblEntMsg" runat="server"></asp:Label>
			
                        --%>
                        <div class="row">
                            <div class="colTwo">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr runat="server" id="tr6" visible="<%# chkIsCreditCard.checked %>">
                                        <td>
                                            <label>Varsayılan Pos Olarak Kullan :</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>" Enabled="false"></asp:CheckBox>
                                                Aktif/Pasif</label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label14" runat="server" Visible="<%# chkIsCreditCard.checked %>">3D Güvenlik Aktif :</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkUse3d" runat="server" Visible="<%# chkIsCreditCard.checked %>" Text='Sadece 3D desteği olan bankalar için kullanınız.' AutoPostBack="True"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                        </div>
                        <%--<tr runat="server" id="tr7" visible="<%# chkIsCreditCard.checked %>">
			<td align="right">
			Ödeme Türü :
			
			<asp:DropDownList ID="ddlAuth" runat="server" Visible="<%# chkIsCreditCard.checked %>">
			<asp:ListItem Value="Auth">Otorizasyon</asp:ListItem>
			<asp:ListItem Value="PreAuth">&#214;n Otorizasyon</asp:ListItem>
			</asp:DropDownList>
			
                        --%>
                        <%--
			<td align="right">
			<asp:Label ID="lbl1" runat="server" Visible="False">Xcip :</asp:Label>
			
			
			<asp:TextBox ID="txtXcip" runat="server" Visible="False"></asp:TextBox>
			<asp:RequiredFieldValidator ID="rqXcip" runat="server" ControlToValidate="txtXcip"
			ErrorMessage="Xcip girmelisiniz." Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
			
			
			
			<td align="right">
			<asp:Label ID="lbl2" runat="server" Visible="False">Pos No :</asp:Label>
			
			
			<asp:TextBox ID="txtPosNo" runat="server" Visible="False"></asp:TextBox>
			<asp:RequiredFieldValidator ID="rqPosNo" runat="server" ControlToValidate="txtPosNo"
			ErrorMessage="Pos No Girmelisiniz." Visible="<%# chkIsCreditCard.checked %>"
			Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
			
			
			
			<td align="right">
			<asp:Label ID="lblId1" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos ID(Uye No/Client Id/Org.Kodu) :</asp:Label>
			
			
			<asp:TextBox ID="txtPosId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
			<asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" ErrorMessage="Sanal Pos ID Girmelisiniz."
			ControlToValidate="txtPosId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
			
			
			
			<td align="right">
			<asp:Label ID="lblId2" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Kullanıcı Adı(Name/MID/F.Kodu) :</asp:Label>
			
			
			<asp:TextBox ID="txtPosUserId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
			<asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" ErrorMessage="Sanal Pos Kullanıcı Adı Girmelisiniz."
			ControlToValidate="txtPosUserId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
			
			
			
			<td align="right">
			<asp:Label ID="lblId3" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Parola(Password/TID/Terminal No) :</asp:Label>
			
			
			<asp:TextBox ID="txtPosPassword" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
			<asp:RequiredFieldValidator ID="Requiredfieldvalidator8" runat="server" ErrorMessage="Sanal Pos Parola Girmelisiniz."
			ControlToValidate="txtPosPassword" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
			
                        --%>
                        <%--
			<td align="right">
			<asp:Label ID="lbl3DKey" runat="server" Visible="False">3D Güvenlik Anahtarı(Storekey) :</asp:Label>
			
			
			<asp:TextBox ID="txt3DKey" runat="server" Visible="False"></asp:TextBox>
			
                        --%>
                        <div class="row">
                            <div class="colTwo">
                                <label>Açıklama : Bu alan ödeme sayfasında banka adının yanında gösterilecek</label>
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
