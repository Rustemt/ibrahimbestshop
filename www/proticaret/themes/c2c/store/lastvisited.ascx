<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.lastvisited" EnableViewState="False" Codebehind="lastvisited.ascx.vb" %>
<div id="lastvisited" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
<div>
<asp:Repeater ID="rptLastVisited" runat="server">
<HeaderTemplate><ul class="thumb-list"></HeaderTemplate>
<FooterTemplate></ul></FooterTemplate>
<ItemTemplate>
<li>
<span class="thumb"><a href='<%# string.format(BaseUrl & "{0}" ,container.dataitem("ProductUrl").tostring) %>'><img alt="" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=50" %>' /></a></span>
<a href='<%# string.format(BaseUrl & "{0}" ,container.dataitem("ProductUrl").tostring) %>'><%# container.dataitem("ProductName") %></a>
</li>
<div class="clear"></div>
</ItemTemplate>
</asp:Repeater>

</div>
</div>
</div>