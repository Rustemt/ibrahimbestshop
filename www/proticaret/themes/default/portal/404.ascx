<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal._404" Codebehind="404.ascx.vb" EnableViewState="False" %>
<div id="404" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "PageNotFoundMsg")%></div>
<label><a href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
</div>
</div>
</div>