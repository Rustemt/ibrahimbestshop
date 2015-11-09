<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.categories" EnableViewState="False" Codebehind="categories.ascx.vb"%>
<%@ OutputCache Duration="1800" VaryByParam="none" %>
<div id="categoriesPage" class="module">
<% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
		<ul id="categories" class="categories clearFix" runat="server"></ul>
	</div>
</div>