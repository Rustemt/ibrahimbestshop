<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.accessdenied" CodeBehind="accessdenied.ascx.vb" EnableViewState="False" %>
<div id="accessdenied" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "AccessDeniedMsg1")%></div>
            <label><a href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
        </div>
    </div>
</div>
