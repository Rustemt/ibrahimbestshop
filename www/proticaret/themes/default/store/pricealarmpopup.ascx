<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.pricealarmpopup" Codebehind="pricealarmpopup.ascx.vb" EnableViewState="False" %>
<div id="pricealarmpopup" class="module">
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
<div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "PriceAlarmMsg1")%></div>
<label><%=GetGlobalResourceObject("lang", "PriceAlarmMsg2")%></label>
<asp:DataGrid ID="MyList" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="600px" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
<Columns>
<asp:TemplateColumn Visible="False">
<ItemTemplate>
<asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:lang, ProductCode%>">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink2" runat="server" Text='<%# container.dataitem("ProductCode")  %>'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName")  %>'></asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn  HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
<ItemTemplate>
<asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & FormatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim) * 1)  & " " & CurrencySymbolRight %>'>
</asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Status%>">
<ItemTemplate>
<asp:Label ID="Label17" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
<asp:Label ID="Label1" runat="server" Visible='<%# (container.dataitem("StockQty")>1 or container.dataitem("SellNoneStock")="TRUE" ) %>'><%=GetGlobalResourceObject("lang", "InStockMsg")%></asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
</Columns>
</asp:DataGrid>
<label><a class="button" href="javascript:window.parent.location.href='/store/pricealarm.aspx';"><%=GetGlobalResourceObject("lang", "PriceAlarmList")%></a></label>
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