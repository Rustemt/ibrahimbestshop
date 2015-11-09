<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="homeproducts.ascx.vb" Inherits="ASPNetPortal.homeproducts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<div id="homeproducts" class="module">
       <% If HeaderVisible Then%>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% If IsEditable Then%>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% End If%>
        </div>
        <% End If%>
        <script type="text/javascript">
            $(document).ready(function () {

                if (CerezIzin() == false) return;

                var nameEQ = "classdiv=";
                var ca = document.cookie.split(';');
                for (var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                    if (c.indexOf(nameEQ) == 0)
                        $('#clickHome').removeClass().addClass(c.substring(nameEQ.length, c.length));
                }

                function CerezIzin() {
                    if (window.navigator.cookieEnabled)
                        return true;

                    return false;
                }
            });
        </script>
        
        <div class="moduleContent moduleContentCol1">

            <asp:Label ID="lblMsg" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "ProductsMsg1")%></asp:Label>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblUrunListesi">
                        <tr class="filterContainer">
                            <td align="right">
                                <table cellspacing="0" cellpadding="8" border="0" width="100%">
                                    <tr>
                                        <td valign="middle">
                                            <div class="homeProductFilter clearFix">
                                                <ul class="clearFix">
                                                    <li><a class="collFilterFour"></a></li>
                                                    <li><a class="collFilterTwo"></a></li>
                                                    <li><a class="collFilter"></a></li>
                                                    <li>
                                                        <label><span><%=GetGlobalResourceObject("lang", "ProductsInStock")%>:</span><asp:CheckBox ID="chkStock" runat="server" AutoPostBack="True"></asp:CheckBox></label></li>
                                                    <li>
                                                        <label>
                                                            <span><%=GetGlobalResourceObject("lang", "ProductOrderBy")%> :</span>
                                                            <asp:DropDownList ID="ddlOrderBy" CssClass="dropdownlist" runat="server" AutoPostBack="True">
                                                                <asp:ListItem Text="<%$ Resources:lang, OrderByDefault%>" Value="OrderByDefault"></asp:ListItem>
                                                                <asp:ListItem Text="<%$ Resources:lang, OrderByNameAsc%>" Value="OrderByNameAsc"></asp:ListItem>
                                                                <asp:ListItem Text="<%$ Resources:lang, OrderByNameDesc%>" Value="OrderByNameDesc"></asp:ListItem>
                                                                <asp:ListItem Text="<%$ Resources:lang, OrderByPriceAsc%>" Value="OrderByPriceAsc"></asp:ListItem>
                                                                <asp:ListItem Text="<%$ Resources:lang, OrderByPriceDesc%>" Value="OrderByPriceDesc"></asp:ListItem>
                                                            </asp:DropDownList>
                                                        </label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td id="pnlGalery" runat="server">
                                <div id="clickHome" class="fourContent">
                                    <asp:DataList ID="dlGalery" runat="server" DataKeyField="ProductId" Width="100%" EnableViewState="False" RepeatLayout="Flow">
                                        <ItemStyle CssClass="homeProductContent radius5 moduleContentCol4" HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
                                        <ItemTemplate>
                                            <div class="productImage">
                                                <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                    <%--<asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image>--%>
                                                    <asp:Image runat="server" ID="aa" ImageUrl='<%#  "/uploads/productsimages/" & Container.DataItem("Path") %>' />
                                                </a>
                                            </div>
                                            <div class="productName">
                                                <asp:HyperLink ID="lnkProductName" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>' Text='<%# container.dataitem("ProductName")  %>'></asp:HyperLink>
                                            </div>
                                            <div class="productFeatures">
                                                <ul>
                                                    <li style="display: none;">
                                                        <span>Marka:</span>
                                                        <asp:Label ID="Label41" runat="server" Text='<%# container.dataitem("MarKName") %>'></asp:Label>
                                                    </li>
                                                    <li style="display: none;">
                                                        <span>Ürün Kodu:</span>
                                                        <asp:HyperLink ID="lnkProductCode" runat="server" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>'></asp:HyperLink>
                                                    </li>
                                                    <li>
                                                        <span>Mağaza:</span>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# container.dataitem("ShopNickName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>'></asp:HyperLink>
                                                    </li>
                                                    <li style="display:none;">
                                                        <span class="description"></span>
                                                        <asp:Label ID="Label5q" runat="server" Text='<%# container.dataitem("Description") %>'>Açıklama:</asp:Label>
                                                    </li>
                                                    <li>
                                                        <asp:HyperLink ID="HyperLink6q" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif(Request.QueryString.Item("tabId")="","","?tabId=" & Request.QueryString.Item("tabId")) %>'
                                                            Text='<%# container.dataitem("CatName") %>'>
                                                        </asp:HyperLink>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="productPrice clearFix">

                                                <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") = "True" And HttpContext.Current.User.Identity.IsAuthenticated()) Or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") <> "True" Then%>

                                                <div id="product_price">
                                                    <asp:Label ID="Label2" CssClass="old_price" runat="server"><%#IIf(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0, CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * (Container.DataItem("RateP")/ CurrencyRate), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight, "")  %></asp:Label>
                                                    <asp:Label ID="Label3" runat="server" Visible="false"><%=IIf(StokIskActive Or UserIndirim > 0 Or StokIsk > 1, GetGlobalResourceObject("lang", "PriceForYou"), GetGlobalResourceObject("lang", "Price"))%></asp:Label>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(Container.DataItem("SatisFiyati") * (Container.DataItem("Rate") / CurrencyRate), Container.DataItem("Indirim")), UserIndirim), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight%>'>
                                                    </asp:Label>
                                                </div>

                                                <% End If%>
                                            </div>
                                            <div class="productAdd" style="display: none;">
                                                <a id="btnAddToCart" class="cartbutton" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>' href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'>
                                                    <%= GetGlobalResourceObject("lang", "AddToCart")%>
                                                </a>
                                                <asp:Label ID="Label31" runat="server" CssClass="stock_out" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                                            </div>
                                            <div id="homelabels">
                                                <div id="FirsatUrunu" style="display: <%# iif(eval("FirsatUrunu"),"block;","none;") %>"></div>
                                                <div id="IndirimliUrun" style="display: <%# iif((eval("IndirimliUrun")) and (ChkNullToDecimal(Eval("PiyasaFiyati")) > 0) ,"block;","none;") %>">%<%#CInt(GetPercent(ChkNullToDecimal(Eval("PiyasaFiyati")),ChkNullToDecimal(Eval("SatisFiyati")))) %><img src="<%=getThemePath()%>/images/icon_down.png" border="0" /></div>
                                                <div id="HizliKargo" style="display: <%# iif(eval("HizliKargo"),"block;","none;") %>"></div>
                                                <div id="EnUcuzUrun" style="display: <%# iif(eval("EnUcuzUrun"),"block;","none;") %>"></div>
                                                <div id="AyniGunTeslim" style="display: <%# iif(eval("AyniGunTeslim"),"block;","none;") %>"></div>
                                                <div id="OzelUrun" style="display: <%# iif(eval("OzelUrun"),"block;","none;") %>"></div>
                                                <div id="SinirliSayidaUrun" style="display: <%# iif(eval("SinirliSayidaUrun"),"block;","none;") %>"></div>
                                                <div id="YeniUrun" style="display: <%# iif(eval("YeniUrun"),"block;","none;") %>"></div>
                                                <div id="SokFiyatliUrun" style="display: <%# iif(eval("SokFiyatliUrun"),"block;","none;") %>"></div>
                                                <div id="HediyeliUrun" style="display: <%# iif(eval("HediyeliUrun"),"block;","none;") %>"></div>
                                                <div class="clear"></div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                    <div class="paging" align="right">
                                        <asp:Label ID="PagingLabel" runat="server"></asp:Label>
                                        <asp:Label ID="RecordsCount" runat="server" CssClass="RecordsCount"></asp:Label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <script type="text/javascript" src="<%= getThemePath() %>/js/rendermodules.js"></script>

            <script type="text/javascript">
                $(document).ready(function () {

                    function setCookie(name, value, days) {
                        if (days) {
                            var date = new Date();
                            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                            var expires = "; expires=" + date.toGMTString();
                        }
                        else var expires = "";
                        document.cookie = name + "=" + value + expires + "; path=/";
                    }

                    $('.collFilter').click(function () {
                        $('#clickHome').removeClass().addClass('listContent');
                        setCookie("classdiv", "listContent", 1);
                    });
                    $('.collFilterTwo').click(function () {
                        $('#clickHome').removeClass().addClass('twoContent');
                        setCookie("classdiv", "twoContent", 1);

                    });
                    $('.collFilterFour').click(function () {
                        $('#clickHome').removeClass().addClass('fourContent');
                        setCookie("classdiv", "fourContent", 1);
                    });

                });
            </script>

            <script type="text/javascript">
                $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_endRequest(function () {

                    if (CerezIzin() == false) return;

                    var nameEQ = "classdiv=";
                    var ca = document.cookie.split(';');
                    for (var i = 0; i < ca.length; i++) {
                        var c = ca[i];
                        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                        if (c.indexOf(nameEQ) == 0)
                            $('#clickHome').removeClass().addClass(c.substring(nameEQ.length, c.length));
                    }

                    function CerezIzin() {
                        if (window.navigator.cookieEnabled)
                            return true;

                        return false;
                    }
                    function setCookie(name, value, days) {
                        if (days) {
                            var date = new Date();
                            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                            var expires = "; expires=" + date.toGMTString();
                        }
                        else var expires = "";
                        document.cookie = name + "=" + value + expires + "; path=/";
                    }

                    $('.collFilter').click(function () {
                        $('#clickHome').removeClass().addClass('listContent');
                        setCookie("classdiv", "listContent", 1);
                    });
                    $('.collFilterTwo').click(function () {
                        $('#clickHome').removeClass().addClass('twoContent');
                        setCookie("classdiv", "twoContent", 1);

                    });
                    $('.collFilterFour').click(function () {
                        $('#clickHome').removeClass().addClass('fourContent');
                        setCookie("classdiv", "fourContent", 1);
                    });


                    $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                    $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
                });

                $(document).ready(function () {
                    $("a[rel='lightbox']").colorbox({ photo: true, current: "resim {current} / {total}" });
                    $(".lightbox").colorbox({ width: "600", height: "400", iframe: true, scrolling: false });
                    $('.lightbox').colorbox({
                        onLoad: function () {
                            $('#cboxNext').remove();
                            $('#cboxCurrent').remove();
                            $('#cboxPrevious').remove();
                        }
                    });
                });
            </script>

        </div>
</div>
