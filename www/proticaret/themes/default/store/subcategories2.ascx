<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SubCategories2" EnableViewState="False" Codebehind="subcategories2.ascx.vb" %>
<div id="SubCategories2" class="module">
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
<li><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" )%>'><%# DataBinder.Eval(Container.DataItem,"CatName") %></a></li>
<asp:Repeater ID="dlSubCat" runat="server" DataSource='<%# LoadSubCats(DataBinder.Eval(Container.DataItem,"CatId")) %>'>
<HeaderTemplate><ul></HeaderTemplate>
<footertemplate></ul></footertemplate>
<ItemTemplate>
<li style="list-style-type:none"><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %></a></li>
</ItemTemplate>
</asp:Repeater>
</ItemTemplate>
</asp:Repeater>
</div>
</div>
</div>