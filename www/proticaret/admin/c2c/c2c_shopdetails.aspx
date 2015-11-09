<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_shopdetails.aspx.vb" Inherits="ASPNetPortal.c2c_shopdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mağaza Detayı</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><span id="spnTitle" runat="server">Mağaza Detayı</span></div>
                </div>
                <div class="toggleContent">
                    <label id="lblMessage" runat="server" />
                    <asp:Panel ID="pnlInformation" runat="server">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colTwo">
                                    <label>Şirket Adı (Ünvan) :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopname" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>Şirket Türü :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshoptype" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Kayıtlı olduğu ticaret odası :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopticoda" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>Vergi No :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopvergino" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Cep Telefonu :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopmobile" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>İş Telefonu :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopphone" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Banka Hesap Sahibi Adı :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopbankowner" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>Banka :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopbank" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Banka Şube :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopbanksube" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>Banka IBAN No :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopiban" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Ülke :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopcountry" runat="server" /></label>
                                </div>
                                <div class="colTwo">
                                    <label>Şehir :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopcity" runat="server" /></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>İlçe :</label>
                                    <label class="labelInput">
                                        <asp:Label ID="lblshopdistrict" runat="server" /></label>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>

                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" ToolTip="Tedarikçinizin son durumunu kaydeder." />
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
