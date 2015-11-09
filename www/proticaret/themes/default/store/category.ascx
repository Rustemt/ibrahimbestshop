<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.category" EnableViewState="False" Codebehind="category.ascx.vb"%>
<div id="category" class="module">
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
<div>
<ul id="category_menu" class="main_menuv" runat="server"></ul>
<div class="clear"></div>
</div>
</div>
</div>
<script type="text/javascript">
if ( $.browser.msie) {
$(function() {  
$('ul.main_menuv > li').smoothMenu({direction: 'vertical',dockId:'ui_smooth_menu_containerv'});
});
}
else
{
$('ul.main_menuv > li').smoothMenu({direction: 'vertical',dockId:'ui_smooth_menu_containerv'});
}
</script>