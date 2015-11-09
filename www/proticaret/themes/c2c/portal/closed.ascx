<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.closed" Codebehind="closed.ascx.vb" EnableViewState="False" %>
<div id="closed" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
    <div>
    <div id="alert" class="alert"><%=GetGlobalResourceObject("lang", "ClosedMsg")%></div>
     
    </div>
</div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 