<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="AdvancedSearchResult.ascx.vb" Inherits="ASPNetPortal.AdvancedSearchResult" EnableViewState="True" %>
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

        <div class="moduleContent">
            <div id="info" runat="server" class="information"><asp:Label ID="lblInfo" runat="Server"></asp:Label></div>
            <div id="alert" runat="server" class="alert"><asp:Label ID="lblError" runat="Server"></asp:Label></div>
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
                                <asp:DataGrid ID="dlList" runat="server" Width="100%" PagerStyle-PrevPageText="Prev" PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages" AutoGenerateColumns="False" AllowSorting="True" CellPadding="3" EnableViewState="True" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                                    <Columns>
                                        <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                                        <asp:TemplateColumn ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, ProductImage%>">
                                            <ItemTemplate>
                                                <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                    <img alt="<%# container.dataitem("ProductName") %>" title="<%# container.dataitem("ProductName") %>" class="thumb" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60 %>' /></a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="False">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="lnkProductCode" runat="server" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductName%>">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                </asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceWithoutTax%>">
                                            <ItemTemplate>
                                                <asp:Label ID="Label38" runat="server" Text='<%#  CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("BayiFiyati")* (container.dataitem("Rate")/ CurrencyRate)) & " " & CurrencySymbolRight & "  " & GetGlobalResourceObject("lang", "PlusTax")%>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceForYou%>" Visible="False">
                                            <ItemTemplate>
                                                <asp:Label ID="Label7" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("BayiFiyati")* (container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim))  & " " & CurrencySymbolRight & " " &  GetGlobalResourceObject("lang", "PlusTax")%>'
                                                    Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, IncludeTax%>">
                                            <ItemTemplate>
                                                <asp:Label ID="Label19" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil((CalcIndirim(CalcIndirim(container.dataitem("BayiFiyati")* (container.dataitem("Rate")/ CurrencyRate),container.dataitem("Indirim")),UserIndirim)) / CurrencyRate,container.dataitem("KdvRate")))  & " " & CurrencySymbolRight   %>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Quantity%>" Visible="false" >
                                            <ItemTemplate>
                                                <ew:NumericBox TextAlign="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" Width="30px" PositiveNumber="True">1</ew:NumericBox>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:LinkButton ID="btnAdd" CssClass="cartbutton" runat="server" CommandName="AddAll"><%=GetGlobalResourceObject("lang", "AddToCart")%></asp:LinkButton>
                                            </FooterTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, AddToCart%>">
                                            <ItemTemplate>
                                                <a id="btnAddToCart" class="cartbutton" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>' href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId")  %>'>
                                                    <%=GetGlobalResourceObject("lang", "AddToCart")%>
                                                </a>
                                                <%-- <asp:LinkButton ID="lnkAdd" runat="server" CommandName="Update" Visible='<%# (container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE" ) %>' CausesValidation="false"><%=GetGlobalResourceObject("lang", "AddToCart")%></asp:LinkButton>--%>
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
                            	<div id="clickHome" class="fourContent" style="width:998px !important;">
                                    <asp:DataList ID="dlGalery" CssClass="clickHomeContent2 clearFix" runat="server" DataKeyField="ProductId" EnableViewState="False" RepeatLayout="Flow">
                                            <ItemStyle CssClass="homeProductContent radius5" HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
                                            <ItemTemplate>
                                            <div class="productContent clearFix">
                                            	<div class="productImage">
                                                    <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                                        <asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image></a>
                                                </div>
                                                <div class="productName">
                                                    <asp:HyperLink ID="lnkProductName" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                                        Text='<%# container.dataitem("ProductName")  %>'>
                                                    </asp:HyperLink>
                                                </div>
                                                <div class="productPrice">
                                                        <asp:Label ID="Label2" CssClass="old_price" runat="server"><%#IIf(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0, CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * (Container.DataItem("RateP")/ CurrencyRate), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight, "")  %></asp:Label>
                                                        <asp:Label ID="Label35" runat="server" Visible="false"><%=IIf(StokIskActive Or UserIndirim > 0 Or StokIsk > 1, GetGlobalResourceObject("lang", "PriceForYou"), GetGlobalResourceObject("lang", "Price"))%></asp:Label>
                                                        <asp:Label ID="Label37" runat="server" Text='<%# CurrencySymbolLeft & " " &  formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("BayiFiyati")* (container.dataitem("Rate") / CurrencyRate),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")))  & " " & CurrencySymbolRight  %>'>
                                                        </asp:Label>
                                                    </div>
                                                <div id="product_inside">
                                                    <p style="display: none">
                                                        <asp:HyperLink ID="HyperLink6q" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif(Request.QueryString.Item("tabId")="","","?tabId=" & Request.QueryString.Item("tabId")) %>'
                                                            Text='<%# container.dataitem("CatName") %>'>
                                                        </asp:HyperLink>
                                                    </p>                                                    
                                                    <div style="display: none">
                                                        <asp:Label ID="Label41" runat="server" Text='<%# container.dataitem("MarKName") %>'>
                                                        </asp:Label>
                                                    </div>
                                                    <div>
                                                        <asp:Label ID="Label45" runat="server" Text='<%# container.dataitem("Code14") %>'>
                                                        </asp:Label>
                                                    </div>
                                                    <div>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# container.dataitem("Code15") %>'>
                                                        </asp:Label>
                                                    </div>
                                                    <div>
                                                        <asp:Label ID="Label5q" runat="server" Text='<%# container.dataitem("Description") %>'>
                                                        </asp:Label>
                                                    </div>
                                                    <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") = "True" And HttpContext.Current.User.Identity.IsAuthenticated()) Or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice") <> "True" Then%>
                                                   
                                                    <div id="product_add" style="display:none;">
                                                        <a id="btnAddToCart" class="cartbutton" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>' href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'>
                                                            <%=GetGlobalResourceObject("lang", "AddToCart")%>
                                                        </a>
                                                        <asp:Label ID="Label31" runat="server" CssClass="stock_out" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <p style="display: none">
                                                        <asp:HyperLink ID="Hyperlink9" CssClass="lightbox button" runat="server" NavigateUrl='<%# BaseUrl & "/store/instalments.aspx?ProductId=" & container.dataitem("ProductId") %>'><%=GetGlobalResourceObject("lang", "InstalmentList")%></asp:HyperLink>
                                                    </p>
                                                    <% End If%>

                                                    <div id="homelabels">
                                                        <div id="FirsatUrunu" style="display: <%# iif(eval("FirsatUrunu"),"block;","none;") %>"></div>
                                                        <div id="IndirimliUrun" style="display: <%# iif((eval("IndirimliUrun")) and (ChkNullToDecimal(Eval("PiyasaFiyati")) > 0) ,"block;","none;") %>">%<%#CInt(GetPercent(ChkNullToDecimal(Eval("PiyasaFiyati")),ChkNullToDecimal(Eval("BayiFiyati")))) %><img src="<%=getThemePath()%>/images/icon_down.png" border="0" /></div>
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
                $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false });
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_endRequest(function () {
                    $(".lightbox").colorbox({ width: "300", height: "400", iframe: true, scrolling: false });
                    $("a[id='btnAddToCart']").colorbox({ width: "400", height: "300", iframe: true, scrolling: false });
                });
            </script>
        </div>
    </div>
</div>
