<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="Affiliateuserlist" CodeBehind="Affiliateuserlist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAffiliateuserlist">
    
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    
    <div class="buttonGroup">
    	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    
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
							<label><%=GetGlobalResourceObject("admin", "Affiliates")%></label>
							<asp:DropDownList ID="ddlAfiliate" runat="server" TabIndex="9">
								<asp:ListItem Selected="True" Value="-1">--T&#252;m&#252;--</asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="2"></asp:ListItem>
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
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text=">" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"> </ew:CalendarPopup>
							<ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text="<" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"> </ew:CalendarPopup>
						</div>
						<div class="col col4">
							<label><%=GetGlobalResourceObject("admin", "LoginDate")%> ></label>
							<ew:CalendarPopup ID="LTarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text=">" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"> </ew:CalendarPopup>
							<ew:CalendarPopup ID="LTarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text="<" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"> </ew:CalendarPopup>
						</div>
						<div class="col colAuto">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
				<div class="tab">Raporlar</div>
			</div>
		</div>
	</div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" AllowSorting="True">
            <Columns>
                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="<%$ Resources:admin,UserName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><%#Eval("Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>">
                    <ItemTemplate>
                        <asp:Label ID="lbldurumu" runat="Server" Text='<%# iif(DataBinder.Eval(Container.DataItem,"AffiliateStatus")=1,"Aktif","Onay Bekliyor") %> '></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="TotalOrders" SortExpression="TotalOrders" HeaderText="<%$ Resources:admin,TotalEarnings %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                <asp:BoundColumn DataField="TotalPayments" SortExpression="TotalPayments" HeaderText="<%$ Resources:admin,TotalPayments %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                <asp:BoundColumn DataField="TotalLeft" SortExpression="TotalLeft" HeaderText="<%$ Resources:admin,TotalBalance %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Payments %>" ItemStyle-Wrap="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink4x" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/Affiliate/EditAffiliatePayment.aspx?IND=0&UID=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><i class="fa fa-credit-card"></i> <%= GetGlobalResourceObject("admin","PaymentsAdd") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><i class="fa fa-user"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
        </asp:DataGrid>
    </div>
    
    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>