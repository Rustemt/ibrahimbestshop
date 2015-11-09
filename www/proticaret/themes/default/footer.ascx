<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.footer" EnableViewState="False" CodeBehind="footer.ascx.vb" %>
<div id="footer_db">
    <% If PortalSecurity.IsInRole("Y�neticiler") Then%>
    <a href="Javascript:var PopUpWin = window.open('/admin/modules/editfooter.aspx','','width=900,height=500,scrollbars=1,status=1,toolbar=0,resizable=1')"><%=GetGlobalResourceObject("lang", "EditFooter")%></a>
    <% End If%>
    <div id="footer_db_content" runat="server"></div>
</div>
<div id="main-bottom"></div>
<div id="footer-content">
    <div id="footerMenu">
        <ul>
            <li id="footerTitle">�YEL�K ��LEMLER�</li>
            <li><a href="/register.aspx">Yeni �yelik</a></li>
            <li><a href="/login.aspx">�yelik Giri�i</a></li>
            <li><a href="/forgotpassword.aspx">�ifremi Unuttum</a></li>
        </ul>
        <ul>
            <li id="footerTitle">S�PAR�� ��LEMLER�</li>
            <li><a href="/icerik/bos-sayfa.aspx">Mesafeli Sat�� S�zle�mesi</a></li>
            <li><a href="/icerik/bos-sayfa.aspx">�deme ve Teslimat</a></li>
            <li><a href="/icerik/bos-sayfa.aspx">�ade ve Garanti �artlar�</a></li>
        </ul>
        <ul>
            <li id="footerTitle">ALI�VER�� SEPET�</li>
            <li><a href="/store/cart.aspx">Al��veri� Sepeti</a></li>
            <li><a href="/termsofuse.aspx"><%=GetGlobalResourceObject("lang", "TermsOfUse")%></a></li>
            <li><a href="/privacypolicy.aspx"><%=GetGlobalResourceObject("lang", "PrivacyPolicy")%></a></li>
        </ul>
        <ul>
            <li id="footerTitle">�LET���M B�LG�LER�M�Z</li>
            <li><a href="/contact.aspx">�leti�im Formu</a></li>
            <li><a href="/icerik/bos-sayfa.aspx">Havale Bildirim Formu</a></li>
        </ul>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <span class="social">
        <a href="#" target="_blank">
            <img src="<%=getThemePath()%>/images/face.png" border="0" /></a>
        <a href="#" target="_blank">
            <img src="<%=getThemePath()%>/images/twitter.png" border="0" /></a>
        <a href="#" target="_blank">
            <img src="<%=getThemePath()%>/images/youtube.png" border="0" /></a>
        <a href="#" target="_blank">
            <img src="<%=getThemePath()%>/images/pint.png" border="0" /></a>
    </span>
    <div id="card1">
        <img src="<% =getThemePath() %>/images/card1.png" />
    </div>
    <span id="footerLogo"><a href="<% =BaseUrl %>/default.aspx">
        <img src="<%=getThemePath()%>/images/logo.png" border="0" /></a>
    </span>
    <p>Copyright � <b><%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyName")) %></b> <%=GetGlobalResourceObject("lang", "AllRigthReserved")%></p>
    <div id="footer_ref" class="footer_ref" runat="server"></div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
