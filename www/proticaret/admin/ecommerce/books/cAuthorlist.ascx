<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cAuthorlist" Codebehind="cAuthorlist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div page="pageAuthorlist">
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
        
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
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
								<div class="col col2">
									<label><%=GetGlobalResourceObject("admin", "AuthorName")%></label>
									<asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
									<asp:DropDownList ID="ddlfilter" runat="server">
									<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
									<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
									<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
									<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
									</asp:DropDownList> 
								</div>
								<div class="col">
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
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Left" ShowFooter="True">
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                    <Columns>
                        <asp:BoundColumn DataField="AuthorId" SortExpression="AuthorId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="AuthorName" SortExpression="AuthorName" HeaderText="<%$ Resources:admin,AuthorName %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/books/editauthor.aspx?IND=" & DataBinder.Eval(Container.DataItem,"AuthorId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-Width="100px">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkdelete" runat="server" ToolTip="<%$ Resources:admin,SelectToDelete %>"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete',this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>                
                </asp:DataGrid>
            </div>
            
            <div class="buttonGroup">
                <asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
                <asp:Label ID="Label1" runat="server" CssClass="btnDesc"><%=GetGlobalResourceObject("admin", "AuthorMsg1")%></asp:Label>
            </div>
            
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>