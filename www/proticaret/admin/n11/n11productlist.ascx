<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="n11productlist.ascx.vb" Inherits="ASPNetPortal.n11productlist" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageN11ProductList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>

            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
            </div>
            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li> 
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Category")%></label>
                                    <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductCode2")%></label>
                                    <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductCode "></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductCode "></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductName")%></label>
                                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductName + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductName + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductName "></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductName "></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Brand")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtMark" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Markext" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="MarkSelected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Author")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtAuthor" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Authorext" runat="server" TargetControlID="txtAuthor" ServicePath="/services/MarkService.asmx" ServiceMethod="GetAuthors" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="AuthorSelected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Publisher")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtPublisher" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Publisherext" runat="server" TargetControlID="txtPublisher" ServicePath="/services/MarkService.asmx" ServiceMethod="GetPublishers" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="PublisherSelected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="PublisherHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                    <asp:DropDownList ID="ddlActive" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault" Visible="true"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Provider")%></label>
                                    <asp:DropDownList ID="ddlProvider" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductManager")%></label>
                                    <asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Campaign")%></label>
                                    <asp:DropDownList ID="ddlCampain" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "PriceChangeHistory")%></label>
                                    <ew:NumericBox ID="txtAlFiyDeg" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlAlFiyDeg" runat="server">
                                        <asp:ListItem Value="-">-%</asp:ListItem>
                                        <asp:ListItem Value="+">+%</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%= GetGlobalResourceObject("admin","N11ProductSalesStatus") %></label>
                                    <asp:DropDownList ID="ddlN11SellStatus" runat="server">
                                        <asp:ListItem Text="-- Tümü --" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="Aktif" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Pasif" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductStatus")%></label>
                                    <asp:DropDownList ID="ddlOption" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,FastShipping %>" Value="HizliKargo"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,BestCheapProduct %>" Value="EnUcuzUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SameDayDelivery %>" Value="AyniGunTeslim"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SpecialtyProducts %>" Value="OzelUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,DiscountProduct %>" Value="IndirimliUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,LimitedNumberProducts %>" Value="SinirliSayidaUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,OpportunityProduct %>" Value="FirsatUrunu"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,NewProducts %>" Value="YeniUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PricedShockProduct %>" Value="SokFiyatliUrun"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,GiftProducts %>" Value="HediyeliUrun"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col" style="display: none;">
                                    <label><%=GetGlobalResourceObject("admin", "ConsumablesMaterial")%></label>
                                    <asp:DropDownList ID="ddlUsage" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col" style="display: none;">
                                    <label><%=GetGlobalResourceObject("admin", "Alternative")%></label>
                                    <asp:DropDownList ID="ddlAlternative" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col" style="display: none;">
                                    <label><%=GetGlobalResourceObject("admin", "Variant2")%></label>
                                    <asp:DropDownList ID="ddlVaryant" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "TextileGroup")%></label>
                                    <asp:DropDownList ID="ddlProductSizeOptions" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Picture")%></label>
                                    <asp:DropDownList ID="ddlImage" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Value="1">Resimli</asp:ListItem>
                                        <asp:ListItem Value="0">Resimsiz(T&#252;m&#252;)</asp:ListItem>
                                        <asp:ListItem Value="2">Resimsiz(Hazırlanıyor)</asp:ListItem>
                                        <asp:ListItem Value="3">Resimsiz(xml)</asp:ListItem>
                                        <asp:ListItem Value="4">Resimsiz(Yok)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "SpecialCode")%></label>
                                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlCode" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Code1 %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code2 %>" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code3 %>" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code4 %>" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code5 %>" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code6 %>" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code7 %>" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code8 %>" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code9 %>" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code10 %>" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code11 %>" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code12 %>" Value="12"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code13 %>" Value="13"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code14 %>" Value="14"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code15 %>" Value="15"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "DateAdded")%></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "PriceChangeHistory")%></label>
                                    <ew:CalendarPopup ID="Tarih3" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih4" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PriceRange")%></label>
                                    <asp:DropDownList ID="ddlFiyat" runat="server">
                                        <asp:ListItem>Alış</asp:ListItem>
                                        <asp:ListItem>Piyasa</asp:ListItem>
                                        <asp:ListItem>Havale</asp:ListItem>
                                        <asp:ListItem>1.Fiyat</asp:ListItem>
                                        <asp:ListItem>2.Fiyat</asp:ListItem>
                                        <asp:ListItem>3.Fiyat</asp:ListItem>
                                        <asp:ListItem>4.Fiyat</asp:ListItem>
                                        <asp:ListItem>5.Fiyat</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label>></label>
                                    <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlPb1" runat="server">
                                        <asp:ListItem>TL</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>
                                        <asp:ListItem>EURO</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><</label>
                                    <ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlPb2" runat="server">
                                        <asp:ListItem>TL</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>
                                        <asp:ListItem>EURO</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoadWeight")%></label>
                                    <ew:NumericBox ID="txtDesi1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtDesi2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "Remaining")%></label>
                                    <ew:NumericBox ID="txtEnvanter1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtEnvanter2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="dataForm">
                <div class="row">
                    <div class="col1-1">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "UpdatePrice")%></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "SourcePrice")%> :</label>
                                    <asp:DropDownList ID="ddlKaynakFiyat" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="SatisFiyati0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1Products %>" Value="SatisFiyati1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2Products %>" Value="SatisFiyati2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3Products %>" Value="SatisFiyati3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4Products %>" Value="SatisFiyati4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5Products %>" Value="SatisFiyati5"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Transaction")%> :</label>
                                    <asp:DropDownList ID="ddlFiyatIslem" onchange="SabitDeger();" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Plus %>" Selected="True" Value="+"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Minus %>" Value="-"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,FixedValue %>" Value="="></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Method")%> :</label>
                                    <asp:DropDownList ID="ddlFiyatYontem" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,ProductList2Rate %>" Value="%"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Amount %>" Value="1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Value")%> :</label>
                                    <ew:NumericBox ID="txtFiyatDeger" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="lblMsg2" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnUpdatePrice2" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,PriceUpdateBtn %>" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "InventoryUpdate")%></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Value")%> :</label>
                                    <ew:NumericBox ID="txtEnvanter" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="lblMsg5" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnEnvanter" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,InventoryUpdateBtn %>" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="colOne">
                                    <label><%= GetGlobalResourceObject("admin","N11TextileInventoryUpdate") %></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Value")%> :</label>
                                    <ew:NumericBox ID="txtTextileInventory" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%= GetGlobalResourceObject("admin","TextileProductBarcodeNo") %>:</label>
                                    <ew:NumericBox ID="txtBarcode" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="lblMsg6" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnTextileInventory" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,InventoryUpdateBtn %>" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="colOne">
                                    <label><%= GetGlobalResourceObject("admin","N11TextileInventoryUpdate1") %></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="Label1" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnBatchUpdateStok" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,InventoryUpdateBtn %>" />
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="colOne">
                                    <label><%= GetGlobalResourceObject("admin","N11SalesActiveorPassive") %></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%> :</label>
                                    <asp:DropDownList ID="ddlDurum" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="Label48" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnUpdateDurum" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,ProductStatusUpdateBtn %>" />
                                </div>
                            </div>
                            <hr />
                            <hr />
                            <div class="row">
                                <div class="colOne">
                                    <label><%=GetGlobalResourceObject("admin", "BulkProductDeletion")%></label>
                                    <div class="alert alert-info"><%=GetGlobalResourceObject("admin", "BulkProductDeletionMsg4")%> </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <label>
                                        <asp:Label ID="Label45" runat="server"></asp:Label></label>
                                    <asp:Button ID="btnDelete" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,DeleteProducts2 %>" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col1-3">
                        <div class="dataTable">
                            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True">
                                <Columns>
                                    <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode2 %>" ItemStyle-Width="110" SortExpression="ProductCode">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %>'><%#Eval("ProductCode")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,Brand %>"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="false" DataField="CODE1" SortExpression="CODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="<%$ Resources:admin,Remaining %>"></asp:BoundColumn>
                                    <asp:TemplateColumn SortExpression="IsActive" HeaderText="<%$ Resources:admin,Status %>">
                                        <ItemTemplate>
                                            <asp:CheckBox Enabled="false" ToolTip="Ürünü Aktif etmek için seçiniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,ColorOrSize %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink CssClass="btnIcon fancyContent" ID="Hyperlink7" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizes.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId")  %> '><i class="fa fa-th-list"></i>  </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,WizardTable %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink ToolTip="Ürün Teknik Özellikleri" CssClass="btnIcon fancyContent" ID="lnkto" runat="Server"
                                                NavigateUrl='<%# "/admin/ecommerce/wizard/editproductwizard.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") & "&WID=" & DataBinder.Eval(Container.DataItem,"WizardName")  %> '><i class="fa fa-table"></i>  </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Unit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink CssClass="btnIcon fancyContent" ID="Hyperlink4" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditUnits.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '><i class="fa fa-superscript"></i> 
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Picture %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <a class="btnIcon fancyContent" href='<%# "/admin/ecommerce/product/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId")  %> '>
                                                <i class="fa fa-picture-o"></i>
                                            </a>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:HyperLink ToolTip="Ürün Detayı" CssClass="fancyContent" ID="HyperLink1" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId")  %> '><i class="fa fa-pencil"></i> 
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Delete %>">
                                        <ItemTemplate>
                                            <asp:CheckBox ToolTip="Silmek İçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
                                            <%=GetGlobalResourceObject("admin", "All2")%>
                                        </FooterTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                            </asp:DataGrid>
                        </div>
                        <div class="dataCount">
                            <ul>
                                <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function MarkSelected(source, eventArgs) {
            hidobj = document.getElementById("<%=MarkHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }

        function AuthorSelected(source, eventArgs) {
            hidobj = document.getElementById("<%=AuthorHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }

        function PublisherSelected(source, eventArgs) {
            hidobj = document.getElementById("<%=PublisherHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }


        function SabitDeger() {
            ddl0 = document.getElementById("<%=ddlFiyatIslem.ClientID%>");
		    ddl1 = document.getElementById("<%=ddlFiyatYontem.ClientID%>");
		    if (ddl0.options[ddl0.selectedIndex].value == "=") {
		        ddl1.selectedIndex = 1
		        ddl1.disabled = true
		    }
		    else {
		        ddl1.disabled = false
		    }
		}
    </script>
</div>
