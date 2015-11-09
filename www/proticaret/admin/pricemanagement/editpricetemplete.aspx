<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpricetemplete.aspx.vb" Inherits="ASPNetPortal.editpricetemplete" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","PriceTemplateEdit") %></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblerr" runat="server" />

                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin","TemplateCode") %>:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şablon Kodu Giriniz." ControlToValidate="txtcode">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox runat="server" ID="txtcode" />
                            </div>
                            <div class="colTwo">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin", "TemplateName")%>:
                                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Şablon Adı Giriniz." ControlToValidate="txtname">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox runat="server" ID="txtname" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label13" runat="server"><%= GetGlobalResourceObject("admin", "Status")%>:</asp:Label></label>
                                <label class="labelInput">
                                    <asp:CheckBox ID="chkIsActive" runat="server" Text="<%$ Resources:admin,Active %>" Checked="True"></asp:CheckBox></label>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "PriorityOrder")%>(1-10):</label>
                                <ew:NumericBox ID="txtApplyOrder" runat="server" TextAlign="Right">1</ew:NumericBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin", "StartDate")%>:
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtStartDate">*</asp:RequiredFieldValidator></label>
                                <ew:CalendarPopup Text=">" ID="txtStartDate" runat="server" Culture="Turkish (Turkey)" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label8" runat="server"><%= GetGlobalResourceObject("admin", "StockFilter")%>:</asp:Label></label>
                                <label class="labelInput">
                                    <asp:Label ID="lblStokFilter" runat="server"></asp:Label></label>
                                <input id="txtStokFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
                                <input id="txtStokFilter" type="hidden" size="2" name="Hidden1" runat="server">
                                <a class="btnDefault" runat="server" href="#" onclick="Stok()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin", "EndDate")%>:
                                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Başlangıç Tarihi belirtiniz." ControlToValidate="txtEndDate">*</asp:RequiredFieldValidator></label>
                                <ew:CalendarPopup Text="<" ID="txtEndDate" runat="server" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="İptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo colBtn">
                                <label>
                                    <asp:Label ID="Label4" runat="server"><%= GetGlobalResourceObject("admin", "CustomerFilter")%>:</asp:Label></label>
                                <label class="labelInput">
                                    <asp:Label ID="lblUserFilter" runat="server"></asp:Label></label>
                                <input id="txtUserFilterDesc" type="hidden" size="2" name="Hidden1" runat="server">
                                <input id="txtUserFilter" type="hidden" size="2" name="Hidden1" runat="server">
                                <a class="btnDefault" runat="server" href="#" onclick="Customer()"><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>
                            </div>
                        </div>
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "AppliedPrice")%>:</label>
                                <asp:DropDownList ID="ddlPrice" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice1Products %>" Value="SatisFiyati1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice2Products %>" Value="SatisFiyati2"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice3Products %>" Value="SatisFiyati3"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice4Products %>" Value="SatisFiyati4"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice5Products %>" Value="SatisFiyati5"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "DiscountType")%>:</label>
                                <asp:DropDownList ID="ddlDiscountType" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Discount2 %>" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,AmountDiscount %>" Value="1"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label runat="server">
                                    <%= GetGlobalResourceObject("admin", "DiscountAmount")%>:
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="İndirim Miktarını Giriniz." ControlToValidate="txtIndirim">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox runat="server" ID="txtIndirim" />
                                <asp:RegularExpressionValidator ErrorMessage="İndirim Miktarını Rakam Giriniz" CssClass="textRed" ValidationExpression="0123456789." ControlToValidate="txtIndirim" runat="server" />
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label1" runat="server"><%= GetGlobalResourceObject("admin", "DependentCompany")%>:</asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="0" ErrorMessage="Firma Seçiniz." ControlToValidate="ddlcompany">*</asp:RequiredFieldValidator></label>
                                <asp:DropDownList runat="server" ID="ddlcompany" AutoPostBack="true"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>
                                    <asp:Label ID="Label2" runat="server"><%= GetGlobalResourceObject("admin", "DependentSalesPlaces")%>:</asp:Label></label>
                                <asp:DropDownList runat="server" ID="ddlshops" AutoPostBack="true"></asp:DropDownList>
                            </div>
                            <div class="colTwo colBtn" style="position: relative;">
                                <label>
                                    <asp:Label ID="Label6" runat="server"><%= GetGlobalResourceObject("admin", "DependentStorages")%>: </asp:Label></label>
                                <label class="labelInput" style="width: 100%;">
                                    <asp:PopupControlExtender runat="server" ID="pce1" PopupControlID="divprices" Position="Bottom" TargetControlID="lblClick"></asp:PopupControlExtender>
                                    <a id="lblClick" runat="server" class="txtRed" style="cursor: pointer;"><i class="fa fa-pencil"></i>&nbsp;&nbsp; <%= IIf(storeagestext = "", "Seçiniz", storeagestext)%></a></label>
                                <div id="divprices" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                    <style type="text/css">
                                        #divprices input,
                                        #divprices label {
                                            display: inline-block;
                                            margin-right: 15px;
                                        }
                                    </style>
                                    <asp:CheckBoxList runat="server" ID="chkstoragelist"></asp:CheckBoxList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label runat="server"><%= GetGlobalResourceObject("admin", "Description")%>:</label>
                                <asp:TextBox runat="server" ID="txtdetails" TextMode="MultiLine" MaxLength="250" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne buttonGroup">
                                <asp:Button Text="<%$ Resources:admin,Save %>" ID="btnAdd" runat="server" CssClass="btnDefault" />
                                <asp:Button Text="<%$ Resources:admin,Cancel %>" ID="btncancel" runat="server" CssClass="btnDefault" />
                            </div>
                        </div>
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
    function Stok() {
        var a = "<%= MID%>";
        popupWindow(700, 600, 50, '/admin/ecommerce/campain/EditStokFilter.aspx?LabelId=lblStokFilter&TextBoxID=txtStokFilter&TextBoxID1=txtStokFilterDesc&IND=0&MID=' + a, 'popup');
    }

</script>
