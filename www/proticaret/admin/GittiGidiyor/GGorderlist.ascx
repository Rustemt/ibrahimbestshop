﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="~/admin/GittiGidiyor/GGorderlist.ascx.vb" Inherits="ASPNetPortal.GGorderlist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<div class="pageGGOrders">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="alert alert-info" id="alert" runat="server" visible="false">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderId DESC</asp:Label>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "GGOrder")%></a></li>
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
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PaymentType")%></label>
                                    <asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PaymentBank")%></label>
                                    <asp:DropDownList ID="ddlBank" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Shipping")%></label>
                                    <asp:DropDownList ID="ddlKargo" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <asp:Panel ID="filterpanel" runat="server" DefaultButton="btnSearch">
                                <div class="colGroup colGroupAdvanced">
                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%></label>
                                        <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    </div>
                                    <div class="col col2">
                                        <label><%=GetGlobalResourceObject("admin", "DeliveryName")%></label>
                                        <asp:TextBox ID="txtShipName" runat="server"></asp:TextBox><asp:DropDownList ID="ddlShip" runat="server">
                                            <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col col2">
                                        <label><%=GetGlobalResourceObject("admin", "BillingName")%></label>
                                        <asp:TextBox ID="txtBill" runat="server"></asp:TextBox><asp:DropDownList ID="ddlBill" runat="server">
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
                                        <input type="button" value=">" /><asp:Label ID="Label19" runat="server"></asp:Label>
                                        <ew:NumericBox ID="txttaksit2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                        <input type="button" value="<" /><asp:Label ID="Label21" runat="server"></asp:Label>
                                    </div>
                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "TotalAmount")%></label>
                                        <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                        <input type="button" value=">" /><asp:Label ID="Label22" runat="server"></asp:Label>
                                        <ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                        <input type="button" value="<" /><asp:Label ID="Label23" runat="server"></asp:Label>
                                    </div>
                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "LoadWeightRange")%></label>
                                        <ew:NumericBox ID="txtDesi1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                        <input type="button" value=">" /><asp:Label ID="Label25" runat="server"></asp:Label>
                                        <ew:NumericBox ID="txtDesi2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
                                        <input type="button" value="<" /><asp:Label ID="Label26" runat="server"></asp:Label>
                                    </div>
                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "DeliveryDate")%></label>
                                        <ew:CalendarPopup ID="Tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        <ew:CalendarPopup ID="tarih22" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    </div>
                                    <div class="col">
                                        <label>&nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                    </div>
                                </div>
                            </asp:Panel>
                        </div>
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "OrderStatus")%></label>
                                    <asp:DropDownList ID="ddlSatus" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PaymentPending %>" Value="P"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Shipping2 %>" Value="S"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ApprovePending %>" Value="C"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CurrencyTransfer %>" Value="T"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ReturnStatus %>" Value="R"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Completeds %>" Value="O"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "OrderTakeType")%></label>
                                    <asp:DropDownList ID="dllOrderBy" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,GGSalesPrice %>" Value="C"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,LastAction %>" Value="A"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ProductNumber %>" Value="P"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "OrderPosition")%></label>
                                    <asp:DropDownList ID="dllOrderPar" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ascendant %>" Value="A"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Decrease %>" Value="D"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label>&nbsp;</label>
                                    <aspzone:OneClickButton ID="btnOrders" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,TakeOrder %>" ValidationGroup="message" WaitText="<%$ Resources:admin,SaveOrders %>"></aspzone:OneClickButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AllowPaging="True" PageSize="50" AutoGenerateColumns="False" ShowFooter="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundColumn DataField="OrderId" SortExpression="OrderId" HeaderText="Sipariş No" Visible="false"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="OrderId" HeaderText="<%$ Resources:admin,OrderNoCode %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink4" runat="Server" data-width="1250" data-height="600" CssClass="btnLink fancyContent" NavigateUrl='<%# String.Format("{0}/admin/GittiGidiyor/editGGorder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0, BaseUrl)%> '><%#Eval("OrderId") & "/" & Eval("OrderCode")%></asp:HyperLink>
                                <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>' Visible="false"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                        <asp:TemplateColumn ItemStyle-Width="115px" SortExpression="StatusName" HeaderText="<%$ Resources:admin,Status %>">
                            <ItemTemplate><span class="Status Status<%#Eval("Status")%>"><%#Eval("StatusName")%></span></ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="OrderDate" SortExpression="OrderDate" HeaderText="<%$ Resources:admin,OrderDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ShipDate" SortExpression="ShipDate" HeaderText="<%$ Resources:admin,SendingDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>" SortExpression="PaymentType">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn Visible="False" DataField="IsPayed" SortExpression="IsPayed" HeaderText="&#214;dendi"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ShippingName" SortExpression="ShippingName" HeaderText="<%$ Resources:admin,DeliveryName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="BillingName" SortExpression="BillingName" HeaderText="<%$ Resources:admin,BillingName %>"></asp:BoundColumn>
                        <%--<asp:BoundColumn DataField="BankaToplamTutar" SortExpression="BankaToplamTutar" HeaderText="Toplam Tutar" DataFormatString="{0:0.00}"></asp:BoundColumn>--%>
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
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Integration %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# string.format("{0}/admin/ecommerce/orders/EditIntegration.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "&MID=" & 0 ,BaseUrl) %> '>
							<%#IIf(DataBinder.Eval(Container.DataItem, "Integreted"), GetGlobalResourceObject("admin","Integrated"), GetGlobalResourceObject("admin","Pending2"))%>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,SelectOrder %>">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkent" runat="server" OrderId='<%#Eval("OrderCode")%>'></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkent', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# String.Format("{0}/admin/GittiGidiyor/editGGorder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0, BaseUrl)%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="50"></PagerStyle>
                </asp:DataGrid>
            </div>
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalGGPercentRate")%> :
                        <asp:Label ID="lblToplamHediyeCeki" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalShippingAmount")%> :
                        <asp:Label ID="lblToplamKargo" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "ExcludingVatTotal")%> :
                        <asp:Label ID="lblKdvHaricToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "VatIncludedTotal")%> :
                        <asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalOrderAmount")%> :
                        <asp:Label ID="lblBankaToplam" runat="server"></asp:Label></li>
                </ul>
            </div>
            <div class="buttonGroup">
                <asp:Button ID="btnumo" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelUmo %>" ToolTip="Kargo programına entegrasyon için (umo formatında)" />
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>" />
                <asp:Button ID="btnExport2" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelDetailed %>" />
                <asp:Button ID="btnCargo" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ShippingReceiptPrint %>" />
                <asp:Button ID="btnInvoice" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,InvoicePrint %>" />
            </div>
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>

