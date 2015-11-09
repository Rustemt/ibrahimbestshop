<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.producttags" Codebehind="producttags.ascx.vb" %>
<div id="producttags" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div><asp:Literal ID="tagslt" runat="server" ></asp:Literal></div>
</div>
</div>