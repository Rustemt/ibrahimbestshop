<%@ Control Language="vb" AutoEventWireup="false" Inherits="ctablist1" Codebehind="ctablist.ascx.vb" %>
<div class="pageSupplierTabs">
	<asp:label id="msg" runat="server"></asp:label>
	<asp:Label ID="lblerr" runat="server"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:hyperlink id="lnkAddNew" runat="server" CssClass="btnDefault fancyContent">Yeni Ekle</asp:hyperlink>
	</div>
	<div class="dataTable">
	<asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
		<Columns>
			<asp:BoundColumn DataField="TabId" SortExpression="TabId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="TabName" SortExpression="TabName" HeaderText="Baþlýk"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Detay">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnDefault fancyContent" Text="<%$ Resources:admin,Detail %>" NavigateUrl='<%# "EditTab.aspx?IND=" & DataBinder.Eval(Container.DataItem, "TabId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "ProductId")%> '></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnDefault" CausesValidation="false" CommandName="Delete" Text="Sil"></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
		</Columns>        
	</asp:DataGrid>
	</div>
</div> 