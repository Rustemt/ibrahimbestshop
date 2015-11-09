<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits=".loginaspx" ValidateRequest="true" EnableViewStateMac="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <div class="pagePopup pageLogin" runat="server" id="login_form">
                <div class="boxToggle">
                    <div class="toggleTitle">
                        <div class="titleText">Admin Panel Girişi</div>
                    </div>
                    <div class="toggleContent">
                        <div id="alert" runat="server" class="alert" visible="false">
                            <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label>
                        </div>
                        <div class="dataForm">
                            <div class="row">
                                <div class="colOne">
                                    <h2><i class="fa fa-lock"></i>Lütfen Kullanıcı Girişi Yapınız.</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne field">
                                    <i class="fa fa-user"></i>
                                    <label><%=GetGlobalResourceObject("lang", "Email")%></label>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne field">
                                    <i class="fa fa-lock"></i>
                                    <label><%=GetGlobalResourceObject("lang", "Password") %></label>
                                    <asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>
                                        <asp:CheckBox ID="chkRememberme" runat="server" CssClass="fLeft"></asp:CheckBox>&nbsp;<%=GetGlobalResourceObject("lang", "RememberMe")%></label>
                                </div>
                                <div class="colTwo">
                                    <button runat="server" id="submit" class="btnBlue fRight">
                                        <i class="fa fa-check"></i>&nbsp;Giriş
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="toggleFooter">
                        <asp:HyperLink ID="lnkForgotPass" runat="server" NavigateUrl="/forgotpassword.aspx"><i class="fa fa-question-circle"></i> <%=GetGlobalResourceObject("lang", "ForgotPassword")%></asp:HyperLink>
                    </div>
                </div>
            </div>
            <div class="row" runat="server" id="welcome">
                <div class="colOne">
                    <label>
                        <asp:Label ID="lblWelcome" runat="server"></asp:Label></label>
                    <% If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                    <div id="dvlogout"><a href="/logoff.aspx" id="lnkLogoff" class="btnDefault"><%=GetGlobalResourceObject("lang", "LogOff1")%></a></div>
                    <% End If%>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    $("#<%= txtemail.ClientID %>").keyup(function (event) {
        if (event.keyCode == 13) {
            $("#<%= submit.ClientID %>").click();
            return false;
        }
    });
    $("#<%= txtpassword.ClientID %>").keyup(function (event) {
        if (event.keyCode == 13) {
            $("#<%= submit.ClientID %>").click();
            return false;
        }
    });
</script>
