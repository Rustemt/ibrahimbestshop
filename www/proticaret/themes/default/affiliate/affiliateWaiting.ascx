<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateWaiting" Codebehind="AffiliateWaiting.ascx.vb" %>
<div id="affiliatewaiting" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
    <div>
    <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "AffiliateMsg18")%></div>      
</div>
</div>
</div>
