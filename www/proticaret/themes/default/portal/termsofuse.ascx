<%@ Control Language="vb" Inherits="ASPNetPortal.termsofuse" AutoEventWireup="false" Codebehind="termsofuse.ascx.vb" EnableViewState="False" %>
<div id="termsofuse" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<asp:Literal runat="server" ID="littermsofuse"></asp:Literal>
</div>
</div>
</div>