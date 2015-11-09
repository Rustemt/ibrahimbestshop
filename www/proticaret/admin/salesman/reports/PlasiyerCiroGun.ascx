<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PlasiyerCiroGun.ascx.vb" Inherits=".PlasiyerCiroGun" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pagePlasiyerCiroGun">
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
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","SelectSalesArea") %>:</label>
							<asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","SelectSalesPlaces") %>:</label>
							<asp:DropDownList ID="ddlPlace" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","SelectSalesGroup") %>:</label>
							<asp:DropDownList ID="ddlgroup" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
						<div class="col col4">
							<label><%= GetGlobalResourceObject("admin","LogDate2") %> ></label>
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="..." DisableTextBoxEntry="False"></ew:CalendarPopup>
							<asp:RequiredFieldValidator runat="server" ID="rqTarih1" ControlToValidate="Tarih1" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
							<ew:CalendarPopup ID="Tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="..." DisableTextBoxEntry="False"></ew:CalendarPopup>
							<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="Tarih11" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<asp:Label ID="lblScript" runat="server" />
	<div id="cyrusTotalDay"></div>
	<div id="cyrusTotalDayTable"></div>
</div>
