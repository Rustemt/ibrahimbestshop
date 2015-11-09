<%@ Control language="vb" Inherits="ASPNetPortal.Survey" AutoEventWireup="false" Codebehind="Survey.ascx.vb" %>
<div id="survey" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
	<div id="modulecontent" class="moduleContent survey" runat="server"></div>
</div>
