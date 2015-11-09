<%@ Control Language="vb" Inherits="ASPNetPortal.HtmlModule" AutoEventWireup="false" Codebehind="htmlmodule.ascx.vb" EnableViewState="False" %>
<div id="htmlmodule" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
	<% if HeaderVisible then %>
    <div class="moduleContent"><div runat="server" id="HtmlHolder"></div></div>
    <% Else%>
    <div id="module_content2">
		<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" id="A1"><%=EditText %></a>
            <% end if %>
        </div>
        <% end if %>
        <div runat="server" id="HtmlHolder2"></div>
    </div>
    <% end if %>
</div>