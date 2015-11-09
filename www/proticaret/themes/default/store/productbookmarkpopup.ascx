<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="productbookmarkpopup.ascx.vb" Inherits="ASPNetPortal.productbookmarkpopupascx" %>

<div id="productbookmarkpopup" class="module">
	<% If HeaderVisible Then%>
    <div class="moduleTitle">
		<%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="editTitle"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div id="moduleContent">
    	<div id="info" runat="server" class="information title2">Ürün, sık aldıklarınıza eklendi</div>
        <div class="dataTable">
            <asp:DataGrid ID="MyList" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
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
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
                        <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%# FormatCurTL(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")),container.dataitem("Indirim")),UserIndirim) * 1)  %>'>
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
            <label><a class="button" href="javascript:window.parent.location.href='/store/productbookmark.aspx';">Sık Aldıklarım Listesi</a></label>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
