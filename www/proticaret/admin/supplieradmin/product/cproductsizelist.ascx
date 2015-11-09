<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="cproductsizelist1" Codebehind="cproductsizelist.ascx.vb" %>
<div class="pageSupplierSizes">
	<asp:label id="msg" runat="server"></asp:label>
	<asp:label id="lblerr" runat="server"></asp:label>
	<asp:label id="lblSort" runat="server" Visible="False"></asp:label>
	<asp:label id="lbl" runat="server" Visible="False"></asp:label>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent">Yeni Ekle</asp:hyperlink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" ShowFooter="true" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn DataField="ProductSizeId" HeaderText="IND" Visible="false"></asp:BoundColumn>
			<%--
			<asp:TemplateColumn HeaderText="Stok Kodu">
				<ItemTemplate>
						<%#Container.DataItem("ProductCode")%>|<%#Container.DataItem("Size0Code")%>|<%#Container.DataItem("Size1Code")%>|<%#Container.DataItem("Size2Code")%>                        
				</ItemTemplate>
			</asp:TemplateColumn>
			--%>
			<asp:TemplateColumn HeaderText="Size0">
				<ItemTemplate>
					<%# container.dataitem("Size0Name") %>         
					<img alt="" border="0" height="16" src='<%# container.dataitem("Size0Path") %>'>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Ürün Resmi">
				<ItemTemplate> 
					<asp:Label ID="lblimage" runat="server" Visible="false" Text='<%#Eval("ProductImageId") %>'></asp:Label> 
					<asp:DropDownList ID="ddlimage" runat="server" DataSource="<%# dsImages %>" DataTextField="Path" DataValueField="ImageId"></asp:DropDownList>
					<span id="imgpre"></span>                             
					<%--<img alt="" border="0" height="16" src='<%# baseurl & "/uploads/productsimages/" & iif(DataBinder.Eval(Container.DataItem,"ProductImageId")=0,"image.gif",DataBinder.Eval(Container.DataItem,"ProductImagePath")) %>'>--%>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="Size1Name" HeaderText="Size1"></asp:BoundColumn>
			<asp:BoundColumn DataField="Size2Name" HeaderText="Size2"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Stok">
				<ItemTemplate>
					  <ew:NumericBox ID="txtEnvanter" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"StockQty")%> ' Width="25px" TextAlign="Right" DecimalPlaces="0"  DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Barkod">
				<ItemTemplate>
					<asp:TextBox ID="txtBarkod" runat="server" MaxLength="50" Text='<%# DataBinder.Eval(Container.DataItem,"Barcode")%>'></asp:TextBox>                     
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil">
				<ItemTemplate>
					<asp:CheckBox ID="chkdelete" runat="server" ToolTip="Silmek Ýçin Seçiniz."></asp:CheckBox>
				</ItemTemplate>
				<FooterTemplate>
					<input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete',this.checked);" /> Tümü
				</FooterTemplate>
			</asp:TemplateColumn>
			</Columns>
			<PagerStyle Visible="False" CssClass="dataPager" Mode="NumericPages"></PagerStyle>
		</asp:DataGrid>
	</div>
	<div class="buttonGroup">
		<asp:Button ID="btnUpdate" runat="server" CssClass="btnDefault" Text="Güncelle" />
		<asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="Sil" />
	</div>
</div> 
<script type="text/javascript"> 
$(document).ready(function(){

$('select[id$="ddlimage"]').each(function ()
{
    src = $("option:selected", this).text();    
    img = $('<img height="20" src="/uploads/productsimages/' + src + '"/>');
    $(this).next().empty().append(img);     
});

$('select[id$="ddlimage"]').each(function ()
{
$(this).bind("change", function() {
    src = $("option:selected", this).text();    
    img = $('<img height="20" src="/uploads/productsimages/' + src + '"/>');
    $(this).next().empty().append(img);    
});
});
}); 
</script>