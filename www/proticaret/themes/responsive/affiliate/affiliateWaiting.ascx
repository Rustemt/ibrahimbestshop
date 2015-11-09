<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateWaiting" Codebehind="AffiliateWaiting.ascx.vb" %>
<div id="affiliatewaiting" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
    	<div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "AffiliateMsg18")%></div>      
	</div>
</div>
