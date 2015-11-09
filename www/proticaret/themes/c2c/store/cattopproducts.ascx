<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CatTopProducts" EnableViewState="False" Codebehind="CatTopProducts.ascx.vb"%>
<div id="CatTopProducts" class="module">
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
<div style="text-align:center">
<asp:DataList ID="dlCatTopProducts" runat="server" Width="100%">
<ItemTemplate>
<a href="<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1)) %>" >
<img alt="" class="thumb" src="<%# BaseUrl & "/store/makethumb.aspx?file=" & container.dataitem("Path")%> &amp;intSize=125" /><br />
<%# container.dataitem("ProductName") %> </a>
<% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")="True" and HttpContext.Current.User.Identity.IsAuthenticated()) or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")<>"True" Then  %>
<br />
<%# CurrencySymbolLeft & " "  & formatCurDoviz(Container.DataItem("SatisFiyati") * Container.DataItem("Rate") / CurrencyRate) & " " & CurrencySymbolRight  & " + KDV"  %>  
<% end if %>
</ItemTemplate>
</asp:DataList>
<asp:HyperLink ID="lnkAll" runat="server"></asp:HyperLink>
</div>
</div>
</div>