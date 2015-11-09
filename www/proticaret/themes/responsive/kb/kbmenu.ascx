<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.kbmenu" EnableViewState="False" Codebehind="kbmenu.ascx.vb"%>
<div id="kbmenu" class="module">
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
<script type="text/javascript" src="<% =getThemePath() %>/js/jquery.treeview.js"></script>
<link type="text/css" href="<% =getThemePath() %>/css/jquery.treeview.css" rel="stylesheet" />
<div>
<ul id="kb_menu" class="treeview" runat="server"></ul>
<div class="clear"></div>
</div>
</div>
</div>
<script type="text/javascript">
 $(document).ready(function(){
    $(".treeview").treeview();
  });
</script>