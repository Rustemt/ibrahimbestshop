<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cMostSoldPruductCount.ascx.vb" Inherits="MostSoldPruductCount" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageReportsMost">

	<div class="dataFilter boxToggle">
		<div class="toggleTitle toggleMini">
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
				</ul>
			</div>
			<div class="titleToggle"></div>
		</div>
		<div class="toggleContent">
			<div class="tabContent">
				<div class="tab">
					<div class="colGroup">
						<div class="col col4">
							<label>Tarih</label>
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="Tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<asp:Label ID="lblScript" runat="server" />
	<asp:Label ID="lblProductCount" runat="server" Text="20" Visible="false" />
	<%-- Ürün sayısını değiştirmek için Text alanına rakam yazabilirsiniz--%>
	<div id='MostSoldPruductCount'></div>
	<div id='MostSoldPruductCountTable'></div>
</div>