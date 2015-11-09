<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.account" CodeBehind="account.ascx.vb" EnableViewState="False" %>
<div id="account" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1 clearFix">
        <div id="accountMenu">
            <ul>
                <li class="contentMenu">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/user.aspx"><%=GetGlobalResourceObject("lang", "UserProfile")%></asp:HyperLink>
                    <ul class="radius5">
                        <li>
                            <asp:HyperLink ID="hpChangepass" runat="server" NavigateUrl="/password.aspx">          <%=GetGlobalResourceObject("lang", "ChangePassword")%> </asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="hypmessages" runat="server" NavigateUrl="/store/messages.aspx" Text="<%$ Resources:lang,Messages %>"></asp:HyperLink></li>
                        <li runat="server" id="liPlasiyer">
                            <asp:HyperLink ID="hypPlasiyer" runat="server" NavigateUrl="/store/sale.aspx"><%=GetGlobalResourceObject("lang", "ShippingForMembers")%> </asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="hlAddress" runat="server" NavigateUrl="/store/billing.aspx"><%=GetGlobalResourceObject("lang", "BillingAddress")%>            </asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="/store/shipping.aspx"><%=GetGlobalResourceObject("lang", "ShippingAddress")%></asp:HyperLink></li>
                    </ul>
                </li>
                
                <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="/store/mypayment.aspx" Text="Online Ödeme Listem"></asp:HyperLink></li>
                <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/store/orderlist.aspx">Sipariþ Listem</asp:HyperLink></li>
                <li runat="server" id="hypoffer">
                    <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="/store/offerlist.aspx"><%=GetGlobalResourceObject("lang", "OfferList")%><%=GetGlobalResourceObject("lang", "ServiceList")%></asp:HyperLink></li>
                <li class="contentMenu">
                	<a>Servis Ýþlemlerim</a>
                	<ul>
                    	<li runat="server" id="hypservis"><asp:HyperLink ID="hyplservis" runat="server">Yeni Servis Talebi</asp:HyperLink></li>
                        <li>Servis Listem</li>
                    </ul>
                </li>
                
                <li runat="server" id="linm"><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="/store/nmorderlist.aspx"><%=GetGlobalResourceObject("lang", "nmOrderList")%></asp:HyperLink></li>
                <li runat="server" id="linm_member"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="/store/nmusers.aspx"><%=GetGlobalResourceObject("lang", "MarkettingMembers")%></asp:HyperLink></li>
                
                
                <%If ConfigurationManager.AppSettings("StoreType") = "B2B" Then%>
                <li>
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="/store/extrelist.aspx"><%=GetGlobalResourceObject("lang", "ExtreList")%></asp:HyperLink></li>
                <%End If%>
            </ul>
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="/store/compare.aspx"><%=GetGlobalResourceObject("lang", "CompareProductList")%></asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="/store/stockalarm.aspx"><%=GetGlobalResourceObject("lang", "StockAlarmList")%></asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="/store/coupons.aspx"><%=GetGlobalResourceObject("lang", "CouponList")%></asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="/store/pricealarm.aspx"><%=GetGlobalResourceObject("lang", "PriceAlarmList")%></asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="/store/points.aspx"><%=GetGlobalResourceObject("lang", "PointList")%></asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="/store/cancelorderlist.aspx">Ýade & Deðiþim Taleplerim</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="/store/bookingproductslist.aspx">Ürün Rezervasyon Taleplerim</asp:HyperLink></li>

                <%--<li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="/invite.aspx"><%=GetGlobalResourceObject("lang", "AffiliateInviteFriends")%></asp:HyperLink></li>--%>
                <%  If ConfigurationManager.AppSettings("AffiliateActive") = "True" Then%>
                <li>
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="/affiliate/default.aspx"><%=GetGlobalResourceObject("lang", "Affiliate")%></asp:HyperLink></li>
                <% End If%>
                <%  If ConfigurationManager.AppSettings("SupportActive") = "True" Then%>
                <li style="display: none;">
                    <asp:HyperLink ID="hypdestek" runat="server" NavigateUrl="/support/default.aspx">Destek Taleplerim</asp:HyperLink></li>
                <li runat="server" id="liHyperLink16">
                    <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="/supportfree/default.aspx">Destek Taleplerim</asp:HyperLink></li>
                <li runat="server" id="lihypinfo">
                    <asp:HyperLink ID="hypinfo" runat="server" NavigateUrl="/supportfree/default2.aspx">Bilgi Taleplerim</asp:HyperLink></li>
                <% End If%>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=650,height=660,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
