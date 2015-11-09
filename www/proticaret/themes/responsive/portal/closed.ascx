<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.closed" CodeBehind="closed.ascx.vb" EnableViewState="False" %>
<div id="closed" class="module" style="margin-top:20px;">
        <% If HeaderVisible Then%>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% If IsEditable Then%>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% End If%>
        </div>
        <% End If%>
        <div class="moduleContent moduleContentCol1 clearFix">
            <div id="alert" class="alert alert-info"><%=GetGlobalResourceObject("lang", "ClosedMsg")%></div>

        </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
