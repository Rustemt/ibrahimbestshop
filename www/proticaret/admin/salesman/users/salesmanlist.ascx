<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="salesmanlist.ascx.vb" Inherits="ASPNetPortal.salesmanlist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageSalesmanList">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="hypAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddNew")%></asp:HyperLink>
	</div>
	
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
							<label><%=GetGlobalResourceObject("admin", "CompanyCode")%></label>
							<asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlCodeFilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%=GetGlobalResourceObject("admin", "UserName")%></label>
							<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlfilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%=GetGlobalResourceObject("admin", "Email")%></label>
							<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlemail" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%=GetGlobalResourceObject("admin", "FullName")%></label>
							<asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col4">
							<label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
						</div>
						<div class="col col4">
							<label><%=GetGlobalResourceObject("admin", "LoginDate")%></label>
							<ew:CalendarPopup ID="LTarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="LTarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
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
	
	<div class="dataTable">
		<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
			<Columns>
			<asp:BoundColumn DataField="UserId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
			<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,UserName %>">
			<ItemTemplate>
				<asp:HyperLink ID="hypdetay" runat="Server" Enabled="<%# detay%>"  CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><%# Eval("Name") %></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
			<asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
			<asp:BoundColumn DataField="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
			<asp:BoundColumn DataField="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
			<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,BillingAddress %>">
			<ItemTemplate>
				<asp:HyperLink ID="Hyperlink2" runat="Server"  CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditBilling.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><i class="fa fa-file-text-o"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,ShippingAddress %>">
			<ItemTemplate>
				<asp:HyperLink ID="Hyperlink3" runat="Server"  CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditShipping.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><i class="fa fa-file-text-o"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Sil">
			<ItemTemplate>
				<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# delete%>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
			</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
	
	<div class="dataCount">
		<ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
		</ul>
	</div>
</div>
