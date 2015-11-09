<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cepkaskcalculate.ascx.vb" Inherits="ASPNetPortal.cepkaskcalculate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<style type="text/css">
    .style1
    {
        width: 17px;
    }
    .style2
    {
        width: 144px;
    }
</style>
<div id="closed" class="module">
<div id="module_content">
    <div id="cepKaskPanell" runat="server">

    <table cellpadding="2">
        <tbody>
            <tr>
                <td align="right" class="style2">Satın Alınan Mağaza</td>
                <td class="style1">:</td>
                <td><asp:DropDownList ID="ddlKaskStores" runat="server" Width="140px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" class="style2">Ürünün Markası</td>
                <td class="style1">:</td>
                <td><asp:DropDownList ID="ddlPMarks" runat="server" Width="140px"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right" class="style2">Fatura Tarihi</td>
                <td class="style1">:</td>
                <td><asp:Calendar ID="calenderovski" runat="server" Width="100px" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="150px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar></td>
            </tr>
            <tr>
                <td align="right" class="style2">Ürün Fatura Bedeli</td>
                <td class="style1">:</td>
                <td><asp:TextBox ID="txtKaskProductPrice" runat="server" Width="130px"></asp:TextBox><b>,</b><asp:TextBox ID="txtKaskZero" runat="server" Text="00" Width="15px" ReadOnly="true"></asp:TextBox> <b>TL</b></td>
            </tr>
            <tr>
                <td align="right" class="style2">&nbsp;</td>
                <td class="style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">&nbsp;</td>
                <td class="style1">&nbsp;</td>
                <td><asp:Button ID="btnCalcKask" runat="server" Text="Gün Hesapla" CssClass="button" />&nbsp;<asp:HyperLink ID="lnkNewOrder" runat="server" Enabled="false" CssClass="cartbutton" Text="Satın Al"></asp:HyperLink></td>
            </tr>
        </tbody>
    </table>

    <div id="alert" class="alert" runat="server" visible="false">
        <asp:Label ID="lblKaskMessage" runat="server" Visible="false"></asp:Label>
    </div>
     
    </div>
</div>
</div>
<script type="text/javascript" src="<%=getThemePath() %>/js/rendermodules.js"></script>
<%--<script type="text/javascript" src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        $("#txtFTarih").datepicker();
    });
</script>--%>