<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="detailreports.ascx.vb" Inherits=".detailreports" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageSupportFreeDetailReports">
	<div id="report_container">
		<div class="dataFilter boxToggle">
			<div class="toggleTitle toggleMini">
				<div class="titleTab">
					<ul class="tabMenu">
						<li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li>
					</ul>
				</div>
				<div class="titleToggle"></div>
			</div>
			<div class="toggleContent">
				<div class="tabContent">
					<div class="tab">
						<div class="colGroup">
							<div class="col col4">
								<label><%= GetGlobalResourceObject("admin","LogDate2") %></label>
								<ew:CalendarPopup ID="cpStartDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
								<asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
								<ew:CalendarPopup ID="cpEndDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
								<asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
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
		
		<div class="buttonGroup" id="report_button">
			<asp:Label ID="lblScriptOrderByDate" runat="server" />
			<asp:Label ID="lblScriptOrderByHour" runat="server" />
			<asp:Label ID="lblScriptOrderByStatus" runat="server" />
			<asp:Label ID="lblScriptOrderByPayType" runat="server" />
			<asp:Button ID="btnDay" runat="server" Text="<%$ Resources:admin,Day %>" CssClass="lightbox btnDefault" />
			<asp:Button ID="btnWeek" runat="server" Text="<%$ Resources:admin,Week %>" CssClass="lightbox btnDefault" />
			<asp:Button ID="btnMonth" runat="server" Text="<%$ Resources:admin,Month %>" CssClass="lightbox btnDefault" />
			<asp:Button ID="btnYear" runat="server" Text="<%$ Resources:admin,Year %>" CssClass="lightbox btnDefault" />
		</div>
		
		<span><%= GetGlobalResourceObject("admin","DayTicketCount") %></span>
		<div id='lineOrderByDate' class="user"></div>
		<div id='tableOrderByDate' class="daytable"></div>
		
		<div class="dataFilter boxToggle">
			<div class="toggleTitle toggleMini">
				<div class="titleTab">
					<ul class="tabMenu">
						<li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li>
					</ul>
				</div>
				<div class="titleToggle"></div>
			</div>
			<div class="toggleContent">
				<div class="tabContent">
					<div class="tab">
						<div class="colGroup">
							<div class="col">
								<label><%= GetGlobalResourceObject("admin","Hour") %></label>
								<asp:DropDownList runat="server" ID="ddlstart">
									<asp:ListItem Text="<%$ Resources:admin,Select %>" Value="0" />
									<asp:ListItem Text="00:00" Value="00" />
									<asp:ListItem Text="01:00" Value="01" />
									<asp:ListItem Text="02:00" Value="02" />
									<asp:ListItem Text="03:00" Value="03" />
									<asp:ListItem Text="04:00" Value="04" />
									<asp:ListItem Text="05:00" Value="05" />
									<asp:ListItem Text="06:00" Value="06" />
									<asp:ListItem Text="07:00" Value="07" />
									<asp:ListItem Text="08:00" Value="08" />
									<asp:ListItem Text="09:00" Value="09" />
									<asp:ListItem Text="10:00" Value="10" />
									<asp:ListItem Text="11:00" Value="11" />
									<asp:ListItem Text="12:00" Value="12" />
									<asp:ListItem Text="13:00" Value="13" />
									<asp:ListItem Text="14:00" Value="14" />
									<asp:ListItem Text="15:00" Value="15" />
									<asp:ListItem Text="16:00" Value="16" />
									<asp:ListItem Text="17:00" Value="17" />
									<asp:ListItem Text="18:00" Value="18" />
									<asp:ListItem Text="19:00" Value="19" />
									<asp:ListItem Text="20:00" Value="20" />
									<asp:ListItem Text="21:00" Value="21" />
									<asp:ListItem Text="22:00" Value="22" />
									<asp:ListItem Text="23:00" Value="23" />
								</asp:DropDownList>
							</div>
							<div class="col">
								<label>&nbsp;</label>
								<asp:DropDownList runat="server" ID="ddlend">
									<asp:ListItem Text="<%$ Resources:admin,Select %>" Value="0" />
									<asp:ListItem Text="00:00" Value="00" />
									<asp:ListItem Text="01:00" Value="01" />
									<asp:ListItem Text="02:00" Value="02" />
									<asp:ListItem Text="03:00" Value="03" />
									<asp:ListItem Text="04:00" Value="04" />
									<asp:ListItem Text="05:00" Value="05" />
									<asp:ListItem Text="06:00" Value="06" />
									<asp:ListItem Text="07:00" Value="07" />
									<asp:ListItem Text="08:00" Value="08" />
									<asp:ListItem Text="09:00" Value="09" />
									<asp:ListItem Text="10:00" Value="10" />
									<asp:ListItem Text="11:00" Value="11" />
									<asp:ListItem Text="12:00" Value="12" />
									<asp:ListItem Text="13:00" Value="13" />
									<asp:ListItem Text="14:00" Value="14" />
									<asp:ListItem Text="15:00" Value="15" />
									<asp:ListItem Text="16:00" Value="16" />
									<asp:ListItem Text="17:00" Value="17" />
									<asp:ListItem Text="18:00" Value="18" />
									<asp:ListItem Text="19:00" Value="19" />
									<asp:ListItem Text="20:00" Value="20" />
									<asp:ListItem Text="21:00" Value="21" />
									<asp:ListItem Text="22:00" Value="22" />
									<asp:ListItem Text="23:00" Value="23" />
								</asp:DropDownList>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		
		<span><%= GetGlobalResourceObject("admin","ByHourTicketCount") %></span>
		<div id="lineOrderByHour" class="user"></div>
		<div id="tableOrderByHour" class="daytable"></div>
		
		<div id="report_content">
			<div id="box1">
				<span><%= GetGlobalResourceObject("admin","ByPersonnelTicketCount") %></span>
				<div id="pieOrderByStatus"></div>
				<div id="tableOrderByStatus"></div>
			</div>
			<div id="box2">
				<span><%= GetGlobalResourceObject("admin","ByPersonnelTotalTicketCount") %></span>
				<div id="pieOrderByBank"></div>
				<div id="tableOrderByBank"></div>
			</div>
		</div>
	</div>
</div>
