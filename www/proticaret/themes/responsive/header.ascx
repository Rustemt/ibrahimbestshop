<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.header" EnableViewState="False" CodeBehind="header.ascx.vb" %>
<link rel="stylesheet" href="<% =getThemePath() %>/css/font/css/fontello.css">
<link rel="stylesheet" href="<% =getThemePath() %>/css/font/css/animation.css">

<div class="headerTop clearFix">
    <div class="wrapper clearFix">
        <div class="linkLeft clearFix">
            <%If (IsLoggedIn) Then%>
            <div class="welcome fLeft">
				<span class="userButton"><i class="icon-user"></i> <%=String.Format(GetGlobalResourceObject("lang", "Welcome"), " : " & UserName )%> <i class="icon-down-dir"></i></span>
                <ul class="userContent radius5">
                	<li><a href="/user.aspx">Kullanıcı Bilgileri</a></li>
                	<li><a href="/store/shipping.aspx">Teslimat Adresi</a></li>
                	<li><a href="/store/billing.aspx">Fatura Adres Bilgileri</a></li>
                	<li><a href="/store/messages.aspx">Mesajlarım</a></li>
                	<li><a href="/password.aspx">Şifre Değiştir</a></li>
                </ul>
            </div>
            <span class="messageHeader fLeft">
                <asp:HyperLink runat="server" ID="lnkmessage" Text="<%$ Resources:lang,Messages %>" Visible="false"></asp:HyperLink></span>
            <% Else%>
            <span class="linkSecure">%100 Güvenli Alışveriş</span>
            <% End If%>
        </div>
        <a id="linkButton"></a>
        <div id="linkRight" class="linkRight clearFix">
            <div class="linkMenu">
                <ul class="clearFix">
                    <% If PortalSecurity.IsInRole("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Or isSupplier Or isplasiyer Then%>
                    <li><a href="/admin/default.aspx"><%=GetGlobalResourceObject("lang", "StoreAdminPage")%></a></li>
                    <% End If%>
                    <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
                    <li><a href="/admin/default.aspx?MNID=cms"><%=GetGlobalResourceObject("lang", "AdminPage")%></a></li>
                    <% End If%>
                    <li><a href="/default.aspx"><%=GetGlobalResourceObject("lang", "MainPage")%></a></li>
                    <%If (IsLoggedIn) Then%>
                    <li><a href="/account.aspx"><%=GetGlobalResourceObject("lang", "MyProfile")%></a></li>
                    <li><a href="/logoff.aspx"><%=GetGlobalResourceObject("lang", "LogOff")%></a></li>
                    <% Else%>
                    <li>
                        <a href='<% =iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") & iif(ConfigurationManager.AppSettings("StoreType")="B2B","/partnerlogin.aspx","/login.aspx") %>'>
                            <%=GetGlobalResourceObject("lang", "LogIn")%>
                        </a>
                    </li>
                    <li><a href="<% =iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") %>/register.aspx"><%=GetGlobalResourceObject("lang", "SignUp")%></a></li>
                    <% End If%>
                    <li><a href="/icerik/yardim.aspx"><%=GetGlobalResourceObject("lang", "Help")%></a></li>
                    <li><a href="/contact.aspx"><%=GetGlobalResourceObject("lang", "ContactPage")%></a></li>
                </ul>
            </div>
            <div class="currency">
                <asp:Repeater runat="server" ID="rptCurrency">
                    <ItemTemplate>
                        <asp:LinkButton runat="server" CausesValidation="false" ID="lnkCurrency" ToolTip='<%# Eval("CurrencyName") %>'
                            CommandArgument='<%# Eval("CurrencyCode") %>' Text=' <%# IIf(ChkNullString(Eval("CurrencySymbolLeft")=""),IIf(Eval("CurrencySymbolRight")="",Eval("CurrencyCode"),Eval("CurrencySymbolRight")),Eval("CurrencySymbolLeft")) %>'></asp:LinkButton>
                        <a href="#">-</a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="flags">
                <span><%=GetGlobalResourceObject("lang", "SelectLanguage")%>:</span>
                <a href="/?lang=tr-TR">
                    <img alt="tr" src="<% =getThemePath() %>/images/flag/tr.png" /></a>
                <a href="/?lang=en-US">
                    <img alt="en" src="<% =getThemePath() %>/images/flag/us.png" /></a>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>
<div class="headerMiddle wrapper clearFix">
    <div class="logo clearFix">
        <% If PortalSecurity.IsInRole("Yöneticiler") Then%>
        <a class="editTitle" href="Javascript:var PopUpWin = window.open('/admin/modules/EditBanner.aspx','','width=900,height=500,scrollbars=1,status=1,toolbar=0,resizable=1')"><%=GetGlobalResourceObject("lang", "EditBanner")%></a>
        <% End If%>
        <div id="header_db_content" runat="server"></div>
    </div>
    <div class="headerCenter radius5 clearFix">
        <div class="topCategories clearFix">
            <a class="topCatButton" type="submit"><%=GetGlobalResourceObject("lang", "AllCategories2")%></a>
            <div id="headerMenu" class="topCat radius5 clearFix">
                <div class="clear"></div>
            </div>
        </div>
        <div class="search">
            <input name="txtSearch" type="text" id="txtSearch" title="<%=GetGlobalResourceObject("lang", "SearchProduct")%>" class="search-fld"
                onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {LigthSearchx('txtSearch','btnSearch');return false;}} else {return true}; "
                onclick="this.value = '';" onblur="this.value=!this.value?'<%=GetGlobalResourceObject("lang", "SearchProduct")%>':this.value;"
                value="<%=GetGlobalResourceObject("lang", "SearchProduct")%>" />
            <a id="btnSearch" href="javascript:LigthSearchx('txtSearch','btnSearch');"></a>
            <a class="advancedSearch" href="/icerik/arama.aspx"><%=GetGlobalResourceObject("lang", "SearchAdvance")%></a>
        </div>
    </div>
    <div class="cart radius5 clearFix">
        <span><%=GetGlobalResourceObject("lang", "Quantity2")%>:</span><span id="spt"></span><span><%=GetGlobalResourceObject("lang", "Price4")%>:</span><span id="spt2"></span>
        <div id="cartImages" class="radius5"></div>
    </div>
</div>
<div class="headerBottom wrapper">
    <a class="pageMenuButton radius5">Menu</a>
    <div id="main_menu_container" class="pageMenu radius5" runat="server">
        <ul id="main_menu" runat="server"></ul>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript">
    /*---- Kategories Button ----*/
	$(".userButton").click(function () {
        $(".userContent").slideToggle();
    });
    $("#linkButton").click(function () {
        $("#linkRight").slideToggle();
    });
    $(".topCatButton").click(function () {
        $(".topCat").slideToggle();
    });
    $(".cart").click(function () {
        $("#cartImages").slideToggle();
    });
    $(".pageMenuButton").click(function () {
        $(".pageMenu").slideToggle();
    });

    /*---- Kategories & Mark ----*/
    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/categoryserviceall.aspx",
            context: document.body,
            success: function (data) {
                $("#headerMenu").html(data);
            }
        });
    });
    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/brandservice.aspx",
            context: document.body,
            success: function (data) {
                $("#sub-markalar").html(data);
            }
        });
    });

    /*---- Cart ----*/
    ASPNetPortal.ShoppingCartService.GetShoppingCartCount(OnRC1);
    function OnRC1(result) { document.getElementById("spt").innerHTML = result; }
    ASPNetPortal.ShoppingCartService.GetShoppingCartTotal(OnRC2);
    function OnRC2(result) { document.getElementById("spt2").innerHTML = result; }

    /*---- Cart2 ----*/
    jQuery(document).ready(function () {
        $.ajax({
            url: "/services/ShoppingCartImages.aspx",
            context: document.body,
            success: function (data) {
                $("#cartImages").html(data);
            }
        });
    });

    /*---- Page ----*/
    if ($.browser.msie) {
        $(function () {
            $('ul.main_menu > li').smoothMenu({ dockId: 'ui_smooth_menu_containerh' });
        });
    } else {
        $('ul.main_menu > li').smoothMenu({ dockId: 'ui_smooth_menu_containerh' });
    }

</script>
