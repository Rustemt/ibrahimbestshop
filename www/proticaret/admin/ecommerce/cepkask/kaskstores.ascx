<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="kaskstores.ascx.vb" Inherits="ASPNetPortal.kaskstores" %>
<div class="pageKaskStores">
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Mağaza Ekle</asp:HyperLink>
	</div>
	
	<asp:UpdatePanel ID="pnlStoreList" runat="server" EnableViewState="true">
	<ContentTemplate>
		<div class="dataTable">
		<asp:DataGrid ID="gridStoreList" runat="server" GridLines="None" AllowPaging="True" PageSize="15" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="KaskStoreId" Enabled="true" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn DataField="KaskStoreId" HeaderText="Mağaza No" Visible="true"></asp:BoundColumn>
			<asp:BoundColumn DataField="KaskStoreName" HeaderText="Mağaza Adı" Visible="true"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Düzenle">
				<ItemTemplate>
					<asp:HyperLink ID="lnkEditStore" runat="server" CssClass="btnDefault" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/cepkask/AddStore.aspx?IND=" & DataBinder.Eval(Container.DataItem,"KaskStoreId") & ""","""",""width=550,height=650,scrollbars=1,toolbar=0,status=1,resizable=1"")" %>'>Düzenle</asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil">
				<ItemTemplate>
					<asp:LinkButton ID="btnDeleteStore" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil"></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
		</div>
		<div class="dataCount">
			<ul>
				<li>Toplam Kayıt: <asp:Label ID="lblTotalCount" runat="server"></asp:Label></li>
				<li>Toplam Sayfa: <asp:Label ID="lblTotalPage" runat="server"></asp:Label></li>
				<li>Geçerli Sayfa: <asp:Label ID="lblCurrentPage" runat="server"></asp:Label></li>
			</ul>
		</div>
	</ContentTemplate>
	</asp:UpdatePanel>
</div>