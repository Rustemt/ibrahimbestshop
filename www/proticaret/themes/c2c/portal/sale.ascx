<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sale.ascx.vb" Inherits="ASPNetPortal.sale2" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<div id="homeproducts" class="module sales">
        <div class="moduleTitle">
            <%=GetGlobalResourceObject("lang", "ShippingForMembers")%>
        </div>
        
        <div id="sales" class="moduleContent moduleContentCol1">
            <div class="title3"><%=GetGlobalResourceObject("lang", "CustomerRepresentativeSearch")%></div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "CampanyCode")%> </label>
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddlCodeFilter" runat="server">
                    <asp:ListItem Value="like '%[]%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '[]%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%[]'" Text="<%$ Resources:lang, ends%>"></asp:ListItem>
                    <asp:ListItem Value="='[]'" Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "LoginName")%> </label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddlfilter" runat="server">
                    <asp:ListItem Value="like '%[]%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '[]%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%[]'" Text="<%$ Resources:lang, ends%>"></asp:ListItem>
                    <asp:ListItem Value="='[]'" Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label>E-mail</label>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddlemail" runat="server">
                    <asp:ListItem Value="like '%[]%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '[]%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%[]'" Text="<%$ Resources:lang, ends%>"></asp:ListItem>
                    <asp:ListItem Value="='[]'" Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "NameAndSureName")%></label>
                <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                    <asp:ListItem Value="like '%[]%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '[]%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%[]'" Text="<%$ Resources:lang, ends%>">r</asp:ListItem>
                    <asp:ListItem Value="='[]'" Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "SpecialCode")%></label>
                <asp:DropDownList ID="ddlusercodes" runat="server" AutoPostBack="true">
                    <asp:ListItem Value="0">--T&#252;m&#252;--</asp:ListItem>
                    <asp:ListItem Value="1">Kod1</asp:ListItem>
                    <asp:ListItem Value="2">Kod2</asp:ListItem>
                    <asp:ListItem Value="3">Kod3</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList runat="server" ID="ddlsubusercodes"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "ChooseMember")%></label>
                <asp:DropDownList runat="server" ID="ddlMembers"></asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ddlMembers" runat="server" ValidationGroup="member" ID="rfv1" InitialValue="0" ErrorMessage="Lütfen Üye Seçiniz"></asp:RequiredFieldValidator>
            </div>
            
            <div class="moduleContentCol1">
                <button id="btnsearch" runat="server" class="button"><%=GetGlobalResourceObject("lang", "Search")%></button>
                <%--<asp:Button Text="" runat="server" ID="btnsearch" CssClass="button" />--%>
            </div>
            
            <div class="clear"></div>
            
            <div class="title3"><%=GetGlobalResourceObject("lang", "SearchProduct")%></div>
            
            <div class="moduleContentCol3">
                 <label><%=GetGlobalResourceObject("lang", "Category")%></label>
                <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "StockType")%></label>
                <asp:DropDownList ID="ddlstoktype" runat="server"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "ProductCode")%></label>
                <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="like  @ProductCode + '%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%' + @ProductCode + '%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '%' + @ProductCode " Text="<%$ Resources:lang, ends%>"></asp:ListItem>
                    <asp:ListItem Value="= @ProductCode " Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "Barcode")%></label>
                <asp:TextBox ID="txtBarkod" runat="server"></asp:TextBox>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "ProductName")%></label>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="like  @ProductCode + '%'" Text="<%$ Resources:lang, starts%>"></asp:ListItem>
                    <asp:ListItem Value="like '%' + @ProductCode + '%'" Text="<%$ Resources:lang, contains%>"></asp:ListItem>
                    <asp:ListItem Value="like '%' + @ProductCode " Text="<%$ Resources:lang, ends%>"></asp:ListItem>
                    <asp:ListItem Value="= @ProductCode " Text="<%$ Resources:lang, equal%>"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3 inptSelect">
                <label><%=GetGlobalResourceObject("lang", "SpecialCode")%></label>
                <asp:DropDownList ID="ddlcodes" runat="server" AutoPostBack="true">
                    <asp:ListItem Value="0">--T&#252;m&#252;--</asp:ListItem>
                    <asp:ListItem Value="1">Kod1</asp:ListItem>
                    <asp:ListItem Value="2">Kod2</asp:ListItem>
                    <asp:ListItem Value="3">Kod3</asp:ListItem>
                    <asp:ListItem Value="4">Kod4</asp:ListItem>
                    <asp:ListItem Value="5">Kod5</asp:ListItem>
                    <asp:ListItem Value="6">Kod6</asp:ListItem>
                    <asp:ListItem Value="7">Kod7</asp:ListItem>
                    <asp:ListItem Value="8">Kod8</asp:ListItem>
                    <asp:ListItem Value="9">Kod9</asp:ListItem>
                    <asp:ListItem Value="10">Kod10</asp:ListItem>
                    <asp:ListItem Value="11">Kod11</asp:ListItem>
                    <asp:ListItem Value="12">Kod12</asp:ListItem>
                    <asp:ListItem Value="13">Kod13</asp:ListItem>
                    <asp:ListItem Value="14">Kod14</asp:ListItem>
                    <asp:ListItem Value="15">Kod15</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList runat="server" ID="ddlsubcode"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "Mark")%> </label>
                <asp:DropDownList runat="server" ID="ddlMarks"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "ProductView")%></label>
                <asp:DropDownList ID="ddlShow" CssClass="dropdownlist" runat="server"></asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "ProductOrderBy")%> :</label>
                <asp:DropDownList ID="ddlOrderBy" CssClass="dropdownlist" runat="server">
                    <asp:ListItem Text="<%$ Resources:lang, OrderByDefault%>" Value="OrderByDefault"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:lang, OrderByNameAsc%>" Value="OrderByNameAsc"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:lang, OrderByNameDesc%>" Value="OrderByNameDesc"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:lang, OrderByPriceAsc%>" Value="OrderByPriceAsc"></asp:ListItem>
                    <asp:ListItem Text="<%$ Resources:lang, OrderByPriceDesc%>" Value="OrderByPriceDesc"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label><%=GetGlobalResourceObject("lang", "ProductStatus")%> :</label>
                <asp:DropDownList ID="ddlurundurum" CssClass="dropdownlist" runat="server">
                    <asp:ListItem Text="Seçiniz" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Hızlı Kargo" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Aynı Gün Teslim" Value="2"></asp:ListItem>
                    <asp:ListItem Text="İndirimli Ürün" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Fırsat Ürünü" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Şok Fiyatlı Ürün" Value="5"></asp:ListItem>
                    <asp:ListItem Text="En Ucuz Ürün" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Özel Ürün" Value="7"></asp:ListItem>
                    <asp:ListItem Text="Sınırlı Sayıda" Value="8"></asp:ListItem>
                    <asp:ListItem Text="Yeni Ürün" Value="9"></asp:ListItem>
                    <asp:ListItem Text="Hediyeli Ürün" Value="10"></asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="moduleContentCol3">
                <label>&nbsp;</label>
                <label>
                    <%=GetGlobalResourceObject("lang", "ProductsInStock")%>
                    <asp:CheckBox ID="chkStock" runat="server"></asp:CheckBox>
                </label>
             </div>
            
            <div class="moduleContentCol3">
                <label>&nbsp;</label>
                <button id="btnsearchproduct" runat="server" class="button"><%=GetGlobalResourceObject("lang", "Search")%></button>
            </div>
        </div>
        
        <div id="filterproduct" class="moduleContent">
            <label><asp:Label ID="lblMsg" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "ProductsMsg1")%></asp:Label></label>
            <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblUrunListesi">
                <tr>
                    <td id="pnlList" runat="server" class="dataTable">
                        <asp:DataGrid ID="dlList" runat="server" Width="100%" PagerStyle-PrevPageText="Prev" PagerStyle-NextPageText="Next" PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages" AutoGenerateColumns="False" AllowSorting="True" CellPadding="3" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                            <Columns>
                                <asp:BoundColumn Visible="False" DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                                <asp:TemplateColumn ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, ProductImage%>">
                                    <ItemTemplate>
                                        <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                            <img alt="<%# container.dataitem("ProductName") %>" title="<%# container.dataitem("ProductName") %>" class="thumb" src='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=" & 60 %>' /></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="true">
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
                                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="<%$ Resources:lang, PriceWithoutTax%>" HeaderStyle-Width="100px">
                                    <ItemTemplate>
                                        <asp:Label ID="Label38" runat="server" Text='<%#  CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("SatisFiyati")* (container.dataitem("Rate")/ CurrencyRate)) & " " & CurrencySymbolRight & GetGlobalResourceObject("lang", "PlusTax")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" HeaderText="<%$ Resources:lang, IncludeTax%>">
                                    <ItemTemplate>
                                        <asp:Label ID="Label19" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(container.dataitem("SatisFiyati") * (container.dataitem("Rate")/ CurrencyRate),container.dataitem("KdvRate")))& " " & CurrencySymbolRight   %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, Quantity%>" Visible="true" HeaderStyle-Width="100px">
                                    <ItemTemplate>
                                        <asp:Label ID="lblprice" Visible="false" runat="server" Text='<%# Container.DataItem("SatisFiyati")%>'>
                                        </asp:Label>
                                        <span id="Div1" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>%<ew:NumericBox ID="nbdiscount" runat="server" Width="20px">0</ew:NumericBox><%=GetGlobalResourceObject("lang", "Discount")%>
                                        </span>
                                        <span style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                            <ew:NumericBox TextAlign="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" Width="10px" PositiveNumber="True">1</ew:NumericBox>
                                        </span><%= GetGlobalResourceObject("lang","Quantity2") %>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:lang, AddToCart%>">
                                    <ItemTemplate>
                                        <span style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                            <asp:LinkButton ID="btnadd" runat="server" ValidationGroup="member" CommandName="Delete" CssClass="cartbutton" Text='<%# GetGlobalResourceObject("lang", "AddToCart")%>'></asp:LinkButton>
                                        </span>
                                        <asp:Label ID="Label33" runat="server" Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn>
                                    <ItemTemplate>
                                        <span style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                            <asp:CheckBox ID="chkaddlist" runat="server"></asp:CheckBox>
                                        </span>

                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages"></PagerStyle>
                        </asp:DataGrid>
                    </td>
                </tr>
                <tr>
                    <td id="pnlGalery" runat="server">
                         <div id="clickHome" class="fourContent">
                            <asp:DataList ID="dlGalery" runat="server" DataKeyField="ProductId" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%" CssClass="">
                                <ItemStyle CssClass="homeProductContent radius5 moduleContentCol4" HorizontalAlign="Center" VerticalAlign="Top"></ItemStyle>
                                <ItemTemplate>
                                <div class="productImage">
                                    <asp:Label runat="server" ID="lblpid" Text='<%# container.dataitem("ProductId") %>' Visible="false" />
                                    <a href='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'>
                                        <asp:Image ID="Image1q" runat="server" BorderStyle="None" AlternateText='<%# container.dataitem("ProductName") %>' ToolTip='<%# container.dataitem("ProductName") %>' ImageUrl='<%# BaseUrl & "/store/makethumb.aspx?file=" + container.dataitem("Path") & "&intSize=" & intSize %>'></asp:Image>
                                    </a>
                                </div>
                                
                                <div class="productName">
                                    <asp:HyperLink ID="lnkProductName" runat="server"
                                        NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) & iif(Request.QueryString.Item("tabId")="","","&tabId=" & Request.QueryString.Item("tabId")) %>'
                                        Text='<%# container.dataitem("ProductName")  %>'>
                                    </asp:HyperLink>
                                </div>
                                
                                <div class="productFeatures" style="display:none;">
                                    <ul>
                                        <li>
                                            <span><%= GetGlobalResourceObject("lang","ProductMark") %>:</span>
                                            <asp:Label ID="Label41" runat="server" Text='<%# container.dataitem("MarKName") %>'></asp:Label>
                                        </li>
                                        <li>
                                            <span><%= GetGlobalResourceObject("lang","ProductCode") %>:</span>
                                            <asp:HyperLink ID="lnkProductCode" runat="server" Text='<%# container.dataitem("ProductCode") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("ProductUrl").tostring.Remove(container.dataitem("ProductUrl").tostring.Length - 1, 1),container.dataitem("CatId")) %>'></asp:HyperLink>
                                        </li>
                                        <li>
                                            <span class="description"></span>
                                            <asp:Label ID="Label5q" runat="server" Text='<%# container.dataitem("Description") %>'><%= GetGlobalResourceObject("lang","Description") %>:</asp:Label>
                                        </li>
                                    </ul>
                                </div>
                                  
                                <div style="display:none;">
                                    <asp:Label ID="Label45" runat="server" Text='<%# container.dataitem("Code14") %>'>
                                    </asp:Label>
                                </div>
                                    
                                <div style="display:none;">
                                    <asp:Label ID="Label1" runat="server" Text='<%# container.dataitem("Code15") %>'>
                                    </asp:Label>
                                </div>
                                    
                                <div class="productPrice">
                                    <asp:Label ID="Label2" CssClass="old_price" runat="server"><%#IIf(ChkNullToDecimal(Eval("PiyasaFiyati")) > 0, CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(Container.DataItem("PiyasaFiyati") * (Container.DataItem("RateP")/ CurrencyRate), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight, "")  %></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Visible="false"><%=IIf(StokIskActive Or UserIndirim > 0 Or StokIsk > 1, GetGlobalResourceObject("lang", "PriceForYou"), GetGlobalResourceObject("lang", "Price"))%></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcKdvDahil(CalcIndirim(CalcIndirim(Container.DataItem("SatisFiyati") * (Container.DataItem("Rate") / CurrencyRate), Container.DataItem("Indirim")), UserIndirim), Container.DataItem("KdvRate"))) & " " & CurrencySymbolRight%>'>
                                    </asp:Label>
                                    <asp:Label ID="lblprice" Visible="false" runat="server" Text='<%# Container.DataItem("SatisFiyati")%>'>
                                    </asp:Label>
                                </div>
                                    
                                <div class="moduleContentCol">
                                    <div class="moduleContentCol2">
                                        <div id="Div1" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                            %<ew:NumericBox ID="nbdiscount" runat="server">0</ew:NumericBox>
                                            <label><%= GetGlobalResourceObject("lang","Discount") %></label>
                                        </div>
                                    </div>
                                    
                                    <div class="moduleContentCol2">
                                        <div id="Qty" style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                            <ew:NumericBox TextAlign="Right" MaxLength="4" ID="txtQty" DecimalPlaces="0" runat="server" PositiveNumber="True">1</ew:NumericBox>
                                            <label><%= GetGlobalResourceObject("lang","Quantity2") %></label>
                                        </div>
                                    </div>
                                </div>
                                    
                                <div id="ud_container">
                                    <a id="ud" href='<%# BaseUrl & container.dataitem("Url")  %>' style='display: <%# iif(container.dataitem("ProductId") = container.dataitem("prodid"),"","none") %>' rel='lightbox' class='lightbox'></a>
                                </div>
                                    
                                <div id="productAdd">
                                    <span style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="True","","none") %>'>
                                        <asp:LinkButton ID="btnadd" runat="server" ValidationGroup="member" CommandName="Delete" CssClass="button" Text='<%# GetGlobalResourceObject("lang", "AddToCart")%>'></asp:LinkButton>
                                    </span>
                                    
                                    <asp:Label ID="Label33" runat="server" CssClass="stock_out"  Visible='<%# (container.dataitem("StockQty")<1 and (not container.dataitem("SellNoneStock")="TRUE") ) %>'><%=GetGlobalResourceObject("lang", "OutOfStockMsg")%></asp:Label>
                                </div>
                                    
                                <div style='display: <%# iif(container.dataitem("StockQty")>0 or container.dataitem("SellNoneStock")="TRUE","","none") %>'>
                                    <label><asp:CheckBox ID="chkadd" runat="server" /> <%= GetGlobalResourceObject("admin","AllBuy") %></label>
                                </div>
                                    
                                <div id="homelabels">
                                    <ul class="clearFix">
                                        <li id="FirsatUrunu" style="display: <%# iif(eval("FirsatUrunu"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Chance") %></li>
                                        <li id="IndirimliUrun" style="display: <%# iif((eval("IndirimliUrun")) and (ChkNullToDecimal(Eval("PiyasaFiyati")) > 0) ,"block;","none;") %>">%<%#CInt(GetPercent(ChkNullToDecimal(Eval("PiyasaFiyati")),ChkNullToDecimal(Eval("SatisFiyati")))) %></li>
                                        <li id="HizliKargo" style="display: <%# iif(eval("HizliKargo"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","FastShip") %></li>
                                        <li id="EnUcuzUrun" style="display: <%# iif(eval("EnUcuzUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Cheap") %></li>
                                        <li id="AyniGunTeslim" style="display: <%# iif(eval("AyniGunTeslim"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","SameDay") %></li>
                                        <li id="OzelUrun" style="display: <%# iif(eval("OzelUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Special") %></li>
                                        <li id="SinirliSayidaUrun" style="display: <%# iif(eval("SinirliSayidaUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Limited") %></li>
                                        <li id="YeniUrun" style="display: <%# iif(eval("YeniUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","New") %></li>
                                        <li id="SokFiyatliUrun" style="display: <%# iif(eval("SokFiyatliUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Shock") %></li>
                                        <li id="HediyeliUrun" style="display: <%# iif(eval("HediyeliUrun"),"block;","none;") %>"><%= GetGlobalResourceObject("lang","Gift") %></li>
                                    </ul>
                                </div>
                                
                                <div id="ud_container">
                                    <a id="ud" href='<%# BaseUrl & container.dataitem("Url")  %>' style='display: <%# iif(container.dataitem("ProductId") = container.dataitem("prodid"),"","none") %>' rel='lightbox' class='lightbox'></a>
                                </div>
                                </ItemTemplate>
                            </asp:DataList>
                            <div class="plasiyerButton">
                                <asp:Button ID="btnlistaddtotal" runat="server" class="cartbutton" Text="<%#isim %>" ValidationGroup="member" />
                                <asp:Button ID="btngaleryaddtotal" runat="server" class="cartbutton" Text="<%#isim %>" ValidationGroup="member" />
                            </div>
                            
                            <div class="paging" align="right" id="records" runat="server">
                                <asp:Label ID="PagingLabel" runat="server"></asp:Label>
                                <asp:Label ID="RecordsCount" runat="server" CssClass="RecordsCount"></asp:Label>
                            </div>
                            
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <div id="info" visible="false" runat="server" class="information"><%=GetGlobalResourceObject("lang", "CartMsg2")%></div>
        
        <div id="alert" visible="false" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
        
        <asp:Label ID="label" runat="server" />
</div>
