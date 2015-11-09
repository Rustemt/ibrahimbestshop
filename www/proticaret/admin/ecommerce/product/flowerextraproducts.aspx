<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="flowerextraproducts.aspx.vb" Inherits="ASPNetPortal.flowerextraproducts" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Extra Ürünler</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Extra Ürün Ekle</div>
		</div>
		<div class="toggleContent">
			<div id="tab_details_usages">
			<asp:Panel ID="TabContent4" runat="server">
				<asp:Label ID="lblErr" runat="server"></asp:Label>
				<div class="dataTable">
				<asp:DataList ID="dlGalery" runat="server" GridLines="None" DataKeyField="ProductId" RepeatColumns="4" RepeatDirection="Horizontal" HeaderStyle-CssClass="title">
				<ItemTemplate>
					<a href='<%# "javascript:window.top.location.href=""" & string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) & """;"  %>'>
					<asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=200" %>'></asp:Image>
					</a>
					
					<asp:HyperLink ID="hlProdName3a" runat="server" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# "javascript:window.top.location.href=""" & string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) & """;"  %>'></asp:HyperLink>
					<asp:CheckBox runat="server" ID="chkAdd" />
					
					<asp:Label ID="Label1" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("SatisFiyati")* container.dataitem("Rate") / CurrencyRate) + " " + CurrencySymbolRight + GetGlobalResourceObject("lang", "PlusTax") %>'></asp:Label>
					<asp:Label ID="Label2" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim)) &amp; " " &amp; container.dataitem("CurrencyName")  %>'></asp:Label>
				</ItemTemplate>
				</asp:DataList>
				</div>
				<div class="buttonGroup">
					<asp:Button ID="btnSpt" runat="server" CssClass="btnDefault" Text="Sepete Ekle" />
					<asp:Button ID="btnCancel" runat="server" Text="İptal/Kapat" CssClass="btnDefault" />
				</div>
			</asp:Panel>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>