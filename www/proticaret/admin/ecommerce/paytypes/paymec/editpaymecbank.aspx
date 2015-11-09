<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpaymecbank.aspx.vb" Inherits="ASPNetPortal.editpaymecbank" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paymec Banka Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Paymec Banka Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label>Paymec'e Verilecek Geri Dönüş Adresi :</label>
                                <label class="labelInput">
                                    <asp:Label ID="lblurl" runat="server"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Bankaya Verilecek İp Adresi :</label>
                                <label class="labelInput">
                                    <asp:Label ID="lblIp" runat="server"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Banka Adı :
                                    <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Adı Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
                                <asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="Akbank">Paymec Akbank</asp:ListItem>
                                    <asp:ListItem Value="Albaraka T&#252;rk">Paymec Albaraka T&#252;rk(Sanal pos yok)</asp:ListItem>
                                    <asp:ListItem Value="Anadolubank">Paymec Anadolubank</asp:ListItem>
                                    <asp:ListItem Value="Bank Asya">Paymec Bank Asya</asp:ListItem>
                                    <asp:ListItem Value="Finansbank">Paymec Finansbank</asp:ListItem>
                                    <asp:ListItem Value="Fortis">Paymec Fortis</asp:ListItem>
                                    <asp:ListItem Value="Garanti Bankası">Paymec Garanti Bankası</asp:ListItem>
                                    <asp:ListItem Value="Halk Bankası">Paymec Halk Bankası</asp:ListItem>
                                    <asp:ListItem Value="HSBC Bank">Paymec HSBC Bank</asp:ListItem>
                                    <asp:ListItem Value="İş Bankası">Paymec İş Bankası</asp:ListItem>
                                    <asp:ListItem Value="Ko&#231; Bank">Paymec Ko&#231; Bank(Sanal pos yok)</asp:ListItem>
                                    <asp:ListItem Value="Kuveyt T&#252;rk Katılım Bankası">Paymec Kuveyt T&#252;rk Katılım Bankası</asp:ListItem>
                                    <asp:ListItem Value="T&#252;rk Ekonomi Bankası">Paymec T&#252;rk Ekonomi Bankası</asp:ListItem>
                                    <asp:ListItem Value="T&#252;rkiye Finans Katılım Bankası">Paymec T&#252;rkiye Finans Katılım Bankası</asp:ListItem>
                                    <asp:ListItem Value="T&#252;rkiye Halk Bankası">Paymec T&#252;rkiye Halk Bankası</asp:ListItem>
                                    <asp:ListItem Value="Yapı Kredi">Paymec Yapı Kredi</asp:ListItem>
                                    <asp:ListItem Value="VakıfBank">Paymec VakıfBank</asp:ListItem>
                                    <asp:ListItem Value="Ziraat Bankası">Paymec Ziraat Bankası(Sanal pos yok)</asp:ListItem>
                                    <asp:ListItem Value="DenizBank">Paymec DenizBank</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label>Görünen Ad <small>(Banka adı yerine gösterilecek)</small> :</label>
                                <asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Banka Şubesi <small>(Havale)</small> :</label>
                                <asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Hesap No <small>(Havale)</small> :</label>
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
                                <label>Sanal Pos :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox>
                                    Aktif/Pasif</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Taksitli Çekim :</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" />
                                    Aktif/Pasif</label>
                            </div>
                            <div class="colTwo">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr runat="server" id="tr6" visible="<%# chkIsCreditCard.checked %>">
                                        <td>
                                            <label>Varsayılan Pos Olarak Kullan :</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:CheckBox>
                                                Aktif/Pasif</label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Site No :
                                    <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="Site No Girmelisiniz" ControlToValidate="txtsiteno" runat="server" /></label>
                                <asp:TextBox ID="txtsiteno" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Paymec Secure Key :
                                    <asp:RequiredFieldValidator ID="rfv3" ErrorMessage="Paymec Secure Key Girmelisiniz" ControlToValidate="txtpaysecurecode" runat="server" /></label>
                                <asp:TextBox ID="txtpaysecurecode" runat="server"></asp:TextBox>
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
