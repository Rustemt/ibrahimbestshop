<%@ Control Language="vb" Inherits="ASPNetPortal.alogin" AutoEventWireup="false" Codebehind="login.ascx.vb" %>
<div id="login" class="module">
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
	<div runat="server" id="login_form">
	<div id="alert" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
	<fieldset>
	<label><%=GetGlobalResourceObject("lang", "Email")%></label>
	<asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
	<label><%=GetGlobalResourceObject("lang", "Password") %></label>
	<asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox><br />
	<label><asp:CheckBox ID="chkRememberme" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "RememberMe")%></label>
	<asp:Button ID="btnLogin" runat="server" Text="<%$ Resources:lang, LogIn1%>" CssClass="button" />
	<label>
    <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="/register.aspx" ><%=GetGlobalResourceObject("lang", "SignUp")%></asp:HyperLink> | 
	<asp:HyperLink ID="lnkForgotPass" runat="server" NavigateUrl="/forgotpassword.aspx" ><%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink>
	</label>	 
	</fieldset>
	</div>
	<div runat="server" id="welcome">
	<fieldset>
	<p><asp:Label ID="lblWelcome" runat="server"></asp:Label></p>
	<% If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
    <div id="dvlogout"><a href="/logoff.aspx" id="lnkLogoff"><%=GetGlobalResourceObject("lang", "LogOff1")%></a></div>   
    <% End If%> 	
	</fieldset>
	</div>
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