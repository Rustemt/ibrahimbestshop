
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" %>

<div id="sample" class="module">
    <div id="module_content">
    <% if HeaderVisible then %>
    <div id="module_title">
        <span>
        <span id="module_title_icon"></span> <%=ModuleTitle%>
        <% if IsEditable then %>
        <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
        <% end if %>
        </span>
    </div>
    <% end if %>
    <div>
    <p> Bu Modül Kaldýrýlmýþtýr.</p>
    </div>
</div>
</div>