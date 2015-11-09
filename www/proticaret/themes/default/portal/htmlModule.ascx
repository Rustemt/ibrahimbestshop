<%@ Control Language="vb" Inherits="ASPNetPortal.HtmlModule" AutoEventWireup="false" Codebehind="htmlmodule.ascx.vb" EnableViewState="False" %>
<div id="htmlmodule" class="module">
<% if HeaderVisible then %>
<div id="module_content">
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<div runat="server" id="HtmlHolder"></div>
</div>
<% Else%>

<div id="module_content2">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="Span1"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="A1"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div runat="server" id="HtmlHolder2"></div>
</div>

<% end if %>



</div>