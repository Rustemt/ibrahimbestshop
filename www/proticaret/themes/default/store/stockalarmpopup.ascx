<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.stockalarmpopup" Codebehind="stockalarmpopup.ascx.vb" EnableViewState="False" %>
<div id="stockalarmpopup" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div>
<div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "StockAlarmMsg1")%></div>
<label><asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("lang", "StockAlarmMsg2")%></asp:Label></label>
<asp:DataGrid ID="MyList" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="600px" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
<Columns>
<asp:TemplateColumn Visible="False">
<ItemTemplate>
<asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:lang, ProductCode%>">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink2" runat="server" Text='<%# container.dataitem("ProductCode")  %>' >
</asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName")  %>' Target="_blank" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
<ItemTemplate>
<asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim) * 1) & " " & CurrencySymbolRight %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Status%>">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink8" runat="server" NavigateUrl='<%# string.format("/store/AddToCart.aspx?ProductId={0}",container.dataitem("ProductId")) %>' Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>'><%=GetGlobalResourceObject("lang", "AddToCart")%></asp:HyperLink>
<asp:Label ID="Label17" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
</Columns>
</asp:DataGrid>
<label><a class="button" href="javascript:window.parent.location.href='/store/stockalarm.aspx';"><%=GetGlobalResourceObject("lang", "StockAlarmList")%></a></label>
</div>
</div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function (){
jQuery(window).bind("load", function () {
var frameWidth = jQuery(document).width();
var frameHeight = jQuery(document).height() + 20;
parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
});
});
</script>    
