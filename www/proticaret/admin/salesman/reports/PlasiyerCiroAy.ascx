<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PlasiyerCiroAy.ascx.vb" Inherits=".PlasiyerCiroAy" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pagePlasiyerCiroAy">
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
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","Year") %></label>
							<asp:DropDownList runat="server" ID="ddlYear" AutoPostBack="true" ></asp:DropDownList>
							<asp:RequiredFieldValidator runat="server" ID="rqYear" ControlToValidate="ddlYear" ErrorMessage="Yıl Seçiniz" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<asp:Label ID="lblScript" runat="server" />
	<div id="cyrusTotalMonth"></div>
	<div id="cyrusTotalMonthTable"></div>
</div>
