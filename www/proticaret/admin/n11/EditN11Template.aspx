<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditN11Template.aspx.vb" Inherits="ASPNetPortal.EditN11Template" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title><%= GetGlobalResourceObject("admin","N11TemplateEdit") %></title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","N11TemplateEdit") %></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>

                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label runat="server"><%= GetGlobalResourceObject("admin","TemplateName") %> :
                                    <asp:RequiredFieldValidator ID="rqfv3" ErrorMessage="Şablon Adı Giriniz." ControlToValidate="txtTemplateName" runat="server" /></label>
                                <asp:TextBox ID="txtTemplateName" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SalesStartDate") %> :</label>
                                <ew:CalendarPopup ID="SalesStartDay" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ProductSalesStatus") %> :</label>
                                <asp:DropDownList ID="ddlProductCondition" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,New2 %>" Selected="True" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SecondHand %>" Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","SalesEndDate") %> :</label>
                                <ew:CalendarPopup ID="SalesStopDay" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ShipmentTimeForProduct") %> :
                                    <asp:RequiredFieldValidator ID="rfv2" ErrorMessage="Ürün Kargoya Verilme Süresini Giriniz." ControlToValidate="txtPreparingDay" runat="server" /></label>
                                <ew:NumericBox ID="txtPreparingDay" runat="server" PositiveNumber="True" RealNumber="False" GroupingSeparator=" " TextAlign="left">1</ew:NumericBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ProductionDate") %> :</label>
                                <ew:CalendarPopup ID="ProductionDate2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","N11DeliveryTemplate") %> :</label>
                                <asp:DropDownList runat="server" ID="ddlTemplateName"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colBtn">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ExpirationDate") %> :</label>
                                <ew:CalendarPopup ID="ExpirationDate2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                            </div>
                            <div class="colTwo">
                                <label runat="server"><%= GetGlobalResourceObject("admin","ProductPrice") %> :</label>
                                <asp:DropDownList ID="ddlPriceList" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="SatisFiyati0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice1Products %>" Selected="True" Value="SatisFiyati1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice2Products %>" Value="SatisFiyati2"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice3Products %>" Value="SatisFiyati3"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice4Products %>" Value="SatisFiyati4"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,SalesPrice5Products %>" Value="SatisFiyati5"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo colHalf">
                                <label runat="server"><%= GetGlobalResourceObject("admin","DiscountAndAdditional") %> : (%)</label>
                                <asp:DropDownList ID="ddlDis" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Discount %>" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Additional %>" Selected="True" Value="1"></asp:ListItem>
                                </asp:DropDownList>
                                <ew:NumericBox ID="txtRate" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne buttonGroup">
                                <asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                                <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
