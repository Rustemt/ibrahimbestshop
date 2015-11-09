<%@ Control Inherits="ASPNetPortal.ModuleDefs" Language="vb" AutoEventWireup="false" CodeBehind="ModuleDefs.ascx.vb" %>
<div id="pageDefs">
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent" Text="<%$ Resources:admin,AddNew %>"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	
	<div class="dataTable">
	<asp:DataGrid ID="mdlList" runat="server" GridLines="None" AutoGenerateColumns="false" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
		<Columns>
			<asp:BoundColumn DataField="ModuleDefId" Visible="false"></asp:BoundColumn>
             <asp:TemplateColumn HeaderText="<%$ Resources:admin,ModuleName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/cms/moduledefinitions.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ModuleDefId") & "&MID=" & 0%> '><%#Eval("FriendlyName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/cms/moduledefinitions.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ModuleDefId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"  ><i class="fa fa-trash-o"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
		</Columns>
	</asp:DataGrid>
	</div>
</div>
