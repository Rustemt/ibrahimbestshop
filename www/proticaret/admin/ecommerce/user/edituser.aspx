<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>

<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditUser" CodeBehind="EditUser.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Kullan�c� D�zenle</title>
</head>
<body>
    <form id="Form1" runat="server">

        <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlFirmaCountry"
            Category="CountryId" PromptText="-�lke Se�iniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
        <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlFirmaCity"
            ParentControlID="ddlFirmaCountry" Category="CityId" PromptText="-�ehir Se�iniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetCity" />
        <cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlFirmaDistrict"
            ParentControlID="ddlFirmaCity" Category="DistrictId" PromptValue="0" PromptText="-�l�e Se�iniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetDistict" />

        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Kullan�c� D�zenle</div>
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#tab_1">�yelik Bilgileri</a></li>
                            <li><a href="#tab_2">Ki�isel Bilgiler</a></li>
                            <li><a href="#tab_3">Firma Bilgileri</a></li>
                        </ul>
                    </div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>

                    <div class="tabContent">
                        <div class="tab" id="tab_1">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label>�ye Tipi Se�iniz :</label>
                                        <asp:RadioButtonList ID="rblUyeType" runat="server" AutoPostBack="True" CssClass="radioList" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0" Selected="True">Bireysel</asp:ListItem>
                                            <asp:ListItem Value="1">Kurumsal</asp:ListItem>
                                            <asp:ListItem Value="2" Text="Plasiyer" />
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Bayi :</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkIsReseller" runat="server" AutoPostBack="True"></asp:CheckBox>
                                            Evet/Hay�r</label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Durumu :</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox>
                                            Aktif/Pasif</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Servislere Ba�lanabilir :</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkRemoteLogin" runat="server" />
                                            Aktif/Pasif</label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Online Destek Verebilir :</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkIsOperator" runat="server" />
                                            Aktif/Pasif</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo colBtn">
                                        <label>Sat�� Ortakl��� :</label>
                                        <asp:DropDownList ID="ddlAfiliate" runat="server">
                                            <asp:ListItem Selected="True" Value="0">Pasif</asp:ListItem>
                                            <asp:ListItem Value="2">Onay Bekliyor</asp:ListItem>
                                            <asp:ListItem Value="1">Aktif</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btnAffiliatemail" runat="server" CssClass="btnDefault" CausesValidation="False" Text="Mail Bildir" ToolTip="Parolayi mail olarak kullan�c�ya g�nderir." />
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>Kullan�c� Gruplar� :</label>
                                        <label class="labelInput">&nbsp;</label>
                                        <a id="btngroup" runat="server"  class="btnDefault" href="#" onclick="EditTab()"><i class="fa fa-pencil"></i>D�zenle</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><b>�yelik Bilgileri</b></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>T.C. Kimlik No :</label>
                                        <asp:TextBox ID="txtTcKimlikNo" runat="server" MaxLength="11"></asp:TextBox>
                                        <cc3:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender1" TargetControlID="txtTcKimlikNo" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
                                    </div>
                                    <div class="colTwo">
                                        <label>�ye Kodu :
                                            <asp:RequiredFieldValidator ID="rqcode" runat="server" ErrorMessage="�ye Kodu Girmelisiniz." ControlToValidate="txtFirmaKodu">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtFirmaKodu" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            E-Posta : 
                                        </label>
                                        <asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mail Girmelisiniz." ControlToValidate="txtMail">*</asp:RequiredFieldValidator></label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                                    </div>
                                    <div class="colTwo">
                                        <label>Kullan�c� Ad� :
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Kart Adi Girmelisiniz." ControlToValidate="txtName">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtName" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo colBtn">
                                        <label>Do�um Tarihi :</label>
                                        <ew:CalendarPopup ID="txtDogumTarihi" runat="server" Text="..." GoToTodayText="Bu G�n:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>Parola :
                                            <asp:RequiredFieldValidator ErrorMessage="Parola Bos Birakilamaz" ControlToValidate="txtPassword" runat="server">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtPassword" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                                        <asp:Button ID="btnSendmail" runat="server" CssClass="btnDefault" CausesValidation="False" Text="Mail Bildir" ToolTip="Parolayi mail olarak kullan�c�ya g�nderir." />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Stok Fiyat� :</label>
                                        <asp:DropDownList ID="ddlSatFiyati" runat="server">
                                            <asp:ListItem Value="1">Sat�� Fiyat�1</asp:ListItem>
                                            <asp:ListItem Value="2">Sat�� Fiyat�2</asp:ListItem>
                                            <asp:ListItem Value="3">Sat�� Fiyat�3</asp:ListItem>
                                            <asp:ListItem Value="4">Sat�� Fiyat�4</asp:ListItem>
                                            <asp:ListItem Value="5">Sat�� Fiyat�5</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="colTwo">
                                        <label>�ndirim(%) :</label>
                                        <ew:MaskedTextBox ID="txtDisaccount" runat="server" ErrorMessage="ge�ersiz giri�" Mask="99,99" Text="00,00"></ew:MaskedTextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo colBtn">
                                        <label>Kod1 :</label>
                                        <asp:DropDownList ID="ddlCode1" runat="server"></asp:DropDownList>
                                        <a href="javascript:void(0)" class="btnDefault" onclick="popupWindow(600,185,50,'EditUserCode.aspx?IND=0&CID=1','popup');"><i class="fa fa-plus"></i>Yeni Ekle</a>
                                    </div>
                                    <div class="colTwo">
                                        <label>Stok �ndirimi</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkIskActive" runat="server" Checked="True" Text="Aktif/Pasif"></asp:CheckBox></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo colBtn">
                                        <label>Kod2 :</label>
                                        <asp:DropDownList ID="ddlCode2" runat="server"></asp:DropDownList>
                                        <a href="javascript:void(0)" class="btnDefault" onclick="popupWindow(600,185,50,'EditUserCode.aspx?IND=0&CID=2','popup');"><i class="fa fa-plus"></i>Yeni Ekle</a>
                                    </div>
                                    <div class="colTwo">
                                        <label>Alacak :</label>
                                        <label class="labelInput">
                                            <ew:NumericBox ID="txtCredit" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " Visible="False">0</ew:NumericBox></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo colBtn">
                                        <label>Kod3 :</label>
                                        <asp:DropDownList ID="ddlCode3" runat="server"></asp:DropDownList>
                                        <a href="javascript:void(0)" class="btnDefault" onclick="popupWindow(600,185,50,'EditUserCode.aspx?IND=0&CID=3','popup');"><i class="fa fa-plus"></i>Yeni Ekle</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>A��klama :</label>
                                        <asp:TextBox ID="txtAc�klama" runat="server" MaxLength="399" Height="100" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Kay�t Tarihi :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblTarih" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Son Login Tarihi :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblLTarih" runat="server"></asp:Label></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_2">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label><b>Ki�isel Bilgiler</b></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Cinsiyet:</label>
                                        <asp:RadioButtonList ID="rbSex" runat="server" CssClass="radioList" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1" Selected="True">Bay</asp:ListItem>
                                            <asp:ListItem Value="0">Bayan</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            Ad� Soyad� :
                                            <asp:RequiredFieldValidator ID="rq" runat="server" ErrorMessage="Ad� Soyad� Girmelisiniz." ControlToValidate="txtFullName">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtFullName" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>�lke :</label>
                                        <asp:DropDownList ID="ddlBillCountry" runat="server" AutoPostBack="true"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>�� Telefonu :</label>
                                        <ew:MaskedTextBox ID="txtTelefon2" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                                        <cc3:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender3" TargetControlID="txtTelefon2" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
                                    </div>
                                    <div class="colTwo colBtn">
                                        <label>�ehir :</label>
                                        <asp:DropDownList ID="ddlIl" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        <a href="#" class="btnDefault" onclick="EditTab2()"><i class="fa fa-plus"></i>Yeni Ekle</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Fax :</label>
                                        <ew:MaskedTextBox ID="txtFax" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>�l�e :</label>
                                        <asp:DropDownList ID="ddlBillDistrict" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Cep Telefonu :</label>
                                        <ew:MaskedTextBox ID="txtGsm" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                                        <cc3:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender4" TargetControlID="txtGsm" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Ev Telefonu :</label>
                                        <ew:MaskedTextBox ID="txtTelefon1" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                                        <cc3:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender2" TargetControlID="txtTelefon1" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Adres :</label>
                                        <asp:TextBox ID="txtUserAddres" runat="server" MaxLength="399" Height="100" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_3">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label><b>Firma Bilgileri</b></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            �nvan� :
                                            <asp:RequiredFieldValidator ID="rqfirmaUnvan" runat="server" ErrorMessage="Firma Unvan� Girmelisiniz." ControlToValidate="txtFirmaUnvan">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtFirmaUnvan" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>Telefon :</label>
                                        <ew:MaskedTextBox ID="txtFirmaTel1" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999" Validate="True"></ew:MaskedTextBox>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Vergi Dairesi :</label>
                                        <asp:TextBox ID="txtVd" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>Vergi No :</label>
                                        <asp:TextBox ID="txtVno" runat="server" MaxLength="15"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Fax :</label>
                                        <ew:MaskedTextBox ID="txtFirmaTel2" runat="server" ErrorMessage="ge�ersiz giri�" Mask="9999999999999"></ew:MaskedTextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>E-Posta :</label>
                                        <asp:TextBox ID="txtFirmaEMail" runat="server" MaxLength="254"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtFirmaEMail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>�lke :</label>
                                        <asp:DropDownList ID="ddlFirmaCountry" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="colTwo">
                                        <label>�ehir :</label>
                                        <asp:DropDownList ID="ddlFirmaCity" runat="server"></asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>�l�e :</label>
                                        <asp:DropDownList ID="ddlFirmaDistrict" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="colTwo">
                                        <label>Web :</label>
                                        <asp:TextBox ID="txtFirmaWeb" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Adres :</label>
                                        <asp:TextBox ID="txtFirmaAdres" runat="server" MaxLength="399" Height="100" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Banka Ad� :</label>
                                        <asp:TextBox ID="txtBankName" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>Banka �ubesi :</label>
                                        <asp:TextBox ID="txtBankSube" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Hesap No :</label>
                                        <asp:TextBox ID="txtBankNumber" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
                        <asp:Button ID="btndel" runat="server" CssClass="btnDefault" Text="Sil" CausesValidation="False" Visible="false"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="�ptal" CausesValidation="False"></asp:Button>
                        <cc3:ConfirmButtonExtender ID="cc1" runat="server" TargetControlID="btndel" ConfirmText="Bu kayd� silmek istedi�inizden emin misiniz?"></cc3:ConfirmButtonExtender>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function EditTab() {
        var a = "<%= IND %>";
        popupWindow(725, 325, 50, '/admin/cms/manageusergroup.aspx?UserId=' + a + '&MID=0', 'popup');
    }
    function EditTab2() {
        popupWindow(500, 250, 50, '/admin/ecommerce/citys/EditCity.aspx?IND=0&MID=0', 'popup');
    }
</script>
