<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PlasiyerCiroYil.ascx.vb" Inherits=".PlasiyerCiroYil" %>
<div class="pagePlasiyerCiroYil">
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
							<label><asp:Label ID="lblArea" runat="server" Text="<%$ Resources:admin,SelectSalesArea %>"></asp:Label></label>
							<asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
						<div class="col">
							<label><asp:Label ID="lblPlace" runat="server" Text="<%$ Resources:admin,SelectSalesPlaces %>"></asp:Label></label>
							<asp:DropDownList ID="ddlPlace" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
						<div class="col">
							<label><asp:Label ID="lblGroup" runat="server" Text="<%$ Resources:admin,SelectSalesGroup %>"></asp:Label></label>
							<asp:DropDownList ID="ddlgroup" runat="server" AutoPostBack="true"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<asp:Label ID="lblScript" runat="server" />
	<div id="cyrusTotalYear"></div>
	<div id="cyrusTotalYearTable"></div>
</div>
