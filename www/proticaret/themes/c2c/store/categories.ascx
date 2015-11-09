<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categories" EnableViewState="False" Codebehind="categories.ascx.vb"%>
<%@ OutputCache Duration="1800" VaryByParam="none" %>
<div id="categories" class="module">
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
<div>
<ul id="categories" class="categories" runat="server"></ul>
<div class="clear"></div>
</div>
</div>
</div>
