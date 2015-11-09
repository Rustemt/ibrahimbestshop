<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cEditProductList" CodeBehind="CEditProductList.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageEditProductList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

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
                                    <asp:TextBox ID="txtMark" autocomplete="off" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Markext" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="selected"
                                        CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Author")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtAuthor" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Authorext" runat="server" TargetControlID="txtAuthor"
                                        ServicePath="/services/MarkService.asmx" ServiceMethod="GetAuthors" MinimumPrefixLength="2"
                                        CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12"
                                        OnClientItemSelected="AuthorSelected" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                    </cc1:AutoCompleteExtender>
                                    <asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Publisher")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtPublisher" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="PublisherExt" runat="server" TargetControlID="txtPublisher"
                                        ServicePath="/services/MarkService.asmx" ServiceMethod="GetPublishers" MinimumPrefixLength="2"
                                        CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12"
                                        OnClientItemSelected="PublisherSelected" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                    </cc1:AutoCompleteExtender>
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
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> Ara</asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Provider")%>(xml)</label>
                                    <asp:DropDownList ID="ddlProvider" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Campaign")%></label>
                                    <asp:DropDownList ID="ddlCampain" runat="server"></asp:DropDownList>
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
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Code1")%></label>
                                    <asp:TextBox ID="txtCode1" runat="server"></asp:TextBox>
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
                                        <asp:ListItem>Alýþ</asp:ListItem>
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
                        <div class="tab">

                            <div id="report_container">

                                <div id="report_history">
                                    <div class="colGroup">
                                        <div class="col col4">
                                            <label>
                                                Tarih</label>
                                            <ew:CalendarPopup ID="cpStartDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                                                ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False">
                                            </ew:CalendarPopup>
                                            <asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                                            <ew:CalendarPopup ID="cpEndDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                                                ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False">
                                            </ew:CalendarPopup>
                                            <asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                                            <div class="col">
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
                                            </div>

                                        </div>
                                    </div>

                                    <div id="report_button">
                                        <asp:Label ID="lblScriptProductByStock" runat="server" />
                                        <asp:Label ID="lblScriptProductByPrice" runat="server" />
                                        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
                                    </div>
                                    <div class="clear"></div>
                                    <div id="report_content">

                                        <div class="clear"></div>

                                        <div id='pieProductByStock'></div>
                                        <div id='pieProductByPrice'></div>
                                        <div id='tableProductByStock'></div>
                                        <div id='tableProductByPrice'></div>

                                        <div class="clear"></div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="dataTable" style="overflow-x: scroll;">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
                    <Columns>
                        <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn Visible="False" DataField="UnitId"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode2 %>" SortExpression="ProductCode">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %>'><%#Eval("ProductCode")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,Brand %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Remaining %>">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtEnvanter" ToolTip="Yeni Envanter Miktarýný giriniz." runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"StockQty")%> ' Width="35px" TextAlign="Right" DecimalPlaces="0" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="BirimAdi" HeaderText="<%$ Resources:admin,Unit %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Stokta Yoksa Sat" Visible="false">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Stokta Yoksa Sat" ID="chkSellNoneStock" Checked='<%# DataBinder.Eval(Container.DataItem,"SellNoneStock")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PurchasePrice %>" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtAlisFiyati" ToolTip="Alýþ Fiyatý Giriniz" runat="server" Text='<%# formatCurDoviz( IIf(DataBinder.Eval(Container.DataItem,"KdvDahil")=True,CalcKdvDahil(DataBinder.Eval(Container.DataItem,"AlisFiyati"),DataBinder.Eval(Container.DataItem,"KdvRate")), DataBinder.Eval(Container.DataItem,"AlisFiyati")))%> ' Width="60px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                <%# DataBinder.Eval(Container.DataItem,"APb")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,TransferPrice %>" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtSatisFiyati0" ToolTip="Havale Fiyatýný Giriniz" runat="server" Text='<%# formatCurDoviz(IIf(DataBinder.Eval(Container.DataItem,"KdvDahil")=True,CalcKdvDahil(DataBinder.Eval(Container.DataItem,"SatisFiyati0"),DataBinder.Eval(Container.DataItem,"KdvRate")), DataBinder.Eval(Container.DataItem,"SatisFiyati0")))%> ' Width="60px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                <%#DataBinder.Eval(Container.DataItem, "Pb0")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice1Products %>" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtSatisFiyati1" ToolTip="1. Satýþ Fiyatýný Giriniz" runat="server" Text='<%#formatCurDoviz(IIf(DataBinder.Eval(Container.DataItem,"KdvDahil")=True,CalcKdvDahil(DataBinder.Eval(Container.DataItem,"SatisFiyati1"),DataBinder.Eval(Container.DataItem,"KdvRate")),  DataBinder.Eval(Container.DataItem,"SatisFiyati1")))%> ' Width="60px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                <%# DataBinder.Eval(Container.DataItem,"Pb1")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice2Products %>" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtSatisFiyati2" ToolTip="2. Satýþ Fiyatýný Giriniz" runat="server" Text='<%#formatCurDoviz(IIf(DataBinder.Eval(Container.DataItem,"KdvDahil")=True,CalcKdvDahil(DataBinder.Eval(Container.DataItem,"SatisFiyati2"),DataBinder.Eval(Container.DataItem,"KdvRate")),  DataBinder.Eval(Container.DataItem,"SatisFiyati2")))%> ' Width="60px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                <%# DataBinder.Eval(Container.DataItem,"Pb2")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice3Products %>" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtSatisFiyati3" ToolTip="3. Satýþ Fiyatýný Giriniz" runat="server" Text='<%#formatCurDoviz(IIf(DataBinder.Eval(Container.DataItem,"KdvDahil")=True,CalcKdvDahil(DataBinder.Eval(Container.DataItem,"SatisFiyati3"),DataBinder.Eval(Container.DataItem,"KdvRate")),  DataBinder.Eval(Container.DataItem,"SatisFiyati3")))%> ' Width="60px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                <%# DataBinder.Eval(Container.DataItem,"Pb3")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,LoadWeight %>">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtDesi" ToolTip="Desi Giriniz" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Desi")%> ' Width="30px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Kdv Oraný">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtkdv" Enabled="false" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"KdvRate")%> ' Width="40px" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="KdvDahil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="KdvDahil">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkKdvDahil" Checked='<%# DataBinder.Eval(Container.DataItem,"KdvDahil")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItemsc" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkKdvDahil', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Status %>">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Ürünü Aktif etmek için seçiniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItemsa" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkAktif', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="ShowInMainPage" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,HomePageShow %>">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Anasayfada göstermek için seçiniz." ID="chkShowInMainPage" Checked='<%# DataBinder.Eval(Container.DataItem,"ShowInMainPage")%> ' runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItemsb" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkShowInMainPage', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ShowOrder %>">
                            <ItemTemplate>
                                <ew:NumericBox ID="txtShowOrder" ToolTip="Gösterim Sýrasý giriniz." runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ShowOrder")%> ' Width="30px" TextAlign="Right" DecimalPlaces="0" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Picture %>" Visible="false">
                            <ItemTemplate>
                                <a data-width="500" data-height="400" class="fancyContent" href='<%# "/admin/ecommerce/product/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '>
                                    <i class="fa fa-picture-o"></i></a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ToolTip="Ürün Detayý" CssClass="fancyContent" ID="HyperLink1" runat="Server" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %>'><i class="fa fa-pencil"></i>></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Sil">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
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
            <div class="buttonGroup">
                <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Update %>" ToolTip="Seçili Ürünleri Silmek ve Durumlarý(Aktif/Pasif) güncelle"></asp:Button>
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
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
