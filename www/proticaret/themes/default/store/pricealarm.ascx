<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.pricealarm" Codebehind="pricealarm.ascx.vb" %>

<div id="pricealarm" class="module">
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
<div id="pnlAlarmList" runat="server">
<label><%=GetGlobalResourceObject("lang", "PriceAlarmMsg2")%></label>
<label><%=GetGlobalResourceObject("lang", "PriceAlarmMsg3")%></label>
<asp:DataGrid ID="MyList" runat="server"  Width="100%" AutoGenerateColumns="False" CellPadding="4" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
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
<asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName")  %>' Target="_blank" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'>
</asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
<ItemTemplate>
<asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim) * 1)  & " " & CurrencySymbolRight%>'></asp:Label>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">
<ItemTemplate>
<asp:Label ID="Label17" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
<asp:HyperLink ID="Hyperlink8" CssClass="button" runat="server" NavigateUrl='<%# string.format("/store/AddToCart.aspx?ProductId={0}",container.dataitem("ProductId")) %>' Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>'><%=GetGlobalResourceObject("lang", "AddtoCart")%></asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Selection%>">
<ItemTemplate>
<asp:CheckBox ID="Remove" runat="server" ></asp:CheckBox></center>
</ItemTemplate>
</asp:TemplateColumn>
</Columns>
</asp:DataGrid>
<label style="text-align:right"><asp:LinkButton ID="lnkDelete" CssClass="button" runat="server" Text="<%$ Resources:lang, DeleteSelected%>"></asp:LinkButton></label>
</div>
<div id="pnlError" runat="server">
<div id="alert" runat="server" class="alert">
<%=GetGlobalResourceObject("lang", "PriceAlarmMsg4")%>
</div>
</div>
</div>
</div>
</div>