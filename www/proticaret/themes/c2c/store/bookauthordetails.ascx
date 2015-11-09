<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.bookauthordetails" EnableViewState="False" Codebehind="bookauthordetails.ascx.vb" %>
<div id="bookauthordetails" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
    <div id="HtmlHolder" runat="server"></div>
    </div>
</div>
