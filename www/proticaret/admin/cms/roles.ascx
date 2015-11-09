<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="roles.ascx.vb" Inherits="ASPNetPortal.roles"%>
<div id="pageRoles">
	<div id="alert" runat="server" visible="false"  class="alert alert-info"><asp:Label ID="lblEror" runat="server" CssClass="textRed"></asp:Label></div>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server"  CssClass="btnDefault fancyContent" ><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	
	<div class="dataTable">
	<asp:DataGrid ID="rlList" runat="server" GridLines="None" AutoGenerateColumns="false" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
		<Columns>
			<asp:BoundColumn DataField="RoleId" ></asp:BoundColumn> 
             <asp:TemplateColumn HeaderText="<%$ Resources:admin,GroupName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/cms/editrole.aspx?IND=" & DataBinder.Eval(Container.DataItem, "RoleId") & "&MID=" & 0%> '><%#Eval("RoleName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,GroupUserEdit %>" ItemStyle-Width="250px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnIcon fancyContent"  NavigateUrl='<%# "/admin/cms/securityroles.aspx?IND=" & DataBinder.Eval(Container.DataItem, "RoleId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink2" runat="Server"  CssClass="btnIcon fancyContent"   NavigateUrl='<%# "/admin/cms/editrole.aspx?IND=" & DataBinder.Eval(Container.DataItem, "RoleId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" ItemStyle-Width="250px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" ><i class="fa fa-trash-o"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
		</Columns>
	</asp:DataGrid>
	</div>
</div> 