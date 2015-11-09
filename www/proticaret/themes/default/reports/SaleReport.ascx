<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SaleReport.ascx.vb" Inherits="ASPNetPortal.SaleReport" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>

<div id="report_container">
    <div id="report_history">
        <table cellpadding="2" style="margin-left: auto">
            <tr>
                <td valign="bottom" align="left">
                    <label>
                        Tarih</label>
                    <ew:CalendarPopup ID="cpStartDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                    <ew:CalendarPopup ID="cpEndDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>

                </td>
                <td valign="bottom" align="left">
                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div id="report_button">
        <asp:Label ID="lblScriptSaleByDate" runat="server" />
        <asp:Label ID="lblScriptSaleByStatus" runat="server" />
        <asp:Label ID="lblScriptSaleByPayType" runat="server" />
        <asp:Label ID="lblScriptSaleByBank" runat="server" />
        <asp:Label ID="lblScriptSaleByCargo" runat="server" />
        <asp:Label ID="lblScriptSaleByCity" runat="server" />
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox button" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox button" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox button" />
        <asp:Button ID="btnYear" runat="server" Text="Yıl" CssClass="lightbox button" />
    </div>
    <div class="clear"></div>
    <div id='lineSaleByDate' class="user"></div>
    <div id='tableSaleByDate' class="daytable"></div>
    <div id="report_content">
        <div id='pieSaleByStatus'></div>
        <div id='pieSaleByPayType'></div>
        <div id='tableSaleByStatus'></div>
        <div id='tableSaleByPayType'></div>
        <div class="clear"></div>
        <div id='pieSaleByBank'></div>
        <div id='pieSaleByCargo'></div>
        <div id='tableSaleByBank'></div>
        <div id='tableSaleByCargo'></div>
        <div class="clear"></div>
        <div id='pieSaleByCity'></div>
        <div class="clear"></div>
        <div id='tableSaleByCity'></div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>