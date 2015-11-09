<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.corderlistdetails" CodeBehind="corderlistdetails.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageOrderListDetails">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderId DESC</asp:Label>

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
                                    <label><%=GetGlobalResourceObject("admin", "OrderNoCode")%></label>
                                    <asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                    <asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "UserName")%></label>
                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlfilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "Email")%></label>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlemail" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "OrderDate")%></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Shipping")%></label>
                                    <asp:DropDownList ID="ddlKargo" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Provider")%></label>
                                    <asp:DropDownList ID="ddlProvider" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="--T&#252;m&#252;--"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "ProductManager")%></label>
                                    <asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PaymentType")%></label>
                                    <asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PaymentBank")%></label>
                                    <asp:DropDownList ID="ddlBank" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductName")%></label>
                                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlProductName" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "MarkName")%></label>
                                    <asp:TextBox autocomplete="off" ID="txtMark" runat="server"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="Markext" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500"
                                        FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" CompletionListCssClass="autocomplete_completionListElement"
                                        CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                    </cc1:AutoCompleteExtender>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "DeliveryName")%></label>
                                    <asp:TextBox ID="txtShipName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlShip" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "BillingName")%></label>
                                    <asp:TextBox ID="txtBill" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlBill" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Discount")%></label>
                                    <asp:DropDownList ID="ddlIndirim" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="--T&#252;m&#252;--"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Reduced %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Discounted %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "GiftCoupon")%></label>
                                    <asp:DropDownList ID="ddlCek" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="--T&#252;m&#252;--"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CouponUsed %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CouponUnused %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Integration")%></label>
                                    <asp:DropDownList ID="ddlIntegrated" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="--T&#252;m&#252;--"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Integrated %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,NotIntegrated %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "InstallmentRange")%></label>
                                    <ew:NumericBox ID="txttaksit1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txttaksit2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "TotalAmount")%></label>
                                    <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoadWeightRange")%></label>
                                    <ew:NumericBox ID="txtDesi1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtDesi2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "DeliveryDate")%></label>
                                    <ew:CalendarPopup ID="Tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih22" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" PageSize="50" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                    <Columns>
                        <asp:BoundColumn DataField="OrderId" SortExpression="OrderId" HeaderText="Sipariþ No" Visible="false"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="OrderId" HeaderText="<%$ Resources:admin,OrderNoCode %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink4" runat="Server" data-width="1250" data-height="600" CssClass="btnLink fancyContent" NavigateUrl='<%# String.Format("{0}/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0 & "", BaseUrl)%> '><%#Eval("OrderId") & "/" & Eval("OrderCode")%></asp:HyperLink></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>" SortExpression="PaymentType">
                            <ItemTemplate>
                                <asp:Label ID="Label30" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "<br/>" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="StatusName" HeaderText="<%$ Resources:admin,Status %>">
                            <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="OrderDate" SortExpression="OrderDate" HeaderText="<%$ Resources:admin,OrderDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ShipDate" SortExpression="ShipDate" HeaderText="<%$ Resources:admin,SendingDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                        <%--
				<asp:BoundColumn DataField="ShippingName" SortExpression="ShippingName" HeaderText="Teslimat Adý"></asp:BoundColumn>
                        --%>
                        <asp:BoundColumn DataField="BillingName" SortExpression="BillingName" HeaderText="<%$ Resources:admin,BillingName %>"></asp:BoundColumn>
                        <%--
				<asp:BoundColumn DataField="ProductCode" HeaderText="&#220;r&#252;n Kodu"></asp:BoundColumn>
                        --%>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductName %>">
                            <ItemTemplate>
                                <asp:Label ID="Label29" runat="server" Text=''></asp:Label>
                                <asp:HyperLink ID="HyperLink12x" runat="Server" CssClass="btnLink fancyContent" ToolTip="Ürün Detayý" NavigateUrl='<%#"/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '><%# DataBinder.Eval(Container, "DataItem.ProductName") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Ürün Özellikleri">
                            <ItemTemplate>
                                <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="Note" HeaderText="<%$ Resources:admin,Note %>"></asp:BoundColumn>
                        <asp:BoundColumn Visible="false" DataField="Aciklama" HeaderText="<%$ Resources:admin,Description %>"></asp:BoundColumn>
                        <%--
				<asp:BoundColumn DataField="ProviderName" HeaderText="Tedarik&#231;i"></asp:BoundColumn>
                        --%>
                        <asp:TemplateColumn ItemStyle-Wrap="false" HeaderText="<%$ Resources:admin,Quantity %>">
                            <ItemTemplate>
                                <asp:Label ID="lblMiktar" runat="server" Text='<%# container.dataitem("Quantity") & IIf(CInt(chknulltonumber(container.dataitem("StockQty2"))) > 0,"(" & chknulltonumber(container.dataitem("StockQty2")) & ")", "") %>'></asp:Label>
                                <%--
						<asp:Label ID="lblDepoMiktar" visible='<%#IIf(CInt(container.dataitem("StockQty2")) > 0, "True", "False")%>' runat="server" Text='<%# "-" & container.dataitem("StockQty2") %>'></asp:Label>
                                --%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PurchasePrice %>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="AlisTutar" runat="server" Text='<%# FormatCurDoviz(CalcRate(container.dataitem("AlisFiyati") , container.dataitem("AlisRate") / container.dataitem("CurrencyRate")) * container.dataitem("Quantity")) & " " & container.dataitem("CurrencyCode")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SalesPrice %>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Tutar" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(Container.DataItem("SatisFiyati"), Container.DataItem("Rate") / Container.DataItem("CurrencyRate")), Container.DataItem("BirimIndirimOrani")), Container.DataItem("CariIndirimOrani")) * Container.DataItem("Quantity"))& " " & container.dataitem("CurrencyCode")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Provider %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkted" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/providers/ProviderInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProviderId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "OrderId") & ""%> '><%#DataBinder.Eval(Container, "DataItem.ProviderName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="Personel" Visible="false" HeaderText="<%$ Resources:admin,Responsible %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# String.Format("{0}/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0 & "", BaseUrl)%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="50"></PagerStyle>
                </asp:DataGrid>
            </div>

            <div class="buttonGroup">
                <asp:Button ID="btnExport2" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelDetailed %>" />
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
