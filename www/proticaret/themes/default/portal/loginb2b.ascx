<%@ Control Language="vb" Inherits="ASPNetPortal.loginb2b" AutoEventWireup="false" CodeBehind="loginb2b.ascx.vb" %>
<div id="loginb2b" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %> </a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div runat="server" id="login_formb2b">
            <div id="alert" runat="server" class="alert">
                <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
            <fieldset>
                <label><%=GetGlobalResourceObject("lang", "UserCode")%></label>
                <asp:TextBox ID="txtBayiKodu" runat="server"></asp:TextBox>
                <label><%=GetGlobalResourceObject("lang", "Email")%></label>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <label><%=GetGlobalResourceObject("lang", "Password") %></label>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="password"></asp:TextBox>
                <label>
                    <asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></label>
                <asp:LinkButton ID="btnLogin" CssClass="button" runat="server" Text="<%$ Resources:lang, LogIn1%>"></asp:LinkButton>
                <label>
                    <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="/register.aspx"><%=GetGlobalResourceObject("lang", "SignUp")%></asp:HyperLink>
                    | 
	<asp:HyperLink ID="lnkForgotPass" runat="server" NavigateUrl="/forgotpassword.aspx"><%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink>
                </label>
            </fieldset>
        </div>
        <div runat="server" id="welcome">
            <asp:Label ID="lblWelcome" runat="server"></asp:Label>
            <p>
                <asp:HyperLink ID="lnkLogOff" runat="server" NavigateUrl="/logoff.aspx"><%=GetGlobalResourceObject("lang", "LogOff1")%></asp:HyperLink></p>
        </div>
    </div>
</div>
