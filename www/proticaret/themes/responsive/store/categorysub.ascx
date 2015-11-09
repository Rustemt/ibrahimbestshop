<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categorysub" EnableViewState="False" Codebehind="categorysub.ascx.vb" %>
<div id="categorysub" class="module">
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
<div id="categories_container">
<a id="lnkSelectedCategory" runat="server" href="#" />
<ul id="main_menu" runat="server"></ul>
</div>
</div>
</div>