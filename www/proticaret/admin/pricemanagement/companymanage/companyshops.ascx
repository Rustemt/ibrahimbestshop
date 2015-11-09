<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="companyshops.ascx.vb" Inherits="ASPNetPortal.companyshops" %>
<div class="pagePriceCompanyShops">
	<div class="buttonGroup">
		<asp:HyperLink ID="hypaddnew" Text="Yeni Ekle" runat="server" CssClass="btnDefault fancyContent" ><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="dgcompanyshops" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="50" AutoGenerateColumns="False" AllowSorting="True">
			<Columns>
				<asp:BoundColumn DataField="ShopId" Visible="false" HeaderText="IND"></asp:BoundColumn>
                  <asp:TemplateColumn HeaderText="Satış Yeri Kodu">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/pricemanagement/companymanage/editshops.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ShopId") & "&MID=" & 0 %> '><%#Eval("ShopCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:BoundColumn DataField="ShopName" HeaderText="Satış Yeri Adı"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyName" HeaderText="Bağlı Olduğu Firma"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="D&#252;zenle" Visible="false">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" CssClass="btnIcon fancyContent" runat="Server" NavigateUrl='<%# "/admin/pricemanagement/companymanage/editshops.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ShopId") & "&MID=" & 0 %> '><i class="fa fa-pencil"></i><%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server"  CssClass="btnIcon" CausesValidation="false" CommandName="Delete" Visible ='<%# IIf(DataBinder.Eval(Container.DataItem, "ShopId") = 1, False, True)%>'><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>
