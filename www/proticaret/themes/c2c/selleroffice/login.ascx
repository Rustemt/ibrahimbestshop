<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="login.ascx.vb" Inherits="ASPNetPortal.loginsellerascx" %>

<div id="login" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent loginContainer radius5 clearFix">
        <div class="moduleContentCol2 loginLeft radius5">
            <div class="title3 moduleCol1">Mağaza Girişi</div>
            <div runat="server" id="login_form">
                <div id="alert" runat="server" class="alert title2">
                    <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label>
                </div>
                <fieldset>
                    <label class="moduleContentCol1"><%=GetGlobalResourceObject("lang", "Email")%></label>
                    <div class="textContent">
                        <asp:TextBox CssClass="moduleContentCol1" ID="txtemail" runat="server"></asp:TextBox>
                    </div>
                    <label class="moduleContentCol1"><%=GetGlobalResourceObject("lang", "Password") %></label>
                    <div class="passwordContent">
                        <asp:TextBox CssClass="moduleContentCol1" ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                    <label class="moduleContentCol1">
                        <span class="moduleCol1">
                            <asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></span></label>
                    <asp:Button ID="btnLogin" runat="server" Text="<%$ Resources:lang, LogIn1%>" CssClass="button moduleContentCol1" />
                    <label class="moduleContentCol1">
                        <asp:HyperLink CssClass="moduleCol4" ID="lnkRegister" runat="server" NavigateUrl="/selleroffice/register.aspx"><%=GetGlobalResourceObject("lang", "SignUp")%></asp:HyperLink>
                        <asp:HyperLink CssClass="moduleCol2" ID="lnkForgotPass" runat="server" NavigateUrl="/forgotpassword.aspx"><%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink>
                    </label>
                </fieldset>

            </div>
            <div runat="server" id="welcome">
                <fieldset>
                    <p>
                        <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                    </p>
                    <% If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                    <div id="dvlogout"><a href="/logoff.aspx" id="lnkLogoff"><%=GetGlobalResourceObject("lang", "LogOff1")%></a></div>

                    <% End If%>
                </fieldset>
            </div>
        </div>
        <div class="moduleContentCol2 loginRight radius5">
            <div class="title3 moduleCol1">Yeni Üyelik</div>
            <div class="moduleCol1"><a href="/selleroffice/register.aspx" class="button">Hemen Üye Ol</a></div>
            <div class="title3 moduleCol1">Facebook ile Bağlan</div>
            <div class="icerik moduleCol1">Eğer bir facebook hesabınız varsa, üyelik için gerekli bilgileri facebook hesabınızdan daha hızlı aktarabiliriz.</div>
            <div class="face-register-button moduleCol1">
                <% If ConfigurationManager.AppSettings("FaceBookActive") = "True" And Not HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                <div id="fb-root"></div>
                <script type="text/javascript">
                    //initializing API
                    window.fbAsyncInit = function () {
                        FB.init({ appId: '<%= ConfigurationManager.AppSettings("FaceBookApiId") %>', status: true, cookie: true, xfbml: true });
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
                                    window.parent.location.href = '/default.aspx';
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
                        <img src="<%=getThemePath()%>/images/facebook_login.png" /></a></label>

                <% End If%>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
