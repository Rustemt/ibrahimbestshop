<%@ Control Language="vb" Inherits="ASPNetPortal.orderstep1popup" AutoEventWireup="false" Codebehind="orderstep1popup.ascx.vb" %>
<div id="loginasguest" class="module">
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

<table width="100%">
<tr>
<td style="width:50%" valign="top">
<div runat="server" id="login_form">
	<div id="alert" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
	<fieldset>
	<label><%=GetGlobalResourceObject("lang", "Email")%></label>
	<asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
	<label><%=GetGlobalResourceObject("lang", "Password") %></label>
	<asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox><br />
	<label><asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></label>
	<asp:Button ID="btnLogin" runat="server" Text="<%$ Resources:lang, LogIn1%>" CssClass="button" />
		
	</fieldset>
	</div>
</td>
<td valign="top">
<%  If ConfigurationManager.AppSettings("OnlyUsersCanBuy") = "False" Then%>
<div runat="server" id="guest_form">
	<p><%=GetGlobalResourceObject("lang", "OrderStep1Msg1")%></p>
	<label>
	<a class="button" href="#" onclick="window.parent.location.href='<%=iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") %>/store/orderstep2.aspx';window.close();parent.$.fn.colorbox.close();"><%=GetGlobalResourceObject("lang", "LoginAsGuest")%></a>
		
	</label>	 
</div>
<div runat="server" id="seperator">
	<p><%=GetGlobalResourceObject("lang", "OrderStep1Msg3")%></p>		 
</div>
<% End If%>
<div runat="server" id="register_form" class="register_form">
	<p><%=GetGlobalResourceObject("lang", "OrderStep1Msg2")%></p>
	<label>
	<a class="button" href="#" onclick="window.parent.location.href='<%=iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") %>/register.aspx?ReturnUrl=<%=iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") %>/store/orderstep2.aspx';window.close();parent.$.fn.colorbox.close();"><%=GetGlobalResourceObject("lang", "RegisterButton")%></a>	
	</label>	
    <div id="face-register-button">
        <% If ConfigurationManager.AppSettings("FaceBookActive") = "True" And Not HttpContext.Current.User.Identity.IsAuthenticated() Then%>
            <div id="fb-root"></div>
            <script type="text/javascript">
                //initializing API
                window.fbAsyncInit = function () {
                    FB.init({ appId: '<% =ConfigurationManager.AppSettings("FaceBookApiId") %>', status: true, cookie: true, xfbml: true });
                };
                (function () {
                    var e = document.createElement('script'); e.async = true;
                    e.src = document.location.protocol +
                      '//connect.facebook.net/en_US/all.js';
                    document.getElementById('fb-root').appendChild(e);
                }());
            </script>
            <script type="text/javascript">
                function fblogin() {
                 FB.login(function (response) {
                     FB.api('/me', function (response) {
                         if (response.id != null) {
                             ASPNetPortal.UserService.FbLogin(response.id, response.name, response.email, FbResponse);
                             //  ASPNetPortal.UserService.funFbPost(response.id);
                         }
                         else {
                          
                         }
                     });
                 }, { perms: 'email,publish_stream,publish_actions,read_friendlists,offline_access' });
                }
                function FbResponse(result) {
                 window.location.reload();
                }
            </script>
            <br />
            <label>
                <a href="#" onclick="fblogin();return false;">
                    <img src="<%=getThemePath()%>/images/facebook_login_k.png" /></a></label><br />
    
            <% End If%>
    </div> 
</div>
</td>
</tr>
</table>
<script type="text/javascript">
	$("#<%= txtemail.ClientID %>").keyup(function(event){
	if(event.keyCode == 13){
	$("#<%= btnLogin.ClientID %>").click();
	return false;
	}
	});
	$("#<%= txtpassword.ClientID %>").keyup(function(event){
	if(event.keyCode == 13){
	$("#<%= btnLogin.ClientID %>").click();
	return false;
	}
	});
	</script>
</div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function (){
 jQuery(window).bind("load", function () {
 var frameWidth = jQuery(document).width();
 var frameHeight = jQuery(document).height() + 20;
 parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
 });
});
</script>