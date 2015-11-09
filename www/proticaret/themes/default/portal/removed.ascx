<%@ Control Language="vb" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False" %>
<div id="productsearch" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span>
</div>
<% end if %>
<div>
<div class="alert">
<p>Bu modül kaldýrýlmýþtýr.</p>
</div>
</div>
</div>
</div>