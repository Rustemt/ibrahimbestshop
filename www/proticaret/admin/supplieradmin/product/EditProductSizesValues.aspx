<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductSizesValues1" Codebehind="EditProductSizesValues.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Boyut Düzenle</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" style="width:800px;">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:label ID="lblheader" runat="server">Boyut Deðeri Düzenle</asp:label></div>
		</div>
		<div class="toggleContent">
			<div id="alert" runat="server" visible="false" class="alert alert-error">Ürün "Tekstil Formatýnda" deðil. Ürün detayýndan "Textil Formatý" seçiniz.</div>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:Label ID="lblmsg" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colThree">
						<label><asp:Label ID="lblSize0" runat="server"></asp:Label></label>
						<div id="box0" runat="server">
							<div class="dataTable">
							<asp:DataGrid ID="g0" runat="server" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" HeaderStyle-CssClass="title">
							<Columns>
								<asp:BoundColumn DataField="ProductSizeOptionsValueId" Visible="False" HeaderText="IND"></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="Ekle">
									<ItemTemplate>
										<asp:CheckBox ID="chkadd0" runat="server"></asp:CheckBox>
									</ItemTemplate>
									<FooterTemplate>
										<input id="chkAllItems" onclick="CheckAllDataGridCheckBoxes('chkadd0',this.checked);" type="checkbox"> Tümü 
									</FooterTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="SizeName">
									<ItemTemplate>
										<%#Container.DataItem("ProductSizeOptionsValueName")%>
										<img alt="" height="20" src='<%# container.dataitem("ProductSizeOptionsPath") %>'>
									</ItemTemplate>
								</asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="Ürün Resmi">
									<ItemTemplate>
									  <asp:DropDownList ID="ddlimage" DataSource="<%# dsImages %>" DataTextField="Path" DataValueField="ImageId" runat="server"></asp:DropDownList>
									 <span id="imgpre"></span>
									</ItemTemplate>
								</asp:TemplateColumn>                        
							</Columns>
							<PagerStyle CssClass="dataPager" Mode="NumericPages" Visible="False" />
							</asp:DataGrid>
							</div>
						</div>
					</div>
					<div class="colThree">
						<label><asp:Label ID="lblSize1" runat="server"></asp:Label></label>
						<div id="box1" runat="server">
							<div class="dataTable">
							<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" HeaderStyle-CssClass="title">
							<Columns>
							<asp:BoundColumn DataField="ProductSizeOptionsValueId" Visible="False" HeaderText="IND"></asp:BoundColumn>
							<asp:TemplateColumn HeaderText="Ekle">
								<ItemTemplate>
									<asp:CheckBox ID="chkadd1" runat="server"></asp:CheckBox>
								</ItemTemplate>
								<FooterTemplate>
									<input id="chkAllItems" onclick="CheckAllDataGridCheckBoxes('chkadd1',this.checked);" type="checkbox"> Tümü
								</FooterTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="SizeName">
								<ItemTemplate>
									<%#Container.DataItem("ProductSizeOptionsValueName")%>                            
								</ItemTemplate>
							</asp:TemplateColumn>                    
							</Columns>
							<PagerStyle CssClass="dataPager" Mode="NumericPages" Visible="False" />
							</asp:DataGrid>
							</div>
						</div>
					</div>
					<div class="colThree">
						<label><asp:Label ID="lblSize2" runat="server"></asp:Label></label>
						<div id="box2" runat="server">
							<div class="dataTable">
							<asp:DataGrid ID="g2" runat="server" GridLines="None" AutoGenerateColumns="False" ShowFooter="True" HeaderStyle-CssClass="title">
							<Columns>
							<asp:BoundColumn DataField="ProductSizeOptionsValueId" Visible="False" HeaderText="IND"></asp:BoundColumn>
							<asp:TemplateColumn HeaderText="Ekle">
								<ItemTemplate>
									<asp:CheckBox ID="chkadd2" runat="server"></asp:CheckBox>
								</ItemTemplate>
								<FooterTemplate>
									<input id="chkAllItems" onclick="CheckAllDataGridCheckBoxes('chkadd2',this.checked);" type="checkbox"> Tümü
								</FooterTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderText="SizeName">
								<ItemTemplate>
									<%#Container.DataItem("ProductSizeOptionsValueName")%>                            
								</ItemTemplate>
							</asp:TemplateColumn>                   
							</Columns>
							<PagerStyle CssClass="dataPager" Mode="NumericPages" Visible="False" />
							</asp:DataGrid>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="colThree colBtn">
						<label><asp:Label ID="lblsockqty" runat="server">Envanter : </asp:Label> </label>
						<ew:numericbox id="txtStockAdedi" runat="server" DecimalSign="," GroupingSeparator=" " textalign="Right">10</ew:numericbox>
						<asp:Button ID="btnEkle" runat="server" CssClass="btnDefault" Text="Ekle"></asp:Button>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
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
<script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
