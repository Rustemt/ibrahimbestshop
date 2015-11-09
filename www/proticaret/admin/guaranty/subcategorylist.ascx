<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="subcategorylist.ascx.vb" Inherits="subcategorylist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageSuppliers">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <contenttemplate>
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="Linkaddnewsubcategory" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"> </i> Yeni Alt Kategori Ekle</asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:GridView ID="GWSubCategoryList" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" ShowHeaderWhenEmpty="true"  HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
		<Columns>
			<asp:BoundField DataField="id" Visible="False" HeaderText="IND" SortExpression="id" ReadOnly="True" />
            <asp:TemplateField HeaderText="Alt Kategori Kodu" SortExpression="ServicesSubCategoryCode">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/editsubcategory.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("ServicesSubCategoryCode")%></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="ServicesSubCategoryName" HeaderText="Alt Kategori Adı" ReadOnly="True" SortExpression="ServicesSubCategoryName" />
			<asp:BoundField DataField="ServicesCategoryName" HeaderText="Kategori" ReadOnly="True" SortExpression="ServicesCategoryName" />
			<asp:BoundField DataField="ServicesSubCategoryInfo" HeaderText="Açıklama" SortExpression="ServicesSubCategoryInfo" />
			<asp:TemplateField HeaderText="Düzenle" Visible="False">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/guaranty/editsubcategory.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '> Düzenle </asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
		</asp:GridView>
	</div>
	<div class="dataCount">
		<ul>
			<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
			<li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
			<li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
		</ul>
	</div>
	</contenttemplate>
    </asp:UpdatePanel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
