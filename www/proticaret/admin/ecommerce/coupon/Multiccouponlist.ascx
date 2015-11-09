<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Multiccouponlist.ascx.vb" Inherits="ASPNetPortal.Multiccouponlist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageCouponMultiList">    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
        	<asp:Label ID="lblSort" runat="server" Visible="False">CouponId</asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            
        	<div class="buttonGroup">
            	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
                <div class="fRight">
					<asp:Label ID="lblDiscount" runat="server" CssClass="btnDesc"></asp:Label>
					<asp:HyperLink ID="lnkEditLimit" runat="server" data-width="500" data-height="200" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
				</div>
            </div>
           
            <div class="dataFilter boxToggle">
				<div class="toggleTitle toggleMini">
					<div class="titleTab">
						<ul class="tabMenu">
							<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
						</ul>
					</div>
					<div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
				</div>
				<div class="toggleContent">
					<div class="tabContent">
						<div class="tab">
							<div class="colGroup">
								<div class="col col2">
									<label><%=GetGlobalResourceObject("admin", "CouponCode")%></label>
									<asp:TextBox ID="txtCouponCode" runat="server"></asp:TextBox>
									<asp:DropDownList ID="ddlCodeFilter" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col col2">
									<label><%=GetGlobalResourceObject("admin", "UserName")%></label>
									<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
									<asp:DropDownList ID="ddlUserFilter" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label><%=GetGlobalResourceObject("admin", "Status")%></label>
									<asp:DropDownList ID="ddlIsActive" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label><%=GetGlobalResourceObject("admin", "CouponStatus")%></label>
									<asp:DropDownList ID="ddlIsUsed" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,CouponUsed %>" Value="1"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,CouponUnused %>" Value="0"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col col4">
									<label><%=GetGlobalResourceObject("admin", "GiftVoucherAmount")%></label>
									<ew:NumericBox ID="txtDiscount1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right"></ew:NumericBox>
									<input type="button" value=">" />
									<ew:NumericBox ID="txtDiscount2" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right"></ew:NumericBox>
									<input type="button" value="<" />
								</div>
                                <div class="col">
                                	<label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
							</div>
                            <div class="colGroup colGroupAdvanced">
                            	<div class="col col4">
									<label><%=GetGlobalResourceObject("admin", "ExpirationDate")%></label>
									<ew:CalendarPopup ID="txtEndDate1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text=">"></ew:CalendarPopup>
									<ew:CalendarPopup ID="txtEndDate2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text="<"></ew:CalendarPopup>
								</div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "CreateDate")%></label>
                                    <ew:CalendarPopup ID="txtCreatedDate1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text=">"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="txtCreatedDate2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text="<"></ew:CalendarPopup>
                                </div>
                            </div>
						</div>
						<div class="tab">Raporlar</div>
					</div>
				</div>
			</div>
            
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Left" ShowFooter="True">
                    <Columns>
                        <asp:BoundColumn DataField="CouponId" Visible="false" SortExpression="CouponId" HeaderText="IND"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="CouponCode" HeaderText="<%$ Resources:admin,CouponCode %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/coupon/pMultiCoupon.aspx?IND=" & DataBinder.Eval(Container.DataItem,"CouponId") &  "" %> '><%#Eval("CouponCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>" SortExpression="FullName"></asp:BoundColumn>
                        <asp:BoundColumn DataField="IsActive" HeaderText="<%$ Resources:admin,Active %>" SortExpression="IsActive"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Discount" HeaderText="<%$ Resources:admin,GiftVoucherAmount %>" SortExpression="Discount"></asp:BoundColumn>
                        <asp:BoundColumn DataField="KargoStatus" HeaderText="<%$ Resources:admin,ShippingStatus %>" SortExpression="KargoStatus"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MinPrice" HeaderText="<%$ Resources:admin,MinimumItemAmount %>" SortExpression="MinPrice"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MaxUsageCount" HeaderText="<%$ Resources:admin,MaxUsageCount %>" SortExpression="MaxUsageCount"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TotalUsage" HeaderText="<%$ Resources:admin,TotalUsage %>" SortExpression="TotalUsage"></asp:BoundColumn>
                        <asp:BoundColumn DataField="PersonMaxUsageCount" HeaderText="<%$ Resources:admin,UsePerPerson %>" SortExpression="PersonMaxUsageCount"></asp:BoundColumn>
                       <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                         <asp:BoundColumn DataField="EndDate" HeaderText="<%$ Resources:admin,ExpirationDate %>" SortExpression="EndDate"></asp:BoundColumn>                        
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="hl1" Text="<%$ Resources:admin,Detail %>" CssClass="btnDefault fancyContent" runat="Server"  NavigateUrl='<%# "/admin/ecommerce/coupon/pMultiCoupon.aspx?IND=" & DataBinder.Eval(Container.DataItem,"CouponId") &  "" %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
                            <HeaderStyle Width="10px"></HeaderStyle>
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Silmek İçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                </asp:DataGrid>
            </div>
                
            <div class="buttonGroup">
                <asp:LinkButton ID="btnExport" runat="server" CssClass="btnDefault" Visible="False" Text="<%$ Resources:admin,ExportExcel %>"></asp:LinkButton>
                <asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
            </div>
            
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>