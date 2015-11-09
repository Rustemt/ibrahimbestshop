<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="homeproducts.ascx.vb" Inherits="ASPNetPortal.homeproductservice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<div id="homeproducts" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <label>
                <asp:Label ID="lblMsg" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "ProductsMsg1")%></asp:Label></label>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblUrunListesi">
                        <tr>
                            <td align="right">
                                <table cellspacing="0" cellpadding="8" border="0">
                                    <tr>
                                        <td><%=GetGlobalResourceObject("lang", "ProductsInStock")%></td>
                                        <td>
                                            <asp:CheckBox ID="chkStock" runat="server" AutoPostBack="True"></asp:CheckBox></td>
                                        <td><%=GetGlobalResourceObject("lang", "ProductView")%> :</td>
                                        <td>
                                            <asp:DropDownList ID="ddlShow" CssClass="dropdownlist" runat="server" AutoPostBack="True">
                                                <asp:ListItem Text="<%$ Resources:lang, ProductViewGallery%>" Value="Detay"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:lang, ProductViewList%>" Value="Liste"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td><%=GetGlobalResourceObject("lang", "ProductOrderBy")%> :</td>
                                        <td>
                                            <asp:DropDownList ID="ddlOrderBy" CssClass="dropdownlist" runat="server" AutoPostBack="True">
                                                <asp:ListItem Text="<%$ Resources:lang, OrderByDefault%>" Value="OrderByDefault"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:lang, OrderByNameAsc%>" Value="OrderByNameAsc"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:lang, OrderByNameDesc%>" Value="OrderByNameDesc"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:lang, OrderByPriceAsc%>" Value="OrderByPriceAsc"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:lang, OrderByPriceDesc%>" Value="OrderByPriceDesc"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td id="pnlList" runat="server">
                                <asp:DataGrid ID="dlList" runat="server" Width="100%" PagerStyle-PrevPageText="Prev" PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages" AutoGenerateColumns="False" AllowSorting="True" CellPadding="3" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                                    <Columns>
                                        <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                                        <asp:TemplateColumn ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, ProductImage%>">
                                            <ItemTemplate>
                                                <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                    <img alt="<%# container.dataitem("ProductName") %>" title="<%# container.dataitem("ProductName") %>" class="thumb" src='<%# IIf(resizeimg=True,BaseUrl & "\uploads\productsimagesresize\" & Container.DataItem("Path"), BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60) %>' /></a>
                                            </ItemTemplate>

                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="False">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnkProductCode" runat="server" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductName%>">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
                                            <ItemTemplate>
                                                <asp:Label ID="Label38" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(Container.DataItem("BayiFiyati") * (Container.DataItem("Rate") / CurrencyRate), Container.DataItem("Indirim")), UserIndirim)) & " " & CurrencySymbolRight & GetGlobalResourceObject("lang", "PlusTax")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <%-- <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceForYou%>" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* (container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim))  & " " & CurrencySymbolRight & " + " &  GetGlobalResourceObject("lang", "PlusTax")%>'
                                                    Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>--%>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, IncludeTax%>">
                                            <ItemTemplate>
                                                <asp:Label ID="Label19" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(Container.DataItem("BayiFiyati") * (Container.DataItem("Rate") / CurrencyRate), Container.DataItem("Indirim")), UserIndirim), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight%>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Quantity%>" Visible="false">
                                            <ItemTemplate>
                                                <ew:NumericBox TextAlign="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" Width="30px" PositiveNumber="True">0</ew:NumericBox>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:LinkButton ID="btnAdd" CssClass="cartbutton" runat="server" CommandName="AddAll"><%=GetGlobalResourceObject("lang", "AddToCart")%></asp:LinkButton>
                                            </FooterTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, AddToCart%>">
                                            <ItemTemplate>
                                                <%--<asp:LinkButton ID="lnkAdd" runat="server" CssClass="cartbutton" CommandName="Add" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' CausesValidation="false"><%=GetGlobalResourceObject("lang", "AddToCart")%></asp:LinkButton>--%>
                                                <a id="btnAddToCart" class="cartbutton" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>' href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'>
                                                    <%=GetGlobalResourceObject("lang", "AddToCart")%>
                                                </a>

                                                <asp:Label ID="Label33" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'>
<%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                    <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages"></PagerStyle>
                                </asp:DataGrid>
                            </td>
                        </tr>
                        <tr>
                            <td id="pnlGalery" runat="server">
                                <asp:DataList ID="dlGalery" runat="server" DataKeyField="ProductId" RepeatDirection="Vertical" Width="100%" RepeatLayout="Table" RepeatColumns="4">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
                                    <ItemTemplate>
                                        <div id="product_container">
                                            <div id="product">
                                                <div id="product_outside">
                                                    <div id="product_inside">
                                                        <p style="display: none">
                                                            <asp:Label runat="server" ID="lblproductId" Text='<%# Container.DataItem("ProductId") %>'></asp:Label>
                                                        </p>
                                                        <div id="product_image">
                                                            <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId"))  %>'>
                                                                <asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%#IIf(resizeimg=True,BaseUrl & "\uploads\productsimagesresize\" & Container.DataItem("Path"), BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize) %>'></asp:Image></a>

                                                        </div>
                                                        <div id="product_name">
                                                            <asp:HyperLink ID="lnkProductName" runat="server" NavigateUrl='<%# String.Format(BaseUrl & "{0}" & ".aspx", Container.DataItem("ProductUrl").ToString.Remove(Container.DataItem("ProductUrl").ToString.Length - 1, 1), Container.DataItem("CatId"))%>' Text='<%# container.dataitem("ProductName")  %>'></asp:HyperLink>
                                                        </div>
                                                        <span style="display: none;">
                                                            <asp:Button ID="btnAddOfferList" runat="server" class="cartbutton" CommandArgument='<%# container.dataitem("ProductId") %>' Visible="true" Text="Listeye At" CommandName="Edit" CausesValidation="False"></asp:Button>
                                                        </span>
                                                        <a id="btnAddToCart" class="cartbutton" href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'><%= GetGlobalResourceObject("lang", "AddToCart")%></a>
                                                        <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") = "True" And HttpContext.Current.User.Identity.IsAuthenticated()) Or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") <> "True" Then%>

                                                        <div id="product_price">
                                                            <asp:Label ID="Label2" CssClass="old_price" runat="server"><%#IIf(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0, CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * (IIf(IsDBNull(Container.DataItem("RateP"))=True,1,Container.DataItem("RateP")) / CurrencyRate), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight, "")  %></asp:Label>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(Container.DataItem("BayiFiyati") * (Container.DataItem("Rate") / CurrencyRate), Container.DataItem("Indirim")), UserIndirim), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight%>'></asp:Label>
                                                        </div>
                                                        <%End If%>
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
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                                <div class="paging" align="right">
                                    <asp:Label ID="PagingLabel" runat="server"></asp:Label>
                                    <asp:Label ID="RecordsCount" runat="server" CssClass="RecordsCount"></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

            <script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
            <script type="text/javascript">
                $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_endRequest(function () {
                    $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                    $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
                });

                $("a[id='btnAddToOfferCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_endRequest(function () {
                    $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                    $("a[id='btnAddToOfferCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false, close: '<%=GetGlobalResourceObject("lang", "close") %>' });
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
</div>
