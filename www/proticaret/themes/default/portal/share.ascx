<%@ Control Language="VB" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False" %>
<div id="share" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div class="clear"></div>
<script runat="server" type="text/VB"> 
    'post bilgileri
    Dim AffiliateUrl As String = IIf(PortalSecurity.IsInRole("Satýþ Ortaklarý"), IIf(System.Web.HttpContext.Current.Request.RawUrl.Contains("?"), "&AffiliateId=" & GetShoppingCartId(), IIf(System.Web.HttpContext.Current.Request.RawUrl.EndsWith(".aspx"), "?AffiliateId=" & GetShoppingCartId(), "/?AffiliateId=" & GetShoppingCartId())), "")
    Private strPostURL As String = System.Web.HttpUtility.UrlEncode("http://" & System.Web.HttpContext.Current.Request.Url.DnsSafeHost & System.Web.HttpContext.Current.Request.RawUrl & AffiliateUrl)
Private strPostTitle As String = System.Web.HttpUtility.UrlEncode(IIf(_portalsettings.ActiveTab.title = "", BaseUrl, _portalsettings.ActiveTab.title))
'kullanýlanlar
    Private strFacebookLink As String = "<a rel=""nofollow"" href=""http://www.facebook.com/sharer.php?t=" & strPostTitle & "&amp;u=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/facebook_24.png"" style=""border: 0;"" alt=""facebook'ta paylaþ"" /></a>"
    Private strGoogleLink As String = "<a rel=""nofollow"" href=""http://www.google.com/bookmarks/mark?op=edit&amp;bkmk=" & strPostURL & "&amp;title=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/google_24.jpg"" style=""border: 0;"" alt=""google favorilerime ekle"" /></a>"
    Private strTwitterLink As String = "<a rel=""nofollow"" href=""http://twitter.com/home?status=" & strPostTitle & " " & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/twitter_24.png"" style=""border: 0;"" alt=""twitter'da paylaþ"" /></a>"
    Private strFriendfeedLink As String = "<a rel=""nofollow"" href=""http://friendfeed.com/?url=" & strPostURL & "&amp;title=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/friendfeed_24.png"" style=""border: 0;"" alt=""friendfeed'de paylaþ"" /></a>"
    Private strMyspaceLink As String = "<a rel=""nofollow"" href=""http://www.myspace.com/Modules/PostTo/Pages/?u=" & strPostURL & "&amp;t=" & strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/myspace_24.png"" style=""border: 0;"" alt=""myspace'te paylaþ"" /></a>"
    Private strDiggLink As String = "<a rel=""nofollow"" href=""http://digg.com/submit?phase=2&amp;url=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/digg_24.png"" style=""border: 0;"" alt=""Digg'e ekle"" /></a>"
    Private strDeliciousLink As String = "<a rel=""nofollow"" href=""http://del.icio.us/post?url=" & strPostURL & "&amp;title=" + strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/delicious_24.png"" style=""border: 0;""  alt=""Delicious'a ekle"" /></a>"
    Private strStumbleuponLink As String = "<a rel=""nofollow"" href=""http://www.stumbleupon.com/submit?url=" & strPostURL & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/stumbleupon_24.png"" style=""border: 0;""  alt=""Stumbleupon'da paylaþ"" /></a>"
    Private strRedditLink As String = "<a rel=""nofollow"" href=""http://reddit.com/submit?url=" & strPostURL & "&amp;title=" + strPostTitle & """ target=""_blank""><img width=""24"" src=""" & getThemePath() & "/images/social/reddit_24.png"" style=""border: 0;""  alt=""reddit'e ekle"" /></a>"
</script>
<div id="share-content">
<%=strFacebookLink%>
<%=strGoogleLink%>
<%=strTwitterLink %>
<%=strFriendfeedLink %>
<%=strMyspaceLink %>
<%= strDiggLink %>
<%= strDeliciousLink %>
<%= strStumbleuponLink %>
<%= strRedditLink %>

</div>
<div class="clear"></div>
</div>
</div>