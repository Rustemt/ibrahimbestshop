<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/admin/admin.Master" CodeBehind="default.aspx.vb" Inherits="ASPNetPortal._default7" %>

<%@ Register TagPrefix="cc1" Namespace="UNLV.IAP.WebControls" Assembly="DropDownCheckList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Panel ID="pnl" runat="server"></asp:Panel>

    <asp:Panel ID="pnlmain" runat="server">

        <% If PortalSecurity.IsInRole("Yöneticiler;Eticaret Yöneticileri;Kategori Yöneticileri;Ürün Yöneticileri;Sipariş Yöneticileri") Then%>

        <div class="boxToggle statics">
            <div class="toggleTitle tTitleBig">
                <div class="titleToggle"></div>
                <div class="titleFilter">
                    <ul class="tabMenu">
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Today")%></a></li>
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Weekly")%></a></li>
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Monthly")%></a></li>
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Yearly")%></a></li>
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "All2")%></a></li>
                    </ul>
                    <div class="clear"></div>
                </div>

                <div class="clear"></div>
            </div>
            <div class="toggleContent">
                <div class="tabContent">
                    <div class="tab">
                        <div class="staticsList">
                            <ul>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblTodayCiro" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalRevenue")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblTodayOrder" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalOrderQuantity")%></span>
                                </li>

                                <li class="col3">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblTodayCancelOrder" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Toplam İade</span>
                                </li>

                                <li class="col4">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblTodayCartAvg" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Sepet Ortalaması</span>
                                </li>

                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblTodayProduct" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalProductQuantity")%></span>
                                </li>

                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblTodayUser" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalCustomerQuantity")%></span>
                                </li>

                                <li class="col3">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblTodayPayments" runat="server"></asp:Label></span>
                                    <span class="staticsText">Toplam Online Ödeme</span>
                                </li>

                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="staticsList">
                            <ul>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblWeekCiro" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalRevenue")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblWeekOrder" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalOrderQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblWeekCancelOrder" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Toplam İade</span>
                                </li>

                                <li class="col4">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblWeekCartAvg" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Sepet Ortalaması</span>
                                </li>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblWeekProduct" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalProductQuantity")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblWeekUser" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalCustomerQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblWeekPayments" runat="server"></asp:Label></span>
                                    <span class="staticsText">Toplam Online Ödeme</span>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="staticsList">
                            <ul>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblMonthCiro" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalRevenue")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblMonthOrder" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalOrderQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblMonthCancelOrder" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Toplam İade</span>
                                </li>

                                <li class="col4">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblMonthCartAvg" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Sepet Ortalaması</span>
                                </li>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblMonthProduct" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalProductQuantity")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblMonthUser" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalCustomerQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblMonthPayments" runat="server"></asp:Label></span>
                                    <span class="staticsText">Toplam Online Ödeme</span>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="staticsList">
                            <ul>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblYearCiro" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalRevenue")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblYearOrder" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalOrderQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblYearCancelOrder" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Toplam İade</span>
                                </li>
                                <li class="col4">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblYearCartAvg" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Sepet Ortalaması</span>
                                </li>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblYearProduct" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalProductQuantity")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblYearUser" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalCustomerQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblYearPayments" runat="server"></asp:Label></span>
                                    <span class="staticsText">Toplam Online Ödeme</span>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="staticsList">
                            <ul>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblAllCiro" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalRevenue")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblAllOrder" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalOrderQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblAllCancelOrder" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Toplam İade</span>
                                </li>
                                <li class="col4">
                                    <span class="staticsNumber"><span>
                                        <asp:Label ID="lblAllCartAvg" runat="server"></asp:Label></span>
                                    </span>
                                    <span class="staticsText">Sepet Ortalaması</span>
                                </li>
                                <li class="col1">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblAllProduct" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalProductQuantity")%></span>
                                </li>
                                <li class="col2">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblAllUser" runat="server"></asp:Label></span>
                                    <span class="staticsText"><%=GetGlobalResourceObject("admin", "TotalCustomerQuantity")%></span>
                                </li>
                                <li class="col3">
                                    <span class="staticsNumber">
                                        <asp:Label ID="lblAllPayments" runat="server"></asp:Label></span>
                                    <span class="staticsText">Toplam Online Ödeme</span>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="boxToggle">
            <div class="toggleTitle toggleMini">
                <div class="titleText"><b><%=GetGlobalResourceObject("admin", "Latest")%> 10</b></div>
                <div class="titleTab">
                    <ul class="tabMenu">
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Order")%></a></li>
                        <li><a href="#">İade-Değişim</a></li>
                        <li><a href="#"><%=GetGlobalResourceObject("admin", "Members")%></a></li>
                        <li><a href="#">Teklif</a></li>
                        <li><a href="#">Rezerve-Sipariş</a></li>
                        <li><a href="#">Servis</a></li>
                        <li><a href="#">Ticket</a></li>
                        <li><a href="#">Mail</a></li>
                        <li class="last"><a href="#"><%=GetGlobalResourceObject("admin","Comments")%></a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <div class="titleToggle"></div>
                <div class="settingsButton"><a href="/admin/default.aspx?MNID=89"><i class="fa fa-gear"></i></a></div>
                <div class="clear"></div>
            </div>
            <div class="toggleContent">
                <div class="tabContent">
                    <div class="tab">
                        <div class="dataTable">
                            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" Width="100%" AllowPaging="False" PageSize="50" AutoGenerateColumns="False" AllowSorting="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundColumn DataField="OrderId" SortExpression="OrderId" HeaderText="Sipariş No" Visible="false"></asp:BoundColumn>
                                    <asp:TemplateColumn SortExpression="OrderId" HeaderText="<%$ Resources:admin,OrderNoCode %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" data-width="1250" data-height="600" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '><%#Eval("OrderId") & "/" & Eval("OrderCode")%></asp:HyperLink>
                                            <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                    <asp:TemplateColumn ItemStyle-Width="115px" SortExpression="StatusName" HeaderText="<%$ Resources:admin,Status %>">
                                        <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="OrderDate" SortExpression="OrderDate" HeaderText="<%$ Resources:admin,OrderDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>" SortExpression="PaymentType">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="<%$ Resources:admin,TotalAmount %>">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Eval("BankaToplamTutar")*(Eval("CurrencyRate")/publicItems.DefaultCurrencyRate ))  & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                            <asp:Label ID="BankaToplamTutar" Visible="false" runat="server" Text='<%# Eval("BankaToplamTutar")%>'></asp:Label>
                                            <asp:Label ID="CekIndirimi" Visible="false" Text='<%# Eval("CekIndirimi")%>' runat="server"></asp:Label>
                                            <asp:Label ID="ToplamKargo" Visible="false" Text='<%# Eval("ToplamKargo")%>' runat="server"></asp:Label>
                                            <asp:Label ID="CurrencyRate" Visible="false" Text='<%# Eval("CurrencyRate")%>' runat="server"></asp:Label>
                                            <asp:Label ID="CurrencyCode" Visible="false" Text='<%# Eval("CurrencyCode")%>' runat="server"></asp:Label>
                                            <asp:Label ID="KargoDahilToplamTutar" Visible="false" Text='<%# Eval("KargoDahilToplamTutar")%>' runat="server"></asp:Label>
                                            <asp:Label ID="ToplamTutar" Visible="false" Text='<%# Eval("ToplamTutar")%>' runat="server"></asp:Label>
                                            <asp:Label ID="ToplamKdv" Visible="false" Text='<%# Eval("ToplamKdv")%>' runat="server"></asp:Label>
                                            <asp:Label ID="PaymentType" Visible="false" Text='<%# Eval("PaymentType")%>' runat="server"></asp:Label>
                                            <asp:Label ID="KdvDahilToplam" Visible="false" Text='<%# Eval("KdvDahilToplam")%>' runat="server"></asp:Label>
                                            <asp:Label ID="TaksitRate" Visible="false" Text='<%# Eval("TaksitRate")%>' runat="server"></asp:Label>
                                            <asp:Label ID="Taksit" Visible="false" Text='<%# Eval("Taksit")%>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Detail %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" data-width="1250" data-height="600" CssClass="btnDefault fancyContent" Text="<%$ Resources:admin,Detail %>" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable" style="overflow-x: scroll;">
                            <asp:DataGrid ID="Datagrid4" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundColumn DataField="OrderId" SortExpression="OrderId" HeaderText="İade/Değişim No/Kodu" Visible="false"></asp:BoundColumn>
                                    <asp:TemplateColumn SortExpression="CancelOrderId" HeaderText="İade/Değişim No/Kodu">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink4" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/editordercancel.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & DataBinder.Eval(Container.DataItem, "MID")%> '><%#Eval("CancelOrderId") & "/" & Eval("Code")%></asp:HyperLink>
                                            <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="İade/Değişim Talep Trh." DataFormatString="{0:d}"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="AcceptDate" SortExpression="AcceptDate" HeaderText="İade/Değişim Onay Trh." DataFormatString="{0:d}"></asp:BoundColumn>
                                    <asp:TemplateColumn ItemStyle-Width="115px" SortExpression="StatusName" HeaderText="İade/Değişim Durumu">
                                        <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>" SortExpression="PaymentType">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn SortExpression="ToplamTutar" HeaderText="İade/Değişim Tutarı">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIadeTutar" runat="server" Text='<%# formatCurDoviz(Eval("ToplamTutar")/publicItems.DefaultCurrencyRate )  & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn SortExpression="OrderId" HeaderText="Sipariş No/Kodu">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink5" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '><%#Eval("OrderId") & "/" & Eval("OrderCode")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="OrderDate" SortExpression="OrderDate" HeaderText="Sipariş Tarihi" DataFormatString="{0:d}"></asp:BoundColumn>
                                    <asp:TemplateColumn ItemStyle-Width="115px" SortExpression="StatusName" HeaderText="Sip. Durumu">
                                        <ItemTemplate><span class="Status Status<%#Eval("Status2")%>"><%#Eval("StatusName2")%></span></ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn Visible="False" DataField="IsPayed" SortExpression="IsPayed" HeaderText="&#214;dendi"></asp:BoundColumn>
                                    <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="<%$ Resources:admin,TotalAmount %>">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Eval("BankaToplamTutar")*(Eval("CurrencyRate")/publicItems.DefaultCurrencyRate ))  & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="ShipDate" SortExpression="ShipDate" HeaderText="<%$ Resources:admin,ShipDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="ShippingCargoName" SortExpression="ShippingCargoName" HeaderText="<%$ Resources:admin,CargoName %>"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="Entegrasyon" Visible="false">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# string.format("{0}/admin/ecommerce/orders/EditIntegration.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "&MID=" & 0 & "",BaseUrl) %> '><%#IIf(DataBinder.Eval(Container.DataItem, "Integreted"), GetGlobalResourceObject("admin","Integrated"), GetGlobalResourceObject("admin","Pending2"))%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,SelectOrder %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="false">
                                        <HeaderStyle Width="10px"></HeaderStyle>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkent" runat="server" OrderId='<%#Eval("OrderCode")%>'></asp:CheckBox>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkent', this.checked);" />
                                            <%=GetGlobalResourceObject("admin", "All2")%>
                                        </FooterTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:DataGrid ID="Datagrid2" runat="server" GridLines="None" Width="100%" AllowPaging="False" PageSize="50" AutoGenerateColumns="False" AllowSorting="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                <Columns>
                                    <asp:TemplateColumn SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" data-width="900" data-height="750" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><%#Eval("Name")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" data-width="800" data-height="750" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '>
                                     <%=GetGlobalResourceObject("admin", "Detail")%>
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:GridView ID="gvOfferList" ShowHeaderWhenEmpty="true" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id,UserID" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                                <Columns>
                                    <asp:TemplateField HeaderText="Teklif No">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%#"/admin/offer/editofferdeatil.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&UiD=" & DataBinder.Eval(Container.DataItem, "UserID")%>'></i> <%# DataBinder.Eval(Container.DataItem, "id")%> </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="UserID" Visible="False" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="Teklif Tarihi" SortExpression="DateCreated">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItem("DateCreated") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="FullName" HeaderText="Kullanıcı" ReadOnly="True" SortExpression="FullName" />
                                    <asp:TemplateField HeaderText="Durum" SortExpression="OfferStatusName">
                                        <ItemTemplate>
                                            <span class="Status Status<%# Eval("OfferStatusID")%>"><%# Eval("OfferStatusName")%></span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="OfferSendName" HeaderText="Sevk Şekli" ReadOnly="True" SortExpression="OfferSendName" />
                                    <asp:BoundField DataField="OfferPayName" HeaderText="Ödeme Şekli" SortExpression="OfferPayName" />
                                    <asp:BoundField DataField="PersonName" HeaderText="Personel" SortExpression="PersonName" />
                                    <asp:TemplateField HeaderText="Geçerlilik Tarihi" SortExpression="ValidDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItem("ValidDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Sevk Tarihi" SortExpression="SendDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Container.DataItem("SendDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Teslim Tarihi" SortExpression="DeliveryDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItem("DeliveryDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Yönetici Onayı">
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "AdminApproval")%>' ID="Checkbox2"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Tarihçe" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="hllog" runat="server" CssClass="btnIcon fancyContent" NavigateUrl='<%#"/admin/offer/offerloglist.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&UiD=" & DataBinder.Eval(Container.DataItem, "UserID") %>'><i class="fa fa-calendar"></i></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <div>
                                <asp:DataGrid ID="Datagrid5" runat="server" GridLines="None" ShowFooter="true" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundColumn DataField="BookedCode" SortExpression="BookedCode" HeaderText="Rezerv No" Visible="false"></asp:BoundColumn>
                                        <asp:TemplateColumn ItemStyle-Width="135px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="Rezervasyon Kodu">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hypBookedCode" runat="Server" CssClass="btnLink fancyContent" Text='<%# Eval("BookedCode")%>' NavigateUrl='<%# "/admin/ecommerce/orders/EditBooking.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BookedCode") & "&MID=" & 0%> '></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn SortExpression="OrderId" ItemStyle-Width="135px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,OrderNoCode %>">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink4" runat="Server" CssClass='<%# IIf(ChkNullString(Eval("OrderId")) = "", "", "fancyContent btnLink")%>' NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '><%# IIf(ChkNullString(Eval("OrderId")) = "", "", Eval("OrderId") & "/" & Eval("OrderCode"))%></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn ItemStyle-Width="135px" SortExpression="StatusName" HeaderText="<%$ Resources:admin,Status %>">
                                            <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="FullName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="Ad Soyad " SortExpression="FullName"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="CreatedDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="Rezerv Tarihi" SortExpression="CreatedDate"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="ExpirationDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="Rezerv Bitiş Tarihi" DataFormatString="{0:d}" SortExpression="ExpirationDate"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="OrderDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="Sipariş Tarihi" DataFormatString="{0:d}" SortExpression="OrderDate"></asp:BoundColumn>
                                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" Visible="false">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                </asp:DataGrid>
                            </div>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:GridView ID="GWOrderList" ShowHeaderWhenEmpty="true" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" Visible="false" />
                                    <asp:BoundField DataField="DocNo" HeaderText="" SortExpression="DocNo" Visible="false" />
                                    <asp:TemplateField HeaderText="Servis Belge No">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%#"/admin/guaranty/editorderdeatil.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") %>'><%#Eval("DocNo")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="FullName" HeaderText="Üye" ReadOnly="True" SortExpression="FullName" />
                                    <asp:TemplateField HeaderText="Servis Durumu" SortExpression="Status">
                                        <ItemTemplate>
                                            <span class="Status Status<%# Eval("ServicesStatus") %>"><%# Eval("Status")%></span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="SaveDate" HeaderText="Tarih" SortExpression="SaveDate" />
                                    <asp:BoundField DataField="GStatus" HeaderText="Garanti" SortExpression="GStatus" />
                                    <asp:BoundField DataField="SStatus" HeaderText="Servis Türü" ReadOnly="True" SortExpression="SStatus" />
                                    <asp:BoundField DataField="MarkName" HeaderText="Marka" ReadOnly="True" SortExpression="MarkName" />
                                    <asp:BoundField DataField="ModelName" HeaderText="Model" SortExpression="ModelName" />
                                    <asp:BoundField DataField="ProductName" HeaderText="Ürün" SortExpression="ProductName" />
                                    <asp:BoundField DataField="SerialNo" HeaderText="Cihaz Seri No" SortExpression="SerialNo" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:DataGrid ID="stList" runat="server" GridLines="None" PageSize="20" AllowCustomPaging="false" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                                <Columns>
                                    <asp:BoundColumn HeaderText="IND" DataField="SupportId" SortExpression="SupportId" Visible="false" />
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,RequestForm %>" SortExpression="TalebiAcan">
                                        <ItemTemplate>
                                            <%# Container.DataItem("TalebiAcan") %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Subject %>" SortExpression="Title">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/supportadminfree/supportDetail.aspx?SupportId=" & Container.DataItem("SupportId") %> '><%# ChkNullString(Eval("Title"), "Konu Yok")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,StartDate %>" DataField="StartDate" SortExpression="StartDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,Category %>" DataField="SupportCategoryName" SortExpression="SupportCategoryName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,ResponsiblePersonnel %>" DataField="assignedUserName" SortExpression="assignedUserName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,SupportStatus %>" DataField="SupportStatusName" SortExpression="SupportStatusName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsAnswer %>" SortExpression="IsSupport" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="lblCevapDurumu" Text='<%# Container.DataItem("IsSupport") %>' Visible="false"></asp:Label>
                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "IsSupport")%>' ID="Checkbox3"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>

                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:Button ID="btndelete" runat="server" CommandName="Delete" CssClass="btnDefault " Text="<%$ Resources:admin,Delete %>" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:DataGrid ID="stMailList" runat="server" GridLines="None" AllowCustomPaging="false" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                                <Columns>
                                    <asp:BoundColumn HeaderText="IND" DataField="SupportId" SortExpression="SupportId" Visible="false" />
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,RequestForm %>" SortExpression="TalebiAcan">
                                        <ItemTemplate>
                                            <%# Container.DataItem("TalebiAcan") %>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Subject %>" SortExpression="Title">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/supportadminfree/supportOtherMailDetail.aspx?SupportId=" & Container.DataItem("SupportId") %> '><%# ChkNullString(Eval("Title"), "Konu Yok")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,StartDate %>" DataField="StartDate" SortExpression="StartDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,Category %>" DataField="SupportCategoryName" SortExpression="SupportCategoryName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,ResponsiblePersonnel %>" DataField="assignedUserName" SortExpression="assignedUserName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundColumn HeaderText="<%$ Resources:admin,SupportStatus %>" DataField="SupportStatusName" SortExpression="SupportStatusName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsAnswer %>" SortExpression="IsSupport" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "IsSupport")%>' ID="Checkbox4"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Button ID="btndelete" runat="server" CommandName="Delete" CssClass="btnDefault " Text="<%$ Resources:admin,Delete %>" />
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="tab">
                        <div class="dataTable">
                            <asp:DataGrid ID="Datagrid3" runat="server" GridLines="None" Width="100%" AllowPaging="False" PageSize="50" AutoGenerateColumns="False" AllowSorting="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                                <Columns>
                                    <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="Comments" HeaderText="<%$ Resources:admin,Comments %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="Rating" SortExpression="Rating" HeaderText="<%$ Resources:admin,Rating %>"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>" SortExpression="IsActive">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIsActice" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "Aktif", "Pasif") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <% End If%>
    </asp:Panel>

</asp:Content>
