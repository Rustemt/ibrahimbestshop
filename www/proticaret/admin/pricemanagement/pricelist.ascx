<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="pricelist.ascx.vb" Inherits="ASPNetPortal.pricelist" %>
<div class="pagePriceList">
	<div class="buttonGroup">
		<asp:HyperLink ID="hypaddnew"   runat="server" CssClass="btnDefault fancyContent" ><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
    <div class="dataTable">
		<asp:DataGrid ID="dgpricelist" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="50"  AutoGenerateColumns="False" AllowSorting="True">
			<Columns>
				<asp:BoundColumn  DataField="PriceId" HeaderText="IND" Visible="false" ></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,PriceListTemplateName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/pricemanagement/editpricetemplete.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PriceId") & "&MID=" & 0%> '><%#Eval("PriceName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:BoundColumn DataField="PriceCode" HeaderText="<%$ Resources:admin,PriceListTemplateCode %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>">
					<ItemTemplate>
						<asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "Status")%>' ID="Checkbox3"></asp:CheckBox>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="StartDate" HeaderText="<%$ Resources:admin,StartDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
				<asp:BoundColumn DataField="EndDate" HeaderText="<%$ Resources:admin,EndDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="D&#252;zenle" Visible="false">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" CssClass="btnDefault fancyContent" runat="Server" NavigateUrl='<%# "/admin/pricemanagement/editpricetemplete.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PriceId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server"  CssClass="btnIcon" CausesValidation="false"  CommandName="Delete" Visible='<%# IIf(DataBinder.Eval(Container.DataItem, "PriceId") = 1, False, True)%>'><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns> 
		</asp:DataGrid>
	</div>
</div>
