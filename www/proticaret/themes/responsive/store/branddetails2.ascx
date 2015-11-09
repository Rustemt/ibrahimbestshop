<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.branddetails2" EnableViewState="False" Codebehind="branddetails2.ascx.vb" %>
<div id="branddetails2" class="module">
   <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
    	<div id="HtmlHolder2" runat="server"></div>
    </div>
</div>