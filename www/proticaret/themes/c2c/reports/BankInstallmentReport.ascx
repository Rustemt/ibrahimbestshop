﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="BankInstallmentReport.ascx.vb" Inherits="ASPNetPortal.BankInstallmentReport" %>

<link type="text/css" href="<% =getThemePath() %>/css/portal.css" rel="stylesheet" />

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
        <asp:Label ID="lblScriptBankInstallmentByDate" runat="server" />
        <asp:Label ID="lblScriptBankInstallmentByBank" runat="server" />                 
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox button" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox button" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox button" />
        <asp:Button ID="btnYear" runat="server" Text="Yıl" CssClass="lightbox button" />
    </div>
    <div class="clear"></div>
    <div id='lineBankInstallmentByDate' class="user"></div>
    <div id='tableBankInstallmentByDate' class="daytable"></div>
    <div id="report_content">
        <asp:PlaceHolder ID="phLabel" runat="server"></asp:PlaceHolder> 
        <asp:PlaceHolder ID="phPie" runat="server"></asp:PlaceHolder>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>