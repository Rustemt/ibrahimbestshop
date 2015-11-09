<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.facebookfooter" EnableViewState="False" Codebehind="footer.ascx.vb" %>
<div>
<div id="footer_content">
<p>
<%= Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyName")) %>
<%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyAddress")) %>
Tel: <%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyTel")) %>  
Email : <%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyEmail")) %>
</p>
<p>Yavuz E Ticaret Facebook Magazasi</p>
<p>© Copyright 2014 Tüm Haklarý Saklýdýr.</p>
</div>
<div id="footer_ref" runat="server" style="float:right"></div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
