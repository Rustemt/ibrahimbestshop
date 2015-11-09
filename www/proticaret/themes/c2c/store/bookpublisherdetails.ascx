<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.bookpublisherdetails" EnableViewState="False" Codebehind="bookpublisherdetails.ascx.vb" %>
<div id="bookpublisherdetails" class="module">
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
