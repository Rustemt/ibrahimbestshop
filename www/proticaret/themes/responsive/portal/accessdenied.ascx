<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.accessdenied" CodeBehind="accessdenied.ascx.vb" EnableViewState="False" %>
<div id="accessdenied" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
        <div>
            <div id="alert" runat="server" class="alert title2"><%=GetGlobalResourceObject("lang", "AccessDeniedMsg1")%></div>
            <label><a href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
        </div>
    </div>
</div>
