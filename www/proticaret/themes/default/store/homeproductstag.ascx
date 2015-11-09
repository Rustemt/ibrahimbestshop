<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="homeproductstag" Codebehind="homeproductstag.ascx.vb" %>
<div id="producttags" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
<div id="tbltagListesi" runat="server">
<asp:DataGrid ID="dlList" runat="server" CellPadding="4" Width="100%" AutoGenerateColumns="false" AllowSorting="True" ShowFooter="False" EnableViewState="False" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
<Columns>
<asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND">
</asp:BoundColumn>
<asp:TemplateColumn ItemStyle-Width="80px" HeaderText="<%$ Resources:lang, Image%>" HeaderStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="center">
<ItemTemplate ><a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
<img alt="<%# container.dataitem("ProductName") %>" title="<%# container.dataitem("ProductName") %>" class="thumb" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60 %>' /></a> </ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductName%>" SortExpression="ProductName">
<ItemTemplate>
<asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'> </asp:HyperLink>
</ItemTemplate>
</asp:TemplateColumn>
<asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>" SortExpression="SatisFiyati">
<ItemTemplate>
<asp:Label id="Label38" runat="server" text='<%# formatCurDoviz(container.dataitem("SatisFiyati")) + " " + container.dataitem("CurrencyName") + GetGlobalResourceObject("lang", "PlusTax") %>'> </asp:Label> 
</ItemTemplate>
<FooterStyle Wrap="False"></FooterStyle>
</asp:TemplateColumn>
<%--<asp:TemplateColumn HeaderText="Size &#214;zel">
<HeaderStyle HorizontalAlign="Right"></HeaderStyle>
<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
<HeaderTemplate>
<asp:Label id="Label14" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>">Size Özel</asp:Label>
</HeaderTemplate>
<ItemTemplate>
<asp:Label id="Label7" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>" text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  %>'> </asp:Label>

<asp:Label id="Label15" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>" text='<%# container.dataitem("CurrencyName")%>'> </asp:Label>
</ItemTemplate>
</asp:TemplateColumn>--%>
<%--<asp:TemplateColumn Visible="false">
<HeaderStyle HorizontalAlign="center"></HeaderStyle>
<ItemStyle HorizontalAlign="center"></ItemStyle>
<ItemTemplate>
<asp:LinkButton ID="lnkAdd" runat="server" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' ToolTip="Sepete At" CausesValidation="False" CommandName="Add"> </asp:LinkButton>
<asp:Label ID="Label33" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' ToolTip="Bu ürün geçici bir süre temin edilememektedir!"> </asp:Label>
</ItemTemplate>
</asp:TemplateColumn>--%>
</Columns>
<PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" Position="TopAndBottom" PageButtonCount="15" Mode="NumericPages"></PagerStyle>
</asp:DataGrid>
<label><asp:Label ID="RecordsCount" runat="server"></asp:Label></label>
<label><asp:Label ID="PagingLabel" runat="server"></asp:Label></label>
<label><asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label></label>
</div>
</div>
</div>