<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.branddetails" EnableViewState="False" Codebehind="branddetails.ascx.vb" %>
<div id="branddetails" class="module">
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
<div id="HtmlHolder" runat="server"></div>
</div>
</div>