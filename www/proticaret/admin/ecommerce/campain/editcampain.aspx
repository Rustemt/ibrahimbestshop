<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditCampain" CodeBehind="EditCampain.aspx.vb" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<html>
<head id="Head2" runat="server">
    <title>Sepet Kampanya Tanimlari</title>
</head>
<body>
    <form id="form2" runat="server">
        <div class="pagePopup editCampain">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Sepet Kampanya Tanýmlarý</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="Label14" runat="server"> </asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <div class="buttonGroup">
                        <asp:HyperLink ID="lnkexpress" runat="server" CssClass="btnDefault" NavigateUrl="http://www.proticaret.org" Target="_blank" Visible="False">Bu modüldeki özellikleri kullanabilmek için lütfen týklayýnýz.</asp:HyperLink>
                    </div>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label13" runat="server">Durumu:</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkIsActive" runat="server" Text="Aktif" Checked="True"></asp:CheckBox>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label1" runat="server">Kampanya Adý:</asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Kampanya Adý Girmelisiniz" ControlToValidate="txtCampainName">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtCampainName" runat="server" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label3" runat="server">Öncelik Sýrasý (1-10):</asp:Label></label>
                                <ew:NumericBox ID="txtApplyOrder" runat="server" TextAlign="Right">1</ew:NumericBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label5" runat="server">Baþlangýç Tarihi:</asp:Label></label>
                                <ew:CalendarPopup ID="txtStartDate" runat="server" Culture="Turkish (Turkey)" DisableTextBoxEntry="False" Text=">" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" MonthYearPopupCancelText="Ýptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Baþlangýç Tarihi belirtiniz." ControlToValidate="txtStartDate">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label9" runat="server">Saati:</asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Baþlangýç Saatini belirtiniz." ControlToValidate="txtstarttime">*</asp:RequiredFieldValidator></label>
                                <ew:MaskedTextBox ID="txtstarttime" runat="server" ErrorMessage="geçersiz giriþ" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label6" runat="server">Bitiþ Tarihi:</asp:Label>
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Baþlangýç Tarihi belirtiniz." ControlToValidate="txtEndDate">*</asp:RequiredFieldValidator></label>
                                <ew:CalendarPopup ID="txtEndDate" runat="server" DisableTextBoxEntry="False" AllowArbitraryText="False" Text="<" NullableLabelText="Tarih Giriniz" MonthYearPopupCancelText="Ýptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label10" runat="server">Saati:</asp:Label>
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ErrorMessage="Bitiþ Saatini belirtiniz." ControlToValidate="txtendtime">*</asp:RequiredFieldValidator></label>
                                <ew:MaskedTextBox ID="txtendtime" runat="server" ErrorMessage="geçersiz giriþ" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label2" runat="server">Kampanya Tipi:</asp:Label></label>
                                <asp:DropDownList ID="ddlCampainType" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="0">% Ýndirim</asp:ListItem>
                                    <asp:ListItem Value="1">Tutar Ýndirimi (TL)</asp:ListItem>
                                    <asp:ListItem Value="2">Hediye &#220;r&#252;n</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <table id="tblIndirim" cellspacing="0" cellpadding="0" width="100%" border="0" runat="server">
                                    <tr>
                                        <td>
                                            <label>
                                                <asp:Label ID="lblIndirim" runat="server">Ýndirim(Tutar - %):</asp:Label></label>
                                            <asp:TextBox ID="txtIndirim" runat="server" Width="120px" TextAlign="Right" Text="0" />
                                            <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender1" TargetControlID="txtIndirim" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <table id="tblHediye" cellspacing="0" cellpadding="0" width="100%" border="0" runat="server">
                            <tr>
                                <td>
                                    <div class="row">
                                        <div class="colTwo colBtn">
                                            <label>
                                                <asp:Label ID="lbl" runat="server">Hediye Ürün:</asp:Label></label>
                                            <label class="labelInput">
                                                <asp:Label ID="lblUrunFilter" runat="server"></asp:Label></label>
                                            <input id="txtUrunFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
                                            <input id="txtUrunFilter" type="hidden" size="2" name="Hidden1" runat="server">
                                            <a class="btnDefault" id="lnkUrun" runat="server" href="#" onclick="GiftProduct()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>

                                        </div>
                                        <div class="colTwo">
                                            <label>
                                                <asp:Label ID="lblmaxurun" runat="server">Max Ürün Sayýsý:</asp:Label></label>
                                            <asp:TextBox ID="txtmaxurun" runat="server" Text="1" TextAlign="right" />
                                            <asp:FilteredTextBoxExtender ID="ftb3" runat="server" TargetControlID="txtmaxurun" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>
                                                <asp:Label ID="lblHediyeIndirimLabel" runat="server">Hediye Ürün Ýndirimi</asp:Label></label>
                                            <asp:TextBox ID="txtHediyeIndirim" runat="server" TextAlign="Right" Text="0" />
                                        </div>
                                        <div class="colTwo">
                                            <label>&nbsp;</label>
                                            <asp:DropDownList ID="ddlProductCampainType" runat="server" AutoPostBack="True">
                                                <asp:ListItem Value="0">% Ýndirim</asp:ListItem>
                                                <asp:ListItem Value="1">Tutar Ýndirimi (TL)</asp:ListItem>
                                                <asp:ListItem Value="2">Sabit Tutar (TL)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtHediyeIndirim" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label4" runat="server">Müþteri Filtresi:</asp:Label></label>
                                <label class="labelInput">
                                    <label><small>(<asp:Label ID="lblUserFilter" runat="server"></asp:Label>)</small></label>
                                    <input id="txtUserFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
                                    <input id="txtUserFilter" type="hidden" size="2" name="Hidden1" runat="server">
                                </label>
                                <a class="btnDefault" runat="server" href="#" onclick="Customer()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>

                            </div>
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label8" runat="server">Stok Filtresi:</asp:Label></label>
                                <label class="labelInput">
                                    <label><small>(<asp:Label ID="lblStokFilter" runat="server"></asp:Label>)</small></label>
                                    <input id="txtStokFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
                                    <input id="txtStokFilter" type="hidden" size="2" name="Hidden1" runat="server">
                                </label>
                                <a class="btnDefault" runat="server" href="#" onclick="Stok()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>
                            </div>
                        </div>
                        <table id="tblurun" cellspacing="0" cellpadding="0" width="100%" border="0" runat="server">
                            <tr>
                                <td>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>Ýndirim Filtreli Ürünlere Mi Uygulansýn:</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkurun" runat="server" TextAlign="Left" />Aktif/Pasif</label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="row">
                            <div class="colTwo">
                                <label>Ýndirim Kdv Dahil Fiyat Ýçin Geçerli:</label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkkdv" runat="server" TextAlign="Left" />Aktif/Pasif</label>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label11" runat="server">Min Miktar:</asp:Label></label>
                                <asp:TextBox ID="txtMinQty" runat="server" TextAlign="Right" Text="0" />
                                <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender3" TargetControlID="txtMinQty" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label15" runat="server">Min Filtreli Ürün Tutarý(TL):</asp:Label></label>
                                <asp:TextBox ID="txtminfiltre" runat="server" TextAlign="Right" Text="0" />
                                <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender4" TargetControlID="txtminfiltre" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label12" runat="server">Min Sepet Tutarý(TL):</asp:Label></label>
                                <asp:TextBox ID="txtMinTotal" runat="server" TextAlign="Right" Text="0" />
                                <asp:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender2" TargetControlID="txtMinTotal" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>
                                    <asp:Label ID="Label7" runat="server">Açýklama:</asp:Label></label>
                                <FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Width="100%" Height="300px" ToolbarSet="BasicPlus" BasePath=" ../../../FCKeditor/"></FCKeditorV2:FCKeditor>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Ýptal"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet &amp; Kapat"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function GiftProduct() {
        var a = "<%= MID%>";
        popupWindow(900, 600, 50, '/admin/ecommerce/campain/EditStok.aspx?LabelId=lblUrunFilter&TextBoxID=txtUrunFilter&TextBoxID1=txtUrunFilterDesc&IND=0&MID=' + a, 'popup');
    }
    function Customer() {
        var a = "<%= MID%>";
        popupWindow(700, 600, 50, '/admin/ecommerce/user/EditUserFilter.aspx?LabelId=lblUserFilter&TextBoxID=txtUserFilter&TextBoxID1=txtUserFilterDesc&IND=0&MID=' + a, 'popup');
    }
    function Stok() {
        var a = "<%= MID%>";
        popupWindow(700, 600, 50, '/admin/ecommerce/campain/EditStokFilter.aspx?LabelId=lblStokFilter&TextBoxID=txtStokFilter&TextBoxID1=txtStokFilterDesc&IND=0&MID=' + a, 'popup');
    }

</script>
