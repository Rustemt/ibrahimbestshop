<%@ Control Language="vb" Inherits="ASPNetPortal.XmlModule" AutoEventWireup="false" Codebehind="xmlmodule.ascx.vb" EnableViewState="False" %>
<div id="xmlmodule" class="module">
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
<asp:Xml ID="xmlcontainer" runat="server" />
</div>
</div>
</div>