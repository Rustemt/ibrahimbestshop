<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.sizecartpopup" Codebehind="sizecartpopup.ascx.vb" EnableViewState="False" %>
<div id="sizecartpopup" class="module">
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
        	<asp:label id="lblDetails" runat="server"></asp:label>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
   
