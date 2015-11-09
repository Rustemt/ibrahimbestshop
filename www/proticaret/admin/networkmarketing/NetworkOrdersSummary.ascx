<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.NetworkOrdersSummary" CodeBehind="NetworkOrdersSummary.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageAffiliateOrders">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <contenttemplate>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
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
						<div class="col col2">
							<label><%= GetGlobalResourceObject("admin","UserName") %></label>
							<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlfilter" runat="server">
								<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%= GetGlobalResourceObject("admin","Email") %></label>
							<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlemail" runat="server">
								<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%= GetGlobalResourceObject("admin","FullName") %></label>
							<asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlFulnameFilter" runat="server">
								<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col4">
							<label><%= GetGlobalResourceObject("admin","OrderDate") %> ></label>
							<ew:CalendarPopup ID="Tarih1" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="tarih2" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>				
						</div>
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","SalesStatus") %></label>
							<asp:DropDownList ID="ddlStatus" runat="server" TabIndex="9">
								<asp:ListItem Text="<%$ Resources:admin,All %>" Selected="True" Value="-1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Approved %>" Value="1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="0"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Cancel %>" ></asp:ListItem>
							</asp:DropDownList>
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
	
	<div class="dataTable">
		<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="920" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<Columns>
				<asp:BoundColumn DataField="OrigId" SortExpression="OrigId" HeaderText="IND" Visible="False"></asp:BoundColumn>
				<asp:BoundColumn DataField="OrderId" SortExpression="OrderId" HeaderText="OrderId"></asp:BoundColumn>
				<asp:BoundColumn DataField="refer" SortExpression="refer" HeaderText="Referee"></asp:BoundColumn>
				<asp:BoundColumn DataField="refId" SortExpression="refId" HeaderText="Referee Id"></asp:BoundColumn>
				<asp:BoundColumn DataField="ownerUser" SortExpression="ownerUser" HeaderText="Owner"></asp:BoundColumn>
				<asp:BoundColumn DataField="origId" SortExpression="origId" HeaderText="Owner Id"></asp:BoundColumn>
				<asp:BoundColumn DataField="OrderId" HeaderText="<%$ Resources:admin,OrderId %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="ownerUser" SortExpression="ownerUser" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Orderdate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
				<asp:BoundColumn DataField="OrderDetailsSum" HeaderText="<%$ Resources:admin,OrderTotal %>" SortExpression="OrderTotal"></asp:BoundColumn>
				<asp:BoundColumn DataField="CommisionSum" HeaderText="<%$ Resources:admin,EarningSum %>" SortExpression="CommisionSum"></asp:BoundColumn>
			</Columns>
			<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
		</asp:DataGrid>
	</div>
	
	<div class="dataCount">
		<ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li> 
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
		</ul>
	</div>
	</contenttemplate>
    </asp:UpdatePanel>
</div>
