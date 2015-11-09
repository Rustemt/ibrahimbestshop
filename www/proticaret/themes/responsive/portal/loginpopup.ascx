<%@ Control Language="vb" Inherits="ASPNetPortal.loginpopup" AutoEventWireup="false" CodeBehind="loginpopup.ascx.vb" %>
<div id="loginpopup" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent loginPopup clearFix">
        <div runat="server" id="login_form">
            <div id="alert" runat="server" class="alert">
                <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
            <fieldset>
                <label><%=GetGlobalResourceObject("lang", "Email")%></label>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                <label><%=GetGlobalResourceObject("lang", "Password") %></label>
                <asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox><br />
                <label>
                    <asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></label>
                <asp:Button ID="btnLogin" runat="server" Text="<%$ Resources:lang, LogIn1%>" CssClass="button" />
                <label>
                    <asp:HyperLink ID="lnkForgotPass" Visible="false" runat="server" NavigateUrl="/forgotpassword.aspx"><%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink>
                    <asp:HyperLink ID="lnkRegister" Visible="false" runat="server" NavigateUrl="/register.aspx"><%=GetGlobalResourceObject("lang", "SignUp")%></asp:HyperLink>
                </label>
            </fieldset>
        </div>
        <div runat="server" id="welcome">
            <fieldset>
                <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                <asp:HyperLink ID="lnkLogOff" runat="server" NavigateUrl="/logoff.aspx"><%=GetGlobalResourceObject("lang", "LogOff1")%></asp:HyperLink>
            </fieldset>
        </div>
        <script type="text/javascript">
            $("#<%= txtemail.ClientID %>").keyup(function (event) {
                if (event.keyCode == 13) {
                    $("#<%= btnLogin.ClientID %>").click();
	    return false;
	}
	});
$("#<%= txtpassword.ClientID %>").keyup(function (event) {
                if (event.keyCode == 13) {
                    $("#<%= btnLogin.ClientID %>").click();
	    return false;
	}
	});
        </script>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
