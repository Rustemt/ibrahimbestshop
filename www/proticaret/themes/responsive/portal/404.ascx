<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal._404" Codebehind="404.ascx.vb" EnableViewState="False" %>
<div id="404" class="module">
<div id="module_content">
<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
    	<div id="alert" runat="server" class="alert title2"><%=GetGlobalResourceObject("lang", "PageNotFoundMsg")%></div>
    	<label><a href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
	</div>
</div>