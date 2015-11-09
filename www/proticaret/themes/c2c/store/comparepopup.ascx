<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.comparepopup" Codebehind="comparepopup.ascx.vb" %>
<div id="comparepopup" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent radius5 clearFix">
    <div>
    <div id="info" runat="server" class="title2"><%=GetGlobalResourceObject("lang", "CompareMsg2")%></div>
    <div id="alert" visible="false" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
    <asp:DataGrid ID="MyList" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="600px" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
    <Columns>
    <asp:BoundColumn Visible="False" DataField="CompareId"></asp:BoundColumn>
    <asp:TemplateColumn Visible="False">
    <HeaderStyle Width="0px"></HeaderStyle>
    <ItemTemplate>
    <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'> </asp:Label>
    </ItemTemplate>
    </asp:TemplateColumn>
    <%-- <asp:TemplateColumn HeaderText="Se&#231;im">
    <HeaderStyle Wrap="False" HorizontalAlign="center"></HeaderStyle>
    <ItemStyle HorizontalAlign="center"></ItemStyle>
    <ItemTemplate>
    <center>
    <asp:CheckBox ID="Compare" CssClass="Global_Normal_CheckBox" runat="server" ToolTip="Bu ürünü karþýlaþtýmak yapmak için alaný iþaretledikten sonra 'Karþýlaþtýr' Linkine týklayýnýz."></asp:CheckBox></center>
    </ItemTemplate>
    </asp:TemplateColumn>--%>
    
    <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:lang, ProductCode%>">
    <HeaderStyle Wrap="False"></HeaderStyle>
    <ItemTemplate>
    <asp:HyperLink ID="Hyperlink2" runat="server" Text='<%# container.dataitem("ProductCode")  %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1))  %>'> </asp:HyperLink>
    </ItemTemplate>
    </asp:TemplateColumn>
    
    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
    <HeaderStyle Wrap="False"></HeaderStyle>
    <ItemTemplate>
    <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName")  %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
    </ItemTemplate>
    </asp:TemplateColumn>
    <asp:TemplateColumn ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Delete%>">
    <ItemTemplate>
    <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
    </ItemTemplate>
    </asp:TemplateColumn>
    </Columns>
    <PagerStyle></PagerStyle>
    </asp:DataGrid>
    <p><a href="javascript:window.parent.location.href='/store/compare.aspx';window.close();parent.$.fn.colorbox.close();" class="button">
        <%=GetGlobalResourceObject("lang", "GoToCompareProductList")%>
    </a></p>
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