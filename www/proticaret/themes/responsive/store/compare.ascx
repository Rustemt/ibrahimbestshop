<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.compare" Codebehind="compare.ascx.vb" %>
<div id="compare" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <div id="ProductList" runat="server">
        <div id="info" runat="server" class="information title2"><%=GetGlobalResourceObject("lang", "CompareMsg1")%></div>
        <div id="alert" visible="false" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
        <div class="dataTable">
        <asp:DataGrid ID="MyList" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
        <Columns>
        <asp:BoundColumn Visible="False" DataField="CompareId"></asp:BoundColumn>
        <asp:TemplateColumn Visible="False">
        <HeaderStyle Width="0px"></HeaderStyle>
        <ItemTemplate>
        <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'>
        </asp:Label>
        </ItemTemplate>
        </asp:TemplateColumn>
        
        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductCode%>" Visible="True">
        <HeaderStyle Wrap="True"></HeaderStyle>
        <ItemTemplate>
        <asp:HyperLink ID="Hyperlink2" CssClass="buttonLink " runat="server" Text='<%# container.dataitem("ProductCode")  %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1))  %>'>
        </asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
        <HeaderStyle Wrap="False"></HeaderStyle>
        <ItemTemplate>
        <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName")  %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>'>
        </asp:HyperLink>
        </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Selection%>">
        <HeaderStyle Wrap="False" HorizontalAlign="center"></HeaderStyle>
        <ItemStyle HorizontalAlign="center"></ItemStyle>
        <ItemTemplate>
        <center>
        <asp:CheckBox ID="Compare" runat="server"></asp:CheckBox></center>
        </ItemTemplate>
        </asp:TemplateColumn>
        <asp:TemplateColumn HeaderStyle-HorizontalAlign="center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Delete%>">
        <ItemTemplate>
        <asp:LinkButton ID="lnkbtnDelete" CssClass="button iButton" runat="server" CausesValidation="false" CommandName="Delete"><i class="icon-trash"></i></asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateColumn>
        </Columns>
        <PagerStyle></PagerStyle>
        </asp:DataGrid>
        </div>
        </div>
        <asp:LinkButton ID="btnCompare" CssClass="button fRight" runat="server"><%=GetGlobalResourceObject("lang", "Compare")%></asp:LinkButton>
        
        <asp:DataList ID="dlGalery" runat="server" DataKeyField="ProductId" HorizontalAlign="center" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="0" EnableViewState="False">
       	 <itemstyle VerticalAlign="top"></itemstyle>
            <ItemTemplate>
            <div style="text-align:center;">
            <p>
            <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId"))  %>'>
            <asp:Image ID="Image1q" runat="server" BorderStyle="None" ToolTip='<%# container.dataitem("ProductName") %>' oncontextmenu='return false' ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=125" %>'></asp:Image></a>
            </p>
            <p>
            <asp:HyperLink ID="HyperLink5q" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId"))  %>' Text='<%# container.dataitem("ProductName")  %>'></asp:HyperLink>
            </p>
            <p>
            <asp:Label ID="Label36" runat="server" Text='<%# container.dataitem("MarKName") %>'></asp:Label>
            </p>
            <p>
            <asp:Label ID="Label42" runat="server" Text='<%# container.dataitem("Code14") %>'></asp:Label>
            </p>
            <p>
            <asp:Label ID="Label44" runat="server" Text='<%# container.dataitem("Code15") %>'></asp:Label>
            </p>
            <p>
            <asp:Label ID="Label5q" runat="server" Text='<%# container.dataitem("Description") %>'></asp:Label>
            </p>
            <p>
            <asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("lang", "PriceWithoutTax")%></asp:Label>
            </p>
            <p>
            <asp:Label ID="Label6" runat="server" Text='<%#  CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("SatisFiyati")/ CurrencyRate ) & " " & CurrencySymbolRight + GetGlobalResourceObject("lang", "PlusTax") %>'></asp:Label> 
            </p>
            <p>
            <asp:Label ID="Label10" runat="server" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>Size Özel</asp:Label>
            <asp:Label ID="Label12" runat="server" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>' Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim)) %>'></asp:Label>
            <asp:Label ID="Label32" runat="server" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>' Text='<%# container.dataitem("CurrencyName")%>'></asp:Label>
            <asp:Label ID="Label34" runat="server" Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>+ KDV</asp:Label>
            </p>
            <p>
            <asp:Label ID="Label13" runat="server"><%=GetGlobalResourceObject("lang", "IncludeTax")  %></asp:Label>
            <asp:Label ID="Label16" runat="server" Text='<%# CurrencySymbolLeft & " " & FormatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate") / CurrencyRate ,container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate"))) & " " & CurrencySymbolRight %>'></asp:Label>
            </p>
            <p>
            <asp:HyperLink ID="HyperLink4q" runat="server" NavigateUrl='<%# string.format("/store/AddToCart.aspx?ProductId={0}",container.dataitem("ProductId")) %>' ToolTip="Sepete Ekle" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>'></asp:HyperLink>
            <asp:Label ID="Label31" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
            </p>
            <p>
            <asp:HyperLink ID="Hyperlink9" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""instalments.aspx?PId=6&ProductId=" & container.dataitem("ProductId") & ""","""",""width=100,height=100,scrollbars=1,toolbar=0,status=1,resizable=1"")" %>'></asp:HyperLink>
            </p>
            <p>
            <asp:Label ID="Label7" runat="server" Text='<%# container.dataitem("Details") %>'></asp:Label>
            </p>
            </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>
