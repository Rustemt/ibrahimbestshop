<%@ Control Inherits="ASPNetPortal.SiteMaps" language="vb" AutoEventWireup="false" Codebehind="SiteMaps.ascx.vb" %>
<div class="pageSiteMaps">
    <div class="alert alert-info">
    <%=GetGlobalResourceObject("admin", "SiteMapMsg1")%> <br/> <%=GetGlobalResourceObject("admin", "SiteMapMsg2")%> 
    <a target="_blank" class="textRed" href='http://www.google.com/webmasters/sitemaps/ping?sitemap=<%=BaseUrl %>/sitemapseo.aspx'><%=GetGlobalResourceObject("admin", "SiteMapMsg3")%> </a>
    </div>
    
    <div class="alert">
    <%=GetGlobalResourceObject("admin", "SiteMapMsg4")%>
    <a target="_blank" class="textRed" href="http://www.google.com.tr/support/webmasters/bin/topic.py?topic=8476"><%=GetGlobalResourceObject("admin", "SiteMapMsg3")%></a>
    </div>
</div>