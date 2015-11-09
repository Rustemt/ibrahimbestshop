<%@ Control Language="C#" AutoEventWireup="true" CodeFile="allsuppliers.ascx.cs" Inherits="allsuppliers" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAllSuppliers">	
	<asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
	<ContentTemplate>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNewSup" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin", "AddUser")%></asp:HyperLink>
	</div>
	
	<div class="dataFilter boxToggle">
		<div class="toggleTitle toggleMini">
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#"><%= GetGlobalResourceObject("admin", "Filter")%></a></li> 
				</ul>
			</div>
			<div class="titleToggle"></div>
		</div>
		<div class="toggleContent">
			<div class="tabContent">
				<div class="tab">
					<div class="colGroup">
						<div class="col">
							<label><%= GetGlobalResourceObject("admin","Status") %></label>
							<asp:DropDownList ID="ddlStatus" runat="server" ToolTip="Duruma göre sorgulayın">
								<asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
							</asp:DropDownList>
						</div>
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
                            <label><%=GetGlobalResourceObject("admin", "Email")%></label>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="ddlemail" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
						<div class="col col4">
							<label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
							<ew:CalendarPopup ID="Tarih1" runat="server" Text=">" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="tarih2" runat="server" Text="<" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault" OnClick="btnSearch_Click"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</div>
	
	<div class="dataTable">
		<asp:DataGrid ID="gridSupps" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" Visible="true" OnItemDataBound="gridSupps_ItemDataBound" OnPageIndexChanged="gridSupps_PageIndexChanged" OnDeleteCommand="gridSupps_DeleteCommand" OnSortCommand="gridSupps_SortCommand" HeaderStyle-CssClass="title">
			<PagerStyle PageButtonCount="15" Mode="NumericPages" CssClass="dataPager" />
			<Columns>
				<asp:BoundColumn DataField="UserId" Visible="false" HeaderText="IND" SortExpression="SupplierId"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,UserName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" + DataBinder.Eval(Container.DataItem, "UserId") %> '><%#Eval("Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn> 
				<asp:BoundColumn DataField="FullName" Visible="true" HeaderText="<%$ Resources:admin,FullName %>" SortExpression="FullName"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyCode" Visible="true" HeaderText="<%$ Resources:admin,CompanyCode %>" SortExpression="CompanyCode"></asp:BoundColumn>
				<asp:BoundColumn DataField="EMail" Visible="true" HeaderText="<%$ Resources:admin,Email %>" SortExpression="EMail"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyName" Visible="true" HeaderText="<%$ Resources:admin,CompanyName %>" SortExpression="CompanyName"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,CreateDate %>" SortExpression="CreatedDate">
					<ItemTemplate>
						<%# Eval("CreatedDate") %>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,EditPermission %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:HyperLink ID="lnkEditPreviliges" runat="server" CssClass="btnIcon fancyContent" ><i class="fa fa-pencil"></i></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false" >
					<ItemTemplate>
						<asp:HyperLink ID="lnkDetail" runat="server" CssClass="btnIcon fancyContent" ><i class="fa fa-pencil"></i></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btnIcon" CommandName="Delete"><i class="fa fa-trash-o"></i> </asp:LinkButton>
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
	</ContentTemplate>
	</asp:UpdatePanel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
