<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cProductList" Debug="False" CodeBehind="CProductList.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<div class="pageProductList">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"></asp:ScriptManager>--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="lblMsg" runat="server" CssClass="alert alert-info" Visible="false"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
            </div>
            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Geliþmiþ Arama"><i class="fa fa-search-plus"></i></div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Category")%></label>
                                    <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductType")%></label>
                                    <asp:DropDownList ID="ddlstoktype" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductCode2")%>/IND</label>
                                    <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductCode + '%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductCode "></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductCode "></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Barcode")%></label>
                                    <asp:TextBox ID="txtBarkod" runat="server" MaxLength="50"></asp:TextBox>
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
                                    <asp:TextBox ID="txtMark" runat="server" autocomplete="on"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Markext" runat="server" CompletionInterval="500" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                        CompletionSetCount="12" EnableCaching="true" FirstRowSelected="true" MinimumPrefixLength="2"
                                        OnClientItemSelected="selected" ServiceMethod="GetMarks" ServicePath="~/services/MarkService.asmx"
                                        TargetControlID="txtMark">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Author")%></label>
                                    <asp:TextBox ID="txtAuthor" runat="server" autocomplete="off"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Authorext" runat="server" CompletionInterval="500"
                                        CompletionListCssClass="autocomplete_completionListElement" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionSetCount="12" EnableCaching="true"
                                        FirstRowSelected="true" MinimumPrefixLength="2" OnClientItemSelected="AuthorSelected"
                                        ServiceMethod="GetAuthors" ServicePath="/services/MarkService.asmx" TargetControlID="txtAuthor">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Publisher")%></label>
                                    <asp:TextBox ID="txtPublisher" runat="server" autocomplete="off"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="PublisherExt" runat="server" CompletionInterval="500"
                                        CompletionListCssClass="autocomplete_completionListElement" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionSetCount="12" EnableCaching="true"
                                        FirstRowSelected="true" MinimumPrefixLength="2" OnClientItemSelected="PublisherSelected"
                                        ServiceMethod="GetPublishers" ServicePath="/services/MarkService.asmx" TargetControlID="txtPublisher">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="PublisherHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">

                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                    <asp:DropDownList ID="ddlActive" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Provider")%>(xml)</label>
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
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ConsumablesMaterial")%></label>
                                    <asp:DropDownList ID="ddlUsage" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Alternative")%></label>
                                    <asp:DropDownList ID="ddlAlternative" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>non<%=GetGlobalResourceObject("admin", "Alternative")%></label><asp:DropDownList ID="ddlnonAlternative" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ones %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Non %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
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
                                        <asp:ListItem Value="2">Resimsiz(Hazýrlanýyor)</asp:ListItem>
                                        <asp:ListItem Value="3">Resimsiz(xml)</asp:ListItem>
                                        <asp:ListItem Value="4">Resimsiz(Yok)</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "SpecialCode")%></label>
                                    <asp:TextBox ID="txtCode1" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlcodes" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code1 %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code2 %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code3 %>" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code4 %>" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code5 %>" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code6 %>" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code7 %>" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code8 %>" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code9 %>" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code10 %>" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code11 %>" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code12 %>" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code13 %>" Value="12"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code14 %>" Value="13"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Code15 %>" Value="14"></asp:ListItem>
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
                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="Alýþ"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="Piyasa"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="Havale"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1Products %>" Value="1.Fiyat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2Products %>" Value="2.Fiyat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3Products %>" Value="3.Fiyat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4Products %>" Value="4.Fiyat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5Products %>" Value="5.Fiyat"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label>&nbsp;</label>
                                    <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <asp:DropDownList ID="ddlPb1" runat="server">
                                        <asp:ListItem>TL</asp:ListItem>
                                        <asp:ListItem>USD</asp:ListItem>
                                        <asp:ListItem>EURO</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label>&nbsp;</label>
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
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
                    <Columns>
                        <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode2 %>" ItemStyle-Width="110" SortExpression="ProductCode">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %>'><%#Eval("ProductCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,Brand %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CODE1" Visible="False" SortExpression="CODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="<%$ Resources:admin,Remaining %>"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Status %>">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Ürünü Aktif etmek için seçiniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItemsa" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkAktif', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,ConsumablesMaterial %>">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Sarf Malzemeleri" CssClass="btnIcon fancyContent" ID="Hyperlink6" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditUsages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '><i class="fa fa-sitemap"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Alternative %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink5" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditAlteratives.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> ' ToolTip="Ürün Alternatifleri"><i class="fa fa-star"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,nonAlternative %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="hypnon" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/editNonAlteratives.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> ' ToolTip="Ürünün nonAlternatifleri"><i class="fa fa-exchange"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Variant2 %>">
                            <ItemTemplate>
                                <asp:HyperLink CssClass="btnIcon fancyContent" ID="Hyperlink7a" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProductVariants.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-arrows"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,ColorOrSize %>">
                            <ItemTemplate>
                                <asp:HyperLink CssClass="btnIcon fancyContent" ID="Hyperlink7" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizes.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '><i class="fa fa-th-list"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Depo Env.">
                            <ItemTemplate>
                                <asp:HyperLink CssClass="btnIcon fancyContent" ID="hypstorage" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/editproductstorage.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '>
                                   <i class="fa fa-codepen"></i> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Set">
                            <ItemTemplate>
                                <asp:HyperLink CssClass="btnIcon fancyContent" ID="hypgroups" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditGroups.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '>
                                   <i class="fa fa-cubes"></i> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Unit %>">
                            <ItemTemplate>
                                <asp:HyperLink CssClass="btnIcon fancyContent" ID="Hyperlink4" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditUnits.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '><i class="fa fa-superscript"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Picture %>">
                            <ItemTemplate>
                                <a class="btnIcon fancyContent" href='<%# "/admin/ecommerce/product/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '>
                                    <i class="fa fa-picture-o"></i></a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Video">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Ürün Videosu" CssClass="btnIcon fancyContent" ID="lnkvideo" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditVideo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-video-camera"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,ThreeDPicture %>">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Ürün 3D Resmi" CssClass="btnIcon fancyContent" ID="lnk3dPicture" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/Edit3dPicture.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><i class="fa fa-cube"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Teknik Tablo" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Ürün Teknik Özellikleri" CssClass="btnIcon fancyContent" ID="lnkto" runat="Server" NavigateUrl='<%# "/admin/ecommerce/wizard/editproductwizard.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  "" %> '><i class="fa fa-table"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Ürün Detayý" CssClass="btnIcon fancyContent" ID="HyperLink1" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="20"></PagerStyle>
                </asp:DataGrid>
            </div>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
            <div class="buttonGroup">
                <asp:Button ID="btnexportxml" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportXml %>" />
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>" />
                <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,UpdateorDeleteProduct %>" />
            </div>
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        function selected(source, eventArgs) {
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
    </script>
</div>
