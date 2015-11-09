<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pMultiCoupon.aspx.vb" Inherits="ASPNetPortal.pMultiCoupon" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Çoklu Hediye Çeki</title>
</head>
<body>
    <form id="Form1" runat="server">
        <input id="txtUserFilter" type="hidden" size="2" name="Hidden1" runat="server" value=" Users.IsActive=1" />
        <input id="txtUserFilterDesc" type="hidden" size="2" name="Hidden1" runat="server" value=" Durumu=Aktif" />
        <input id="txtStokFilter" type="hidden" size="2" name="Hidden1" runat="server" value=" Products.IsActive=1" />
        <input id="txtStokFilterDesc" type="hidden" size="2" name="Hidden1" runat="server" value=" Durumu=Aktif" />
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Çoklu Hediye Çeki Tanımları</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "CouponStatus")%> :</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkIsActive" runat="server" Text="<%$ Resources:admin,Active %>" Checked="True"></asp:CheckBox></label>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "GiftVoucherType")%> :</label>
                                            <asp:DropDownList ID="ddlCouponType" runat="server" AutoPostBack="True">
                                                <asp:ListItem Text="<%$ Resources:admin,BulkCouponCustomer %>" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,BulkCouponIndependent %>" Value="2"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "CustomerFilter")%> :</label>
                                            <asp:Label ID="lblUserFilter" CssClass="labelInput" runat="server"><%=GetGlobalResourceObject("admin", "CouponStatusActive")%></asp:Label>
                                            <a id="A1" class="btnDefault" runat="server" href="#" onclick="Customer()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>
                                            <%--<asp:HyperLink ID="hlCustomer" runat="server">Düzenle</asp:HyperLink>--%>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "CouponCode")%> :</label>
                                            <ew:NumericBox ID="txtCouponCode" runat="server" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "MaxUsageCount")%>:</label>
                                            <ew:NumericBox ID="txtMaxUsageCount" runat="server" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "PersonalMaximumUsageCount")%>:</label>
                                            <ew:NumericBox ID="txtPersonMaxUsageCount" runat="server" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "ShippingStatus")%>:</label>
                                            <asp:DropDownList ID="ddlKargo" runat="server" AutoPostBack="True">
                                                <asp:ListItem Text="<%$ Resources:admin,Free %>" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Paid %>" Value="1"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="colTwo colHalf">
                                            <label><%=GetGlobalResourceObject("admin", "GiftVoucherAmount")%> :
                                                <asp:Label runat="server" ID="lblCurrencyCode1"></asp:Label></label>
                                            <asp:DropDownList ID="ddlPercent" runat="server" AutoPostBack="True">
                                                <asp:ListItem Text="<%$ Resources:admin,Percent %>" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Amount %>" Value="1"></asp:ListItem>
                                            </asp:DropDownList>
                                            <ew:NumericBox ID="txtDiscount" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "StartDate")%> :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtStartDate" ValidationGroup="ddd">*</asp:RequiredFieldValidator></label>
                                            <ew:CalendarPopup ID="txtStartDate" runat="server" Culture="Turkish (Turkey)" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                                        </div>
                                        <div class="colTwo">
                                            <label>Başlangıç Saati :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Başlangıç Saatini belirtiniz." ControlToValidate="txtstarttime" ValidationGroup="ddd">*</asp:RequiredFieldValidator></label>
                                            <ew:MaskedTextBox ID="txtstarttime" runat="server" ErrorMessage="geçersiz giriş" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "ExpirationDate")%> :
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtEndDate" ValidationGroup="ddd">*</asp:RequiredFieldValidator></label>
                                            <ew:CalendarPopup ID="txtEndDate" runat="server" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                                        </div>
                                        <div class="colTwo">
                                            <label>Bitiş Saati :
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ErrorMessage="Bitiş Saatini belirtiniz." ControlToValidate="txtendtime" ValidationGroup="ddd">*</asp:RequiredFieldValidator></label>
                                            <ew:MaskedTextBox ID="txtendtime" runat="server" ErrorMessage="geçersiz giriş" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "MinimumAmountProduct")%> : <%=GetGlobalResourceObject("admin", "Count")%></label>
                                            <ew:NumericBox ID="txtMinQty" runat="server" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "MinimumItemAmount")%> :
                                                <asp:Label runat="server" ID="lblCurrencyCode2"></asp:Label></label>
                                            <ew:NumericBox ID="txtMinPrice" runat="server" DecimalSign="," GroupingSeparator=" ">50</ew:NumericBox>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Visible="False" ValidationGroup="ddd" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" ValidationGroup="ddd" Text="<%$ Resources:admin,CreateCoupon %>" />
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,Close %>"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">

    function Customer() {
        var a = "<%= MID%>";
        popupWindow(700, 600, 50, '/admin/ecommerce/user/EditUserFilter.aspx?LabelId=lblUserFilter&TextBoxID=txtUserFilter&TextBoxID1=txtUserFilterDesc&IND=0&MID=' + a, 'popup');
    }

</script>
