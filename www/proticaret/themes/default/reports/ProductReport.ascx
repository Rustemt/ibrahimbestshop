<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ProductReport.ascx.vb" Inherits="ASPNetPortal.ProductReport" %>

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
        <asp:Label ID="lblScriptProductByDate" runat="server" />
        <asp:Label ID="lblScriptProductByCategory" runat="server" />
        <asp:Label ID="lblScriptProductByBrand" runat="server" />
        <asp:Label ID="lblScriptProductBySupplier" runat="server" />
        <asp:Label ID="lblScriptProductByStatus" runat="server" />
        <asp:Label ID="lblScriptProductByManager" runat="server" />
        <asp:Label ID="lblScriptProductByTextileGroup" runat="server" />
        <asp:Label ID="lblScriptProductByStock" runat="server" />
        <asp:Label ID="lblScriptProductByPrice" runat="server" />
        <asp:Label ID="lblScriptProductByAuthor" runat="server" />
        <asp:Label ID="lblScriptProductByPublisher" runat="server" />
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox button" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox button" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox button" />
        <asp:Button ID="btnYear" runat="server" Text="Yıl" CssClass="lightbox button" />
    </div>
    <div class="clear"></div>
    <div id='lineProductByDate' class="user"></div>
    <div id='tableProductByDate' class="daytable"></div>
    <div id="report_content">
        <div id='pieProductByCategory'></div>
        <div id='pieProductByBrand'></div>
        <div id='tableProductByCategory'></div>
        <div id='tableProductByBrand'></div>
        <div class="clear"></div>
        <div id='pieProductBySupplier'></div>
        <div id='pieProductByStatus'></div>
        <div id='tableProductBySupplier'></div>
        <div id='tableProductByStatus'></div>
        <div class="clear"></div>
        <div id='pieProductByManager'></div>
        <div id='pieProductByTextileGroup'></div>
        <div id='tableProductByManager'></div>
        <div id='tableProductByTextileGroup'></div>
        <div class="clear"></div>
        <div id='pieProductByStock'></div>
        <div id='pieProductByPrice'></div>
        <div id='tableProductByStock'></div>
        <div id='tableProductByPrice'></div>
        <div class="clear"></div>
        <div id='pieProductByAuthor'></div>
        <div id='pieProductByPublisher'></div>
        <div id='tableProductByAuthor'></div>
        <div id='tableProductByPublisher'></div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>