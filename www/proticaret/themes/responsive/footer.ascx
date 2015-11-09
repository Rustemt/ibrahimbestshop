<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.footer" EnableViewState="False" CodeBehind="footer.ascx.vb" %>
<%@ Register Src="portal/newsletter.ascx" TagName="Newsletter" TagPrefix="uc1" %>


<div class="footerContainer wrapper radius5 clearFix">
    <div class="footerTop clearFix">
        <div class="footerBox clearFix">
            <ul>
                <li class="footerBoxTitle">Üyelik Ýþlemleri</li>
                <li><a href="/register.aspx">Yeni Üyelik</a></li>
                <li><a href="/login.aspx">Üye Giriþi</a></li>
                <li><a href="/forgotpassword.aspx">Þifremi Unuttum</a></li>
            </ul>
        </div>
        <div class="footerBox clearFix">
            <ul>
                <li class="footerBoxTitle">Sipariþ Ýþlemleri</li>
                <li><a href="/icerik/diger/mesafeli-satis-sozlesmesi.aspx">Mesafeli Satýþ Sözleþmesi</a></li>
                <li><a href="/icerik/diger/odeme-ve-teslimat.aspx">Ödeme ve Teslimat</a></li>
                <li><a href="/icerik/diger/iade-ve-garanti-sartlari.aspx">Ýade ve Garanti Þartlarý</a></li>
            </ul>
        </div>
        <div class="footerBox clearFix">
            <ul>
                <li class="footerBoxTitle">Alýþveriþ Sepeti</li>
                <li><a href="/store/cart.aspx">Alýþveriþ Sepeti</a></li>
                <li><a href="/termsofuse.aspx">Kullaným Koþullarý</a></li>
                <li><a href="/privacypolicy.aspx">Gizlilik Politikasý</a></li>
            </ul>
        </div>
        <div class="footerBox clearFix">
            <ul>
                <li class="footerBoxTitle">Ýletiþim BÝlgilerimiz</li>
                <li><a href="/contact.aspx">Ýletiþim Formu</a></li>
                <li><a href="/icerik/diger/havale-bildirim-formu.aspx">Havale Bildirim Formu</a></li>
            </ul>
        </div>
        <% If Not Request.RawUrl.Contains("/urun/") Then%>
        <div class="footerBox clearFix">
            <ul>
                <li class="footerBoxTitle">E-Bülten</li>
                <li>Satýþ, Etkinlik ve Özel Teklifler Hakkýnda Bilgilendirilmek Ýçin Abone olun!</li>
                <li>
                    <uc1:Newsletter ID="Newsletter" runat="server" />
                </li>
            </ul>
        </div>
        <% End If%>
    </div>
    <div class="footerCenter clearFix">
        <div class="contact clearFix">
            <span class="lineTitle">Ýletiþim</span>
            <ul>
                <li><a class="phone" href="/contact.aspx"><%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyTel")) %> </a></li>
                <li><a class="mail" href="/contact.aspx"><%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyEmail")) %></a></li>
                <li><a class="map" href="/contact.aspx"><%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyAddress")) %></a></li>
            </ul>
        </div>
        <div class="social clearFix">
            <span class="lineTitle">Sosyal</span>
            <ul>
                <li><a href="#" class="facebook"></a></li>
                <li><a href="#" class="twitter"></a></li>
                <li><a href="#" class="youtube"></a></li>
                <li><a href="#" class="pinterest"></a></li>
            </ul>
        </div>
        <div class="logo">
            <div id="footer_db">
                <% If PortalSecurity.IsInRole("Yöneticiler") Then%>
                <a class="editTitle" href="Javascript:var PopUpWin = window.open('/admin/modules/editfooter.aspx','','width=900,height=500,scrollbars=1,status=1,toolbar=0,resizable=1')"><%=GetGlobalResourceObject("lang", "EditFooter")%></a>
                <% End If%>
                <div id="footer_db_content" runat="server"></div>
            </div>
        </div>
    </div>
</div>
<div class="wrapper footerBottom" style="display: block !important;">
    <p>Copyright © <%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyName")) %> <%=GetGlobalResourceObject("lang", "AllRigthReserved")%></p>
    <div id="footer_ref" class="footer_ref" runat="server"></div>
</div>
<script type="text/javascript">
    $(".middleLeftButton").click(function () {
        $("#middle_left > div").toggle("slow", function () {
        });
    });
    $(".middleLeftButton").click(function () {
        $("#left > div").toggle("slow", function () {
        });
    });

</script>
<script type="text/javascript">
    var element = document.getElementById("delete2");
    element.parentNode.removeChild(element);
</script>
<script type="text/javascript">
    $(function () {
        var c = 0;
        $(".middleLeftButton").click(function () {
            $(this).stop().animate({ left: ++c % 2 * 206 }, 'slow');
        });
    });


</script>

