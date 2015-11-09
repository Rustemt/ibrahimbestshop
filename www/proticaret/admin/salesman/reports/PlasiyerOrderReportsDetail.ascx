<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PlasiyerOrderReportsDetail.ascx.vb" Inherits="ASPNetPortal.PlasiyerOrderReportsDetail" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pagePlasiyerOrderReportDetail">
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
							<ew:CalendarPopup ID="cpStartDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="..." DisableTextBoxEntry="False"></ew:CalendarPopup>
							<asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
							<ew:CalendarPopup ID="cpEndDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="..." DisableTextBoxEntry="False"></ew:CalendarPopup>
							<asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
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
	
    <div class="buttonGroup" id="report_button">
        <asp:Label ID="lblScriptOrderByDate" runat="server" />
        <asp:Label ID="lblScriptOrderByStatus" runat="server" />
        <asp:Label ID="lblScriptOrderByPayType" runat="server" />
        <asp:Label ID="lblScriptOrderByBank" runat="server" />
        <asp:Label ID="lblScriptOrderByCargo" runat="server" />
        <asp:Label ID="lblScriptOrderByCity" runat="server" />
        <asp:Button ID="btnDay" runat="server" Text="<%$ Resources:admin,Day %>" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnWeek" runat="server" Text="<%$ Resources:admin,Week %>" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnMonth" runat="server" Text="<%$ Resources:admin,Month %>" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnYear" runat="server" Text="<%$ Resources:admin,Year %>" CssClass="lightbox btnDefault" />
    </div>
    
    <div id="lineOrderByDate" class="user"></div>
    <div id="tableOrderByDate" class="daytable"></div>
    <div id="report_content">
        <div id="pieOrderByStatus"></div>
        <div id="tableOrderByStatus"></div>
        <div id="pieOrderByPayType"></div>
        <div id="tableOrderByPayType"></div>
        <div id="pieOrderByBank"></div>
        <div id="tableOrderByBank"></div>
        <div id="pieOrderByCargo"></div>
        <div id="tableOrderByCargo"></div>
        <div id="pieOrderByCity"></div>
        <div id="tableOrderByCity"></div>
    </div>
</div>