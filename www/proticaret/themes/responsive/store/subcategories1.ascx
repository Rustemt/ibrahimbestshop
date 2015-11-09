<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SubCategories1" EnableViewState="False" Codebehind="subcategories1.ascx.vb" %>
<div id="SubCategories1" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<asp:Repeater ID="dl" runat="server">
<HeaderTemplate><ul></HeaderTemplate>
<footertemplate></ul></footertemplate>
<ItemTemplate>
<a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><span class="arrowreturn ui-icon ui-icon-arrowreturn-1-e"></span><%# DataBinder.Eval(Container.DataItem,"CatName") %></a>
</ItemTemplate>
</asp:Repeater>

<asp:DataList ID="dlSubCat" Width="100%" runat="server" RepeatColumns="1">
<ItemTemplate>
<li style="list-style-type:none"><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %></a></li>
</ItemTemplate>
</asp:DataList>
<div class="clear"></div>
</div>
</div>
</div>