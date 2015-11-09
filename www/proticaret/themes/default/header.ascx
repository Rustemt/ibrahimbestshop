<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.header"
    EnableViewState="False" CodeBehind="header.ascx.vb" %>
<script type="text/javascript">
    var UserName = '<%= UserName %>';
    var UserFullName = '<%= UserName %>';
    var IsLoggedIn = '<%= IsLoggedIn %>';
    var BaseUrl = '<%= publicItems.BaseUrl %>';

</script>
<div id="main_menu_container" class="main_menu_container" runat="server">
    <link type="text/css" href="<% =getThemePath() %>/css/jquery-ui-smoothMenu.css" rel="stylesheet" />
    <script type="text/javascript" src="<% =getThemePath() %>/js/jquery.ui.smoothMenu.min.js"></script>
    <ul id="main_menu" class="main_menu" runat="server">
    </ul>
    <div class="clear">
    </div>
    <script type="text/javascript">
        if ($.browser.msie) {
            $(function () {
                $('ul.main_menu > li').smoothMenu({ dockId: 'ui_smooth_menu_containerh' });
            });
        } else {
            $('ul.main_menu > li').smoothMenu({ dockId: 'ui_smooth_menu_containerh' });
        }
    </script>
</div>
<div id="header_db">
    <% If PortalSecurity.IsInRole("Yöneticiler") Then%>
    <a href="Javascript:var PopUpWin = window.open('/admin/modules/EditBanner.aspx','','width=900,height=500,scrollbars=1,status=1,toolbar=0,resizable=1')">
        <%=GetGlobalResourceObject("lang", "EditBanner")%></a>
    <% End If%>
    <div id="header_db_content" runat="server"></div>
</div>
<div id="header_content">
    <div id="logo">
        <a href="<% =BaseUrl %>/default.aspx">
            <img src="<%=getThemePath()%>/images/logo.png" alt="logo" border="0" /></a>
    </div>

    <% If isplasiyer = 2 Then%>
    <a class="plasiyerButton" href='<% =BaseUrl %>/salesman/default.aspx'><%=GetGlobalResourceObject("lang", "SalesmanManagemant")%></a>
    <% End If%>
    <% If PortalSecurity.IsInRole("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
    <div id="management">

        <span>YÖNETİM PANELİ</span>
        <div id="managementContent">
            <% If PortalSecurity.IsInRole("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/storeadmin/default.aspx"><%=GetGlobalResourceObject("lang", "StoreAdminPage")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/admin/default.aspx"><%=GetGlobalResourceObject("lang", "AdminPage")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/multiadmin/default.aspx">Multi Admin</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/alternativemarket/default.aspx">N11 Entegrasyon Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =GetBaseUrl() %>/GittiGidiyor/default.aspx">Gitti Gidiyor Entegrason Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/pricemanagement/default.aspx">Fiyat Listesi Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Or isSupplier Then%>
            <a href="<% =BaseUrl %>/supplieradmin/default.aspx">Tedarikçi Portalı</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =GetBaseUrl() %>/supportadminfree/defaultsupport.aspx">Destek&Mail Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =GetBaseUrl() %>/mailadmin/default.aspx">Toplu Mail Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href='<% =BaseUrl %>/salesman/default.aspx'><%=GetGlobalResourceObject("lang", "SalesmanManagemant")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/networkmarketing/default.aspx"><%=GetGlobalResourceObject("lang", "NetworkManagemant")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/socialadmin/default.aspx"><%=GetGlobalResourceObject("lang", "FacebookAdminPage")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/supportadminfree/defaultsupport.aspx"><%=GetGlobalResourceObject("lang", "SupportManagemant")%></a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/offer/default.aspx">Teklif Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/guaranty/default.aspx">Servis Yönetimi</a>
            <% End If%>
            <% If PortalSecurity.IsInRoles("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>
            <a href="<% =BaseUrl %>/licence/default2.aspx">Lisanslar</a>
            <% End If%>
        </div>
    </div>
    <% End If%>
    <div id="user-menu" class="radius7">
        <%If (IsLoggedIn) Then%>
        <div id="welcome">
            <span><%=String.Format(GetGlobalResourceObject("lang", "Welcome"), " : <b style=""color:#EA3F13;"">" & UserName & "</b>")%></span>
            <span id="messageHeader">
                <asp:HyperLink runat="server" ID="lnkmessage" Text="Mesajlarım" Visible="false"></asp:HyperLink></span>
        </div>
        <% End If%>

        <a href="<% =BaseUrl %>/default.aspx"><%=GetGlobalResourceObject("lang", "MainPage")%></a> <a href="#">|</a>
        <%If (IsLoggedIn) Then%>
        <a href="<% =BaseUrl %>/account.aspx">
            <%=GetGlobalResourceObject("lang", "MyProfile")%></a> <a href="#">|</a>
        <%--Admin Menüsü Orjinal yeri--%>
        <a href="<% =BaseUrl %>/logoff.aspx">
            <%=GetGlobalResourceObject("lang", "LogOff")%></a> <a href="#">|</a>
        <% Else%>
        <a href='<% =iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") & iif(ConfigurationManager.AppSettings("StoreType")="B2B","/partnerlogin.aspx","/login.aspx") %>'>
            <%=GetGlobalResourceObject("lang", "LogIn")%></a> <a href="#">|</a> <a href="<% =iif(ConfigurationManager.AppSettings("UseSsl") = "True",BaseUrl.Replace("http://", "https://"),"") %>/register.aspx">
                <%=GetGlobalResourceObject("lang", "SignUp")%></a> <a href="#">|</a>
        <% End If%>
        <a href="<% =BaseUrl %>/icerik/yardim.aspx">
            <%=GetGlobalResourceObject("lang", "Help")%></a> <a href="#">|</a> <a href="<% =BaseUrl %>/contact.aspx">
                <%=GetGlobalResourceObject("lang", "ContactPage")%></a>
        <div class="flags radius7">
            <%=GetGlobalResourceObject("lang", "SelectLanguage")%>
            <a href="<% =BaseUrl %>/?lang=tr-TR">
                <img alt="tr" src="<% =getThemePath() %>/images/flag/tr.png" /></a> <a href="<% =BaseUrl %>/?lang=en-US">
                    <img alt="en" src="<% =getThemePath() %>/images/flag/us.png" /></a>
        </div>
        <div id="currency" class="radius7">
            <asp:Repeater runat="server" ID="rptCurrency">
                <ItemTemplate>
                    <asp:LinkButton runat="server" CausesValidation="false" ID="lnkCurrency" ToolTip='<%# Eval("CurrencyName") %>'
                        CommandArgument='<%# Eval("CurrencyCode") %>' Text=' <%# IIf(ChkNullString(Eval("CurrencySymbolLeft")=""),IIf(Eval("CurrencySymbolRight")="",Eval("CurrencyCode"),Eval("CurrencySymbolRight")),Eval("CurrencySymbolLeft")) %>'></asp:LinkButton>
                    <a href="#">|</a>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div id="main-top"></div>
    <div id="top-menu">
        <div id="topmenu-categories">
            <div id="tc-right">
                <a href="#" class="main radius7">
                    <%=GetGlobalResourceObject("lang", "AllCategories2")%><span class="arrow"></span>
                    <div class="all-menu"></div>
                </a>
                <script type="text/javascript">
                    jQuery(document).ready(function () {
                        $.ajax({
                            url: "/services/categoryservice.aspx",
                            context: document.body,
                            success: function (data) {
                                $(".all-menu").html(data);
                            }
                        });
                    });
                </script>
            </div>
        </div>
        <div id="topmenu-content">
            <div id="topmenu-search">
                <input name="txtSearch" type="text" id="txtSearch" title="Ürün Arama" class="search-fld"
                    onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {LigthSearchx('txtSearch','btnSearch');return false;}} else {return true}; "
                    onclick="this.value = '';" onblur="this.value=!this.value?'Ürün Arama':this.value;"
                    value="Ürün Arama" />
                <a id="btnSearch" class="search-btn" href="javascript:LigthSearchx('txtSearch','btnSearch');"></a><a href="<% =BaseUrl %>/icerik/arama.aspx"><b>
                    <%=GetGlobalResourceObject("lang", "SearchAdvance")%></b></a>
            </div>
            <div id="topmenu-line"></div>
            <div id="topmenu-cart">
                <img src="<%=getThemePath()%>/images/icon_cart.png" alt="sepet" border="0" />
                <a href="<% =BaseUrl %>/store/cart.aspx"><%=GetGlobalResourceObject("lang", "Basket")%>: <b>(<span id="spt">&nbsp;</span>)</b></a>
                <a href="<% =BaseUrl %>/store/cart2.aspx" id="totalCart">Toptan Sipariş Listem</a>
                <script type="text/javascript">
                    ASPNetPortal.ShoppingCartService.GetShoppingCartCount(OnRC1);
                    function OnRC1(result) { document.getElementById("spt").innerHTML = result; }
                </script>
            </div>
        </div>
        
        <div class="clear"></div>
    </div>
</div>
