<%@ Control Language="vb" Inherits="ASPNetPortal.MenuModule" AutoEventWireup="false" Codebehind="verticalMainMenu.ascx.vb" EnableViewState="False" %>
<div id="verticalmainmenu" class="module">
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
<script type="text/javascript" src="<% =getThemePath() %>/js/jquery.ui.smoothMenu.min.js"></script>
<link type="text/css" href="<% =getThemePath() %>/css/jquery-ui-smoothMenu.css" rel="stylesheet" />
<div id="main_menu_container">
<ul id="main_menu" class="main_menuv" runat="server"></ul>
</div>
</div>
</div>
<script type="text/javascript">
$(function() {
$('ul.main_menuv > li').smoothMenu({direction: 'vertical'});
});
</script>