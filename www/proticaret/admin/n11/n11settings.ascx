<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="n11settings.ascx.vb" Inherits="ASPNetPortal.n11settings" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="n11MarketSettings">

    <asp:Label ID="lblmsg" runat="server"></asp:Label>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="<%$ Resources:admin,MarketSettingsMsg1 %>"></asp:ValidationSummary>

    <div class="dataForm">
        <div class="row">
            <div class="col1-3">
                <div class="row">
                    <div class="colOne">
                        <label>AppKey :</label>
                        <asp:TextBox ID="txtApiKey" Width="250" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                        <label>AppSecret :</label>
                        <asp:TextBox ID="txtAppSecret" Width="250" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                        <label><%=GetGlobalResourceObject("admin", "ProductCodeN11Tag")%> :</label>
                        <asp:CheckBox ID="chkn11tag" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="colOne">
                        <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault"><i class="fa fa-floppy-o"></i> <%=GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<h3><a href="#">2. Kargo - Ürün Durumu ve Fiyat Ayarları</a></h3>
	<div>
	<table cellpadding="2">
	<tr>
		<td align="right">Satış Başlangıç Tarihi :</td>
		<td>                            
			<ew:CalendarPopup runat="server" id="calDemo1" Nullable="True" ShowGoToToday="True" PopupLocation="Top" />
		</td>
	</tr>
	<tr>
		<td align="right">Satış Bitiş Tarihi :</td>
		<td>
			<ew:CalendarPopup ID="SalesStopDay" runat="server" Width="50px" CalendarLocation="Bottom"
					GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True"
					AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">">
				</ew:CalendarPopup>                                                           
		</td>
	</tr>
	<tr>
		<td align="right">Ürün Üretim Tarihi :</td>
		<td>
			<asp:TextBox ID="ProductionDate" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">Ürün Son Kullanma Tarihi :</td>
		<td>
			<asp:TextBox ID="ExpirationDate" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">Ürün Durumu :</td>
		<td>
			<asp:TextBox ID="ProductStatus" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">Ürünün Kargoya Verilme Süresi :</td>
		<td>
			<asp:TextBox ID="PreparingDay" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">Teslimat Şablonu :</td>
		<td>
			<asp:TextBox ID="ShipmentTemplate" runat="server"></asp:TextBox></td>
	</tr>                     
	<tr>
		<td align="right">Ürün Fiyati :</td>
		<td>
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">İndirim / İlave :</td>
		<td>
		   <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox> <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
	</tr>                                           
	</table>
	</div>
	<h3><a href="#">3. Kategori Ayarları</a></h3>
	<div>
	<table cellpadding="2">
	<tr>
		<td align="right">AppKey :</td>
		<td>
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
	</tr>
	<tr>
		<td align="right">AppSecret :</td>
		<td>
			<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</td>
	</tr>
	
	</table>
	</div>
    --%>
</div>
