<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="companystorage.ascx.vb" Inherits="ASPNetPortal.companystorage" %>
<div id="pagePriceCompanyStorage">
	<div class="buttonGroup">
		<asp:HyperLink ID="hypaddnew" Text="Yeni Ekle" runat="server" CssClass="btnDefault fancyContent" ><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="dgcompanystorage" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="50" AutoGenerateColumns="False" AllowSorting="True">
			<Columns>
				<asp:BoundColumn DataField="StorageId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="Depo Kodu">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/pricemanagement/companymanage/editcompanystorage.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StorageId") & "&MID=" & 0%> '><%#Eval("StorageCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:BoundColumn DataField="StorageName" HeaderText="Depo Adı"></asp:BoundColumn>
				<asp:BoundColumn DataField="ShopName" HeaderText="Bağlı Olduğu Satış Yeri"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="D&#252;zenle" Visible="false">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" CssClass="btnIcon fancyContent" runat="Server" NavigateUrl='<%# "/admin/pricemanagement/companymanage/editcompanystorage.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StorageId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i><%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server"  CssClass="btnIcon" CausesValidation="false" CommandName="Delete" Visible='<%# IIf(DataBinder.Eval(Container.DataItem, "StorageId") = 1, False, True)%>'><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>
