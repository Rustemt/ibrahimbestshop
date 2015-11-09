<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="UserReport.ascx.vb" Inherits="ASPNetPortal.User1" %>
<link type="text/css" href="<% =getThemePath() %>/css/portal.css" rel="stylesheet" />

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>

<div id="report_container">
    <div id="report_history">
        <table cellpadding="2" style="margin-left: auto">
            <tr>
                <td valign="bottom" align="left">
                    <label>Tarih</label>
                    <ew:CalendarPopup ID="Tarih1" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqTarih1" ControlToValidate="Tarih1" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                    <ew:CalendarPopup ID="Tarih11" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="Tarih11" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                </td>
                <td valign="bottom" align="left">
               		<asp:LinkButton ID="btnSearch" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    <div id="report_button">
        <asp:Label ID="lblScript" runat="server" />
        <asp:Label ID="lblScript1" runat="server" />
        <asp:Label ID="lblScript2" runat="server" />
        <asp:Label ID="lblScript3" runat="server" />
        <asp:Label ID="lblScript4" runat="server" />
        <asp:Button ID="btnDay" CssClass="lightbox button" runat="server" Text="Gün" />
        <asp:Button ID="btnWeek" CssClass="lightbox button" runat="server" Text="Hafta" />
        <asp:Button ID="btnMonth" CssClass="lightbox button" runat="server" Text="Ay" />
        <asp:Button ID="btnYear" CssClass="lightbox button" runat="server" Text="Yıl" />
     </div>
    <div class="clear"></div>
    <div id='userDay' class="user"></div>
    <div id='userDayTable' class="daytable"></div>  
    <div id="report_content">            
        <div id='BankOrderCount2'></div>
        <div id='BankOrderCount3'></div>
        <div id='BankOredCountTable2'></div>
        <div id='BankOredCountTable3'></div>
        <div class="clear"></div>
        <div id='BankOrderCount'></div>
        <div id='BankOrderCount4'></div>
        <div id='BankOrderCountTable'></div>
        <div id='BankOredCountTable4'></div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>