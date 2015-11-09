<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categorydetails" EnableViewState="False" CodeBehind="categorydetails.ascx.vb" %>
<div id="categorydetails" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div id="HtmlHolder" runat="server"></div>
    </div>
</div>
