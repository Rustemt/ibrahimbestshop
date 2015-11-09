<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="OfferReport.ascx.vb" Inherits="OfferAllReport" %>


<link type="text/css" href="<% =getThemePath() %>/css/portal.css" rel="stylesheet" />

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>

<div id="report_container">
    <div id="report_history">
        <table cellpadding="2" style="margin-left: auto">
            <tr>
                <td valign="bottom" align="left">
                    <label>Tarih</label>
                    <ew:calendarpopup id="Tarih1" runat="server" width="60px" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text=">>" disabletextboxentry="False"></ew:calendarpopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqTarih1" ControlToValidate="Tarih1" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                    <ew:calendarpopup id="Tarih11" runat="server" width="60px" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text="<<" disabletextboxentry="False"></ew:calendarpopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqTarih11" ControlToValidate="Tarih11" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                </td>
                <td valign="bottom" align="left">
                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div id="report_button">
        <asp:Label ID="lblTopScript" runat="server" />
        <asp:Label ID="lblScript" runat="server" />
        <asp:Label ID="lblScript1" runat="server" />
        <asp:Label ID="lblScript2" runat="server" />
        <asp:Label ID="lblScript3" runat="server" />
        <asp:Label ID="lblScript4" runat="server" />
        <asp:Label ID="lblScript5" runat="server" />
        <asp:Label ID="lblScript6" runat="server" />
        <asp:Label ID="lblScript7" runat="server" />
        <asp:Button ID="btnDay" CssClass="lightbox button" runat="server" Text="Gün" />
        <asp:Button ID="btnWeek" CssClass="lightbox button" runat="server" Text="Hafta" />
        <asp:Button ID="btnMonth" CssClass="lightbox button" runat="server" Text="Ay" />
        <asp:Button ID="btnYear" CssClass="lightbox button" runat="server" Text="Yıl" />
    </div>
    <div class="clear"></div>
    <div id='OfferDay' class="user"></div>
    <div id='OfferDayTable' class="daytable"></div>
    <div id="report_content">

        <div id="box1">
            <div id='OfferTypeCount'></div>
            <div id='OfferTypeTable'></div>
        </div>
        <div id="box2">
            <div class="clear"></div>
            <div id='OfferStatuCount'></div>
            <div id='OfferStatuTable'></div>
        </div>
        <div class="clear"></div>
        <div id="box1">
            <div id='OfferSendCount'></div>
            <div id='OfferSendTable'></div>
        </div>
        <div id="box2">
            <div class="clear"></div>
            <div id='OfferPayCount'></div>
            <div id='OfferPayTable'></div>
        </div>
        <div class="clear"></div>
            <div id="box1">
            <div id='OfferProjeCount'></div>
            <div id='OfferProjeTable'></div>
        </div>
        <div id="box2">
            <div class="clear"></div>
            <div id='OfferTFCount'></div>
            <div id='OfferTFTable'></div>
        </div>
                <div class="clear"></div>
            <div id="box1">
            <div id='OfferAdminAppCount'></div>
            <div id='OfferAdminAppTable'></div>
        </div>
        <div id="box2">
            <div class="clear"></div>
            <div id='OfferPersonCount'></div>
            <div id='OfferPersonTable'></div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
