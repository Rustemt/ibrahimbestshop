<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SubCategories" EnableViewState="False" Codebehind="subcategories.ascx.vb" %>
<div id="SubCategories" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<style type="text/css">
.sub_categories li{
list-style-type:none;
margin:0px;
padding:0px;
margin-right:5px;
}
</style>
<p>
<asp:Repeater ID="dl" runat="server">
<ItemTemplate>
<span><a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'><%# DataBinder.Eval(Container.DataItem,"CatName") %></a></span>
</ItemTemplate>
<SeparatorTemplate><a>/</a></SeparatorTemplate>
</asp:Repeater>
</p>
<asp:DataList ID="dlSubCat" runat="server" HorizontalAlign="center" RepeatColumns="3" CssClass="sub_categories">
<HeaderTemplate><ul></HeaderTemplate>
<footertemplate></ul></footertemplate>
<ItemTemplate>
<li><asp:HyperLink ID="hlMark" runat="server" Text='<%# container.dataitem("CatName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif (Request.QueryString("tabId") <> "","?tabId=" & Request.QueryString("tabId"),"" ) %>'></asp:HyperLink></li>
</ItemTemplate>
</asp:DataList>
<label>
<asp:Label ID="TotalMessages" runat="server" Visible="False"></asp:Label>
<asp:Label ID="RecordsCount" runat="server" Visible="False"></asp:Label>
<asp:Label ID="PagingLabel" runat="server"></asp:Label>
</label>
</div>
</div>
</div>