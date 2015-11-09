<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="companydefinitions.ascx.vb" Inherits="ASPNetPortal.companydefinitions" %>
<div class="pagePriceCompanyDefine">
	<div class="buttonGroup">
		<asp:HyperLink ID="hypaddnew" Text="Yeni Ekle" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="dgcompanylist" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="50" AutoGenerateColumns="False" AllowSorting="True">
			<Columns>
				<asp:BoundColumn DataField="CompanyId" Visible="false" HeaderText="IND"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="Firma Kodu">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/pricemanagement/companymanage/editcompany.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CompanyId") & "&MID=" & 0%> '><%#Eval("CompanyCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
				<asp:BoundColumn DataField="CompanyName" HeaderText="Firma Adı"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="D&#252;zenle" Visible="false">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" CssClass="btnDefault fancyContent" runat="Server" NavigateUrl='<%# "/admin/pricemanagement/companymanage/editcompany.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CompanyId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete"  Visible ='<%# IIf(DataBinder.Eval(Container.DataItem, "CompanyId") = 1, False, True)%>'><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>
