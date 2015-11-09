<%@ Control Language="vb" Inherits="ASPNetPortal.login" AutoEventWireup="false" CodeBehind="login.ascx.vb" %>

<div id="login" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent loginContainer radius5 clearFix">
        <div class="moduleContentCol2 loginLeft radius5">
        	<div class="title3 moduleCol1">Üye Giriþi</div>
            <div runat="server" id="login_form">
                <div id="alert" runat="server" class="alert title2">
                    <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label>
                </div>
                <fieldset>
                    <label class="moduleContentCol1"><%=GetGlobalResourceObject("lang", "Email")%></label>
                    <div class="textContent"><asp:TextBox CssClass="moduleContentCol1" ID="txtemail" runat="server"></asp:TextBox></div>
                    <label class="moduleContentCol1"><%=GetGlobalResourceObject("lang", "Password") %></label>
                    <div class="passwordContent"><asp:TextBox CssClass="moduleContentCol1" ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox></div>
                    <div class="moduleContentCol1">
                    	<label class="labelInput moduleContentCol2"><asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></label>
                        <label class="moduleContentCol2 forgotPass"><asp:HyperLink ID="lnkForgotPass" runat="server" NavigateUrl="/forgotpassword.aspx"><%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink></label>
                    </div>
                    <asp:Button ID="btnLogin" runat="server"  Text="<%$ Resources:lang, LogIn1%>" CssClass="button moduleContentCol1" />
                    <label class="moduleContentCol1">
                        <asp:HyperLink CssClass="moduleCol4" ID="lnkRegister" runat="server" NavigateUrl="/register.aspx" Visible="false"><%=GetGlobalResourceObject("lang", "SignUp")%></asp:HyperLink>
                    </label>
                </fieldset>
    
            </div>
           <%-- <div>
                <label>* <%=GetGlobalResourceObject("lang", "Email")%></label>
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqRegister2" runat="server" ControlToValidate="txtEmail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Sadece turkcell.com.tr, superonline.net, global-bilgi.com.tr, turkcellteknoloji.com.tr, globaltower.com.tr Adreslerinden kayýt kabul edilmektedir." ValidationExpression="^(.*)@(turkcell|superonline|global-bilgi|turkcellteknoloji|globaltower)\.(com.tr|(com|net))">*</asp:RegularExpressionValidator>
    
            </div>--%>
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
            <div class="moduleCol1"><a href="/register.aspx" class="button">Hemen Üye Ol</a></div>
            <div class="title3 moduleCol1">Facebook ile Baðlan</div>
            <div class="icerik moduleCol1">Eðer bir facebook hesabýnýz varsa, üyelik için gerekli bilgileri facebook hesabýnýzdan daha hýzlý aktarabiliriz.</div>
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
