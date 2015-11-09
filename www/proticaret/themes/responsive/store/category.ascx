<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.category" EnableViewState="False" Codebehind="category.ascx.vb"%>
<div id="category" class="module">
<% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <ul id="category_menu" class="main_menuv" runat="server"></ul>
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