<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.facebookheader" EnableViewState="False" Codebehind="header.ascx.vb" %>

<link rel="stylesheet" href="<% =getThemePath() %>/css/font/css/fontello.css">
<link rel="stylesheet" href="<% =getThemePath() %>/css/font/css/animation.css">

<%  If Not PortalSecurity.IsInRole("Yöneticiler") Then%>
<script type="text/javascript">
if (window==window.top) 
{
 window.parent.location.href='<% =ConfigurationManager.AppSettings("FaceBookStoreCanvasUrl") %>';
}
</script>
<% end if %>
<script type="text/javascript">
var UserName = '<%= UserName %>';
var UserFullName = '<%= UserFullName %>';
var IsLoggedIn = '<%= IsLoggedIn %>';
var BaseUrl = '<%= publicItems.BaseUrl %>';

function LigthFaceSearch(txt,btn)
{
var txt = document.getElementById(txt);
var url ='/facebook/productsearch.aspx?';
var btn = document.getElementById(btn);
if (txt.value.length > 2)
{
btn.style.cursor='wait';
txt.style.cursor='wait';
document.location.href=url + 'value='+ txt.value;
}
if (txt.value.length < 3)
{
alert('Arama Kriteri olarak en az üç harf girmelisiniz.');
}
}
</script>
<%  If ConfigurationManager.AppSettings("FaceBookStoreActive") = "True" Then%>
<div id="fb-root"></div>
<%  If ConfigurationManager.AppSettings("UseSsl") = "True" Then%>
<script src="https://connect.facebook.net/en_US/all.js" type="text/javascript"></script> 
<% else %>
<script src="http://connect.facebook.net/en_US/all.js" type="text/javascript"></script> 
<% end if %>
<script type="text/javascript">
    //initializing API
    FB.init({appId: '<% =ConfigurationManager.AppSettings("FaceBookApiId") %>', status: true, cookie: true, xfbml: true, oauth: true});
</script>
<% end if %>
 
<div id="header_content">
    <div id="logo"><a href="/facebook/default.aspx"><img src="<% =getThemePath() %>/images/logo-facebook.png" border="0" alt="logo" /></a></div>
    <div id="user_menu">
    <%  If ConfigurationManager.AppSettings("FaceBookStoreActive") = "True" And HttpContext.Current.User.Identity.IsAuthenticated() Then%>
    <div id="fb-image"></div>
     <script type="text/javascript">
        //resim
    FB.getLoginStatus(function(response) {
      if (response.status === 'connected') {  
        var uid = response.authResponse.userID;
        var accessToken = response.authResponse.accessToken;
        document.getElementById('fb-image').innerHTML = '<img src="' + document.location.protocol + '//graph.facebook.com/' + uid + '/picture" />';
      } else if (response.status === 'not_authorized') {
        
      } else {
        
      }
    });
    </script>
    <% end if %>
    <ul>
        <%If (IsLoggedIn) Then%>
        <li><a href="#">Hoşgeldin: <%=UserFullName%></a></li>
        <li><a href="<% =GetBaseUrl() %>/facebook/orderlist.aspx"><%=GetGlobalResourceObject("lang", "OrderList")%></a></li>
        <li><a href="<% =GetBaseUrl() %>/facebook/cart.aspx"><%=GetGlobalResourceObject("lang", "Basket")%></a></li>
        <li><a href="<% =GetBaseUrl() %>/facebook/contact.aspx"><%=GetGlobalResourceObject("lang", "ContactPage")%></a></li> 
        <% Else%>             
        <li><a href="<% =GetBaseUrl() %>/facebook/default.aspx"><%=GetGlobalResourceObject("lang", "MainPage")%></a></li>	
        <li><a href="<% =GetBaseUrl() %>/facebook/contact.aspx"><%=GetGlobalResourceObject("lang", "ContactPage")%></a></li>
        <% End If%>
    </ul>
    </div>
    
     <div id="user_menu" class="radius7">
            <asp:Repeater runat="server" ID="rptCurrency">
                <ItemTemplate>
                    <asp:LinkButton runat="server"  CausesValidation="false" ID="lnkCurrency" ToolTip='<%# Eval("CurrencyName") %>' CommandArgument='<%# Eval("CurrencyCode") %>'
                        Text=' <%# IIf(ChkNullString(Eval("CurrencySymbolLeft")=""),IIf(Eval("CurrencySymbolRight")="",Eval("CurrencyCode"),Eval("CurrencySymbolRight")),Eval("CurrencySymbolLeft")) %>'></asp:LinkButton> <a href="#">|</a>
                </ItemTemplate>
            </asp:Repeater>
        <div class="clear"></div>
	</div>
    <div class="clear"></div>
    <div id="nav" class="clearFix">
        <div id="menu">
            <a href="#" class="show-menu"><%=GetGlobalResourceObject("lang", "AllCategories2")%><span class="arrow"></span>
            <div class="all-menu"></div>
            </a>
            <script type="text/javascript">
            jQuery(document).ready(function (){
            $.ajax({
            url: "/services/categoryservicefb.aspx",
            context: document.body,
            success: function(data){
            $(".all-menu").html(data);
            }
            }); 
            });
            </script>
        </div>
        
        <div id="topmenu-search">
            <input name="txtSearch" type="text" id="txtSearch" title="Ürün Arama" class="search-fld" onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {LigthFaceSearch('txtSearch','btnSearch');return false;}} else {return true}; " onclick="this.value='';" onblur="this.value=!this.value?'Ürün Arama':this.value;" value="Ürün Arama" />
            <a id="btnSearch" class="search-btn" href="javascript:LigthFaceSearch('txtSearch','btnSearch');"></a>       
        </div>
    </div>
        
</div>
<div class="clear"></div>
<%  If ConfigurationManager.AppSettings("FaceBookStoreActive") = "True" And Not HttpContext.Current.User.Identity.IsAuthenticated() Then%>
<script type="text/javascript">
    //login
FB.getLoginStatus(function(response) {
  if (response.status === 'connected') {  
        FB.api('/me', function(response) {        
            if (response.id != null) {        
            ASPNetPortal.UserService.FbLogin(response.id,response.name,response.email, FbResponse);
            }
            else{
            window.parent.location.href='http://www.facebook.com';
            }         
        });    
  } else if (response.status === 'not_authorized') {
    top.location.href = 'https://www.facebook.com/dialog/oauth?client_id=<% =ConfigurationManager.AppSettings("FaceBookApiId") %>&scope=<% =iif(ConfigurationManager.AppSettings("FaceBookStorePermission")="","email",ConfigurationManager.AppSettings("FaceBookStorePermission")) %>&redirect_uri=' + '<% =ConfigurationManager.AppSettings("FaceBookStoreCanvasUrl") %>/';
  } else {
    top.location.href = 'https://www.facebook.com/dialog/oauth?client_id=<% =ConfigurationManager.AppSettings("FaceBookApiId") %>&scope=<% =iif(ConfigurationManager.AppSettings("FaceBookStorePermission")="","email",ConfigurationManager.AppSettings("FaceBookStorePermission")) %>&redirect_uri=' + '<% =ConfigurationManager.AppSettings("FaceBookStoreCanvasUrl") %>/';
  }
});

    function FbResponse(result)
    {    
        window.location.href=window.location.href;
    }   
</script>
<% end if %>