<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.branddetails2" EnableViewState="False" Codebehind="branddetails2.ascx.vb" %>
<div id="branddetails2" class="module">
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
<div id="HtmlHolder2" runat="server"></div>
</div>
</div>