<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.sizecartpopup" Codebehind="sizecartpopup.ascx.vb" EnableViewState="False" %>
<div id="sizecartpopup" class="module">
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
<div>
<asp:label id="lblDetails" runat="server"></asp:label>
</div>
</div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
   
