<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.homeproductsbooks" Codebehind="homeproductsbooks.ascx.vb" %>
<div id="homeproducts" class="module hBook">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit">
            <%=EditText %></a>
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

	<div class="moduleContent">
    <label><asp:label id="lblMsg" runat="server" visible="False"><%=GetGlobalResourceObject("lang", "ProductsMsg1")%></asp:label></label>
    <asp:updatepanel id="UpdatePanel1" runat="server" updatemode="Conditional">
        <contenttemplate>
            <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblUrunListesi">
                <tr class="filterContainer">
                    <td align="right">
                        <table cellspacing="0" cellpadding="8" border="0">
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "ProductsInStock")%></td>
                                <td><asp:CheckBox ID="chkStock" runat="server" AutoPostBack="True"></asp:CheckBox></td>
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
                            <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND">
                            </asp:BoundColumn>
                            <asp:TemplateColumn ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, ProductImage%>">
                            <ItemTemplate><a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                            <img alt="<%# container.dataitem("ProductName") %>" title="<%# container.dataitem("ProductName") %>" class="thumb" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60 %>' /></a> </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn  HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="False">
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
                            <asp:Label ID="Label38" runat="server" Text='<%#  CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("SatisFiyati")) & " " & CurrencySymbolRight & " " & GetGlobalResourceObject("lang", "PlusTax")%>'></asp:Label>
                            </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, PriceForYou%>" Visible="False">
                            <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  + " " + container.dataitem("CurrencyName") + GetGlobalResourceObject("lang", "PlusTax")%>'
                                Visible='<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>'>
                            </asp:Label>
                            </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, IncludeTax%>">
                            <ItemTemplate>
                            <asp:Label ID="Label19" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(container.dataitem("SatisFiyati") * (container.dataitem("Rate")/ CurrencyRate),container.dataitem("KdvRate")))& " " & CurrencySymbolRight   %>'>
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
                            <a id="btnAddToCart" class="button" style='display:<%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'  href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'>
                                <%=GetGlobalResourceObject("lang", "AddToCart")%>
                            </a>
                            <asp:Label ID="Label33" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>' >
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
                        <asp:DataList ID="dlGalery" runat="server" DataKeyField="ProductId" Width="100%" EnableViewState="False" RepeatLayout="Flow">
							<ItemStyle CssClass="homeProductContent radius5 moduleContentCol4" HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
                            
                            <ItemTemplate>
                             <div class="productContent clearFix">
                                <p style="display:none">
                                    <asp:HyperLink ID="HyperLink6q" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("CatUrl").tostring.Remove(container.dataitem("CatUrl").tostring.Length - 1, 1) ) & iif(Request.QueryString.Item("tabId")="","","?tabId=" & Request.QueryString.Item("tabId")) %>'
                                    Text='<%# container.dataitem("CatName") %>'>
                                    </asp:HyperLink>
                                </p>
                            
                                <div class="productImage">
                                    <a href='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                    <asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image></a>
                                </div>
                            
                                <div class="productName">
                                    <asp:HyperLink ID="lnkProductName" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx?CatId={1}",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                    Text='<%# container.dataitem("ProductName")  %>'>
                                    </asp:HyperLink>
                                </div>
                            
                                <div style="display:none"></div>
                                
                                <div class="productFeatures">
                                    <ul>
                                        <li>
                                        	<span>Yazar:</span>
                                            <asp:HyperLink ID="lnkauth" runat="server" NavigateUrl='<%# BaseUrl & IIf(Request.QueryString.Item("tabId") = "", "/default.aspx?auth=" & ChkNullToNumber(container.dataitem("AuthorId")), "/default.aspx?tabId=" & Request.QueryString.Item("tabId") & "&auth=" & ChkNullToNumber(container.dataitem("AuthorId"))) %>' Text='<%# iif(ChkNullToNumber(container.dataitem("AuthorId"),0)>0,container.dataitem("AuthorName"),"") %>'></asp:HyperLink>
                                        </li>
                                        <li>
                                        	<span>Yayýn evi:</span>
                                            <asp:HyperLink ID="lnkPub" runat="server" NavigateUrl='<%# BaseUrl & IIf(Request.QueryString.Item("tabId") = "", "/default.aspx?pub=" & ChkNullToNumber(container.dataitem("PublisherId")), "/default.aspx?tabId=" & Request.QueryString.Item("tabId") & "&pub=" & ChkNullToNumber(container.dataitem("PublisherId"))) %>' Text='<%# iif(ChkNullToNumber(container.dataitem("AuthorId"),0)>0,container.dataitem("PublisherName"),"") %>'></asp:HyperLink>
                                        </li>
                                        <li style="display:none;">
                                        	<span>Marka</span>
                                        	<asp:Label ID="Label41" runat="server" Text='<%# container.dataitem("MarKName") %>'></asp:Label>
                                        </li>
                                    </ul>
                                </div>
                            
                                <div><asp:Label ID="Label45" runat="server" Text='<%# container.dataitem("Code14") %>'></asp:Label></div>
                                
                                <div><asp:Label ID="Label1" runat="server" Text='<%# container.dataitem("Code15") %>'></asp:Label></div>
                                
                                <div><asp:Label ID="Label5q" runat="server" Text='<%# container.dataitem("Description") %>'></asp:Label></div>
                                
                            <% If (ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")="True" and HttpContext.Current.User.Identity.IsAuthenticated()) or ConfigurationManager.AppSettings("OnlyUsersCanSeePrice")<>"True" Then  %>
                           
                            <div class="productAdd">
                                <a id="btnAddToCart" class="button" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'
                                    href='<%# BaseUrl & "/store/addtocartpopup.aspx?ProductId=" & container.dataitem("ProductId") %>'>
                                </a>
                                <!---->
                                <asp:Label ID="Label31" runat="server" CssClass="stock_out" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                            </div>
                            
                            <div class="productPrice clearFix">
                                <asp:Label ID="Label2" CssClass="old_price" runat="server"><%#IIf(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0, CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * (Container.DataItem("RateP")/ CurrencyRate), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight, "")  %></asp:Label>
                                <asp:Label ID="Label35" runat="server" Visible="false"><%=IIf(StokIskActive Or UserIndirim > 0 Or StokIsk > 1, GetGlobalResourceObject("lang", "PriceForYou"), GetGlobalResourceObject("lang", "Price"))%></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text='<%# CurrencySymbolLeft & " " &  formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* (container.dataitem("Rate") / CurrencyRate),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")))  & " " & CurrencySymbolRight  %>'>
                                </asp:Label>
                            </div>
                            
                            <div class="clear"></div>
                            
                            <p style="display:none">
                            	<asp:HyperLink ID="Hyperlink9" CssClass="lightbox button" runat="server" NavigateUrl='<%# BaseUrl & "/store/instalments.aspx?ProductId=" & container.dataitem("ProductId") %>'><%=GetGlobalResourceObject("lang", "InstalmentList")%></asp:HyperLink>
                            </p>
                            <% end if %>
                            
                            <div id="homelabels">
                                <ul class="clearFix">
                                    <li id="FirsatUrunu" style="display: <%# iif(eval("FirsatUrunu"),"block;","none;") %>">
                                        Fyrsat</li>
                                    <li id="IndirimliUrun" style="display: <%# iif((eval("IndirimliUrun")) and (ChkNullToDecimal(Eval("PiyasaFiyati")) > 0) ,"block;","none;") %>">
                                        %<%#CInt(GetPercent(ChkNullToDecimal(Eval("PiyasaFiyati")),ChkNullToDecimal(Eval("SatisFiyati")))) %></li>
                                    <li id="HizliKargo" style="display: <%# iif(eval("HizliKargo"),"block;","none;") %>">
                                    </li>
                                    <li id="EnUcuzUrun" style="display: <%# iif(eval("EnUcuzUrun"),"block;","none;") %>">
                                        Ucuz</li>
                                    <li id="AyniGunTeslim" style="display: <%# iif(eval("AyniGunTeslim"),"block;","none;") %>">
                                        Ayny Gün</li>
                                    <li id="OzelUrun" style="display: <%# iif(eval("OzelUrun"),"block;","none;") %>">Özel</li>
                                    <li id="SinirliSayidaUrun" style="display: <%# iif(eval("SinirliSayidaUrun"),"block;","none;") %>">
                                        Synyrly</li>
                                    <li id="YeniUrun" style="display: <%# iif(eval("YeniUrun"),"block;","none;") %>">Yeni</li>
                                    <li id="SokFiyatliUrun" style="display: <%# iif(eval("SokFiyatliUrun"),"block;","none;") %>">
                                        ?ok</li>
                                    <li id="HediyeliUrun" style="display: <%# iif(eval("HediyeliUrun"),"block;","none;") %>">
                                        Hediye</li>
                                </ul>
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
        </contenttemplate>
    </asp:updatepanel>
    <script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
    <script type="text/javascript">  			
		$(".lightbox").colorbox({width:"300", height:"400", iframe:true,scrolling:false});
		$("a[id='btnAddToCart']").colorbox({width:"400", height:"300", iframe:true,scrolling:false,close:'<%=GetGlobalResourceObject("lang", "close") %>'});
		var prm = Sys.WebForms.PageRequestManager.getInstance();
		prm.add_endRequest(function() {
		$(".lightbox").colorbox({width:"300", height:"400", iframe:true,scrolling:false});
		$("a[id='btnAddToCart']").colorbox({width:"400", height:"300", iframe:true,scrolling:false,close:'<%=GetGlobalResourceObject("lang", "close") %>'});
		});
    </script>
    </div>
</div>
 <%-- Kdv Haric--%>
 <%-- (181 line)
<p style="display:<%# iif(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0,"block;","none;") %>">
<asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("lang", "PriceMarket")%></asp:Label>
<asp:Label ID="Label8" runat="server"><%#formatCurDoviz(Container.DataItem("PiyasaFiyati")) + " " + Container.DataItem("CurrencyP") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>                                                                                        
</p>
 
<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati3")) > 0,"block;","none;") %>">                                                                          
<asp:Label ID="lblFiyat3" runat="server"><%=GetGlobalResourceObject("lang", "Price3")%></asp:Label>
<asp:Label ID="lblFiyat3b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati3")) + " " + Container.DataItem("Currency3") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>                                                                                        
</p>

<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati2")) > 0,"block;","none;") %>">                                                                              
<asp:Label ID="lblFiyat2" runat="server"><%=GetGlobalResourceObject("lang", "Price2")%></asp:Label>
<asp:Label ID="lblFiyat2b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati2")) + " " + Container.DataItem("Currency2") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
</p>

<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati1")) > 0,"block;","none;") %>">                                                                              
<asp:Label ID="lblFiyat1" runat="server"><%=GetGlobalResourceObject("lang", "Price1")%></asp:Label>
<asp:Label ID="lblFiyat1b" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati1")) + " " + Container.DataItem("Currency1") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
</p>

<p>
<asp:Label ID="lblFiyat" runat="server"><%=GetGlobalResourceObject("lang", "Price")%></asp:Label>                                                    
<asp:Label ID="lblFiyatb" runat="server"><%#formatCurDoviz(Container.DataItem("SatisFiyati")) + " " + Container.DataItem("CurrencyName") + GetGlobalResourceObject("lang", "PlusTax")%></asp:Label>
</p>

<p>
<asp:Label ID="Label11" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>"><%=GetGlobalResourceObject("lang", "PriceForYou")%></asp:Label>
<asp:Label ID="Label13" runat="server" Visible="<%# (StokIskActive  or UserIndirim>0 Or StokIsk > 1) %>" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati"),container.dataitem("Indirim")),UserIndirim))  + " " + container.dataitem("CurrencyName") + GetGlobalResourceObject("lang", "PlusTax") %>'>
</asp:Label>
</p>--%>
<%-- Kdv Dahil--%>
<%--<p style="display:<%# iif(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0,"block;","none;") %>">                                                                               
<asp:Label ID="Label12" runat="server"><%=GetGlobalResourceObject("lang", "PriceMarket")%></asp:Label>
<asp:Label ID="Label14" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * Container.DataItem("RateP"), Container.DataItem("KdvRate")))%></asp:Label>                                                                                        
</p>

<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati3")) > 0,"block;","none;") %>">                                                                               
<asp:Label ID="lblFiyat3Kdv" runat="server"><%=GetGlobalResourceObject("lang", "Price3")%></asp:Label>
<asp:Label ID="lblFiyat3Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati3") * Container.DataItem("Rate3"), Container.DataItem("KdvRate")))%></asp:Label>                                                                                        
</p>

<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati2")) > 0,"block;","none;") %>">                                                                                
<asp:Label ID="lblFiyat2Kdv" runat="server"><%=GetGlobalResourceObject("lang", "Price2")%></asp:Label>
<asp:Label ID="lblFiyat2Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati2") * Container.DataItem("Rate2"), Container.DataItem("KdvRate")))%></asp:Label>
</p>

<p style="display:<%# iif(ChkNullToDecimal(Eval("SatisFiyati1")) > 0,"block;","none;") %>">                                                                              
<asp:Label ID="lblFiyat1Kdv" runat="server"><%=GetGlobalResourceObject("lang", "Price1")%></asp:Label>
<asp:Label ID="lblFiyat1Kdvb" runat="server"><%#formatCurTL(CalcKdvDahil(Container.DataItem("SatisFiyati1") * Container.DataItem("Rate1"), Container.DataItem("KdvRate")))%></asp:Label>
</p>--%>
<%--<p>
<asp:Label ID="Label9" runat="server" Visible='<%# (HavaleIndirimi>0 Or (ChkNullToNumber(container.dataitem("SatisFiyati0")) > 0 And ChkNullToNumber(container.dataitem("Rate0")) > 0)) %>'><%=GetGlobalResourceObject("lang", "PriceTrasfer")%></asp:Label>
<asp:Label ID="Label10" runat="server" Visible='<%# (HavaleIndirimi>0 Or (ChkNullToNumber(container.dataitem("SatisFiyati0")) > 0 And ChkNullToNumber(container.dataitem("Rate0")) > 0)) %>' Text='<%# iif(container.dataitem("Satisfiyati0")>0, formatCurTL(CalcKdvDahil(CalcIndirim(container.dataitem("SatisFiyati0")* container.dataitem("Rate"),UserIndirim),container.dataitem("KdvRate"))) ,formatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim), HavaleIndirimi),container.dataitem("KdvRate"))))   %>'>
</asp:Label>
</p>

<p>
<asp:Label ID="Label5" runat="server" Visible="<%# (KrediKartiIndirimi>0) %>"><%=GetGlobalResourceObject("lang", "PriceCreditCard")%></asp:Label>
<asp:Label ID="Label6" runat="server" Visible="<%# (KrediKartiIndirimi>0) %>" Text='<%# formatCurTL(CalcKdvDahil(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),KrediKartiIndirimi),container.dataitem("KdvRate")))  %>'>
</asp:Label>
</p>

<p>
<asp:Label ID="lblTaksitliFiyatiLabel" runat="server"><%=GetGlobalResourceObject("lang", "PriceCreditInstalment")%></asp:Label>
<asp:Label ID="lblTaksitliFiyati" runat="server" Text='<%#formatCurTL(CalcKdvDahil(CalcKdvDahil(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")* container.dataitem("Rate"),container.dataitem("Indirim")),UserIndirim),container.dataitem("KdvRate")), CreditCardMinRate)/iif(CreditCardMaxTaksit>0,CreditCardMaxTaksit,1))   %>'>
</asp:Label>
</p>
--%>
