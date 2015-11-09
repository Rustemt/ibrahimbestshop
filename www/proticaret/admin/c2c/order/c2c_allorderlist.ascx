<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_allorderlist.ascx.vb" Inherits="ASPNetPortal.c2c_allorderlist" %>

<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageOrderList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderId DESC</asp:Label>
            <div class="alert alert-info" id="alert" runat="server" visible="false">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab" style="float: left;">
                        <ul class="tabMenu" style="float: left;">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
                </div>

                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <asp:Panel ID="filterpanel" runat="server" DefaultButton="btnSearch">
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
                                        <label>Mağaza Adı</label>
                                        <asp:TextBox ID="txtshop" runat="server"></asp:TextBox>
                                        <asp:DropDownList ID="ddlshop" runat="server">
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

                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%></label>
                                        <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    </div>
                                    <div class="col colAuto">
                                        <label>&nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                    </div>
                                </asp:Panel>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Shipping")%></label>
                                    <asp:DropDownList ID="ddlKargo" runat="server"></asp:DropDownList>
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
                <div>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="none">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table border="0" cellpadding="4" class="datalist" style="text-align: center;" width="100%">
                                        <tr class="title">
                                            <th width="110"><%=GetGlobalResourceObject("admin", "OrderNoCode")%> </th>
                                            <th width="110"><%=GetGlobalResourceObject("admin", "PaymentType")%> </th>
                                            <th width="140"><%=GetGlobalResourceObject("admin", "Status")%> </th>
                                            <th width="140"><%=GetGlobalResourceObject("admin", "OrderDate")%> </th>
                                            <th width="240">Mağaza Adı </th>
                                            <th colspan="2" width="240">Fatura Adı </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="HyperLink4" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# string.format("{0}/admin/c2c/order/c2c_editcompanyorder.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderDetailsId") & "&MID=" & DataBinder.Eval(Container.DataItem,"OrderId") & "&CID=0",BaseUrl) %> '><%#Eval("OrderDetailsId") & "/" & Eval("OrderCode")%></asp:HyperLink>
                                                <asp:Label runat="server" ID="lblOrderId" Text='<%#Eval("OrderId")%>' Visible="false"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label></span></td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# string.format("{0}/admin/c2c/order/c2c_editstatus.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderDetailsId") & "&DIND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "",BaseUrl) %> '><%#DataBinder.Eval(Container.DataItem, "StatusName2")%></asp:HyperLink>
                                            </td>
                                            <td>
                                                <asp:Label runat="server" ID="Label1" Text='<%#Eval("OrderDate")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label runat="server" ID="Label3" Text='<%#Eval("ShopNickName")%>'></asp:Label></span></td>
                                            <td colspan="2">
                                                <asp:Label runat="server" ID="Label2" Text='<%#Eval("BillingName")%>'></asp:Label></span></td>
                                        </tr>
                                        <tr class="title">
                                            <th>Ürün Miktarı</th>
                                            <th colspan="4">Ürün Adı</th>
                                            <th width="20%">Ürün Açıklaması</th>
                                            <th width="10%">Sipariş Toplam Tutarı</th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text='<%# Eval("Quantity")%>'></asp:Label></td>
                                            <td colspan="4" style="text-align: left">
                                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/c2c/product/c2c_editproduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId")%> '><%#Eval("ProductName")%></asp:HyperLink></td>
                                             <td>
                                                <asp:Label runat="server" Text='<%# Eval("Description")%>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(CalcKdvDahil(Eval("SatisFiyati") * Eval("Carpan"),Eval("KdvRate")) * Eval("Quantity")  *(Eval("CurrencyRate")/publicItems.DefaultCurrencyRate ))  & " " & publicItems.DefaultCurrencyCode%> '></asp:Label></td>

                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" PageButtonCount="25" />
                        <EmptyDataTemplate>
                            <div class="alert alert-info">
                                <label>Aradığınız Tarihe Ait Kayıt Bulunmamaktadır.</label></div>
                        </EmptyDataTemplate>
                        <PagerStyle CssClass="dataPager" />
                    </asp:GridView>

                </div>
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalGiftCoupon")%> :<asp:Label ID="lblToplamHediyeCeki" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalShippingAmount")%> :<asp:Label ID="lblToplamKargo" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "ExcludingVatTotal")%> :<asp:Label ID="lblKdvHaricToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "VatIncludedTotal")%> :<asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalOrderAmount")%> :<asp:Label ID="lblBankaToplam" runat="server"></asp:Label></li>
                </ul>
            </div>

            <div class="buttonGroup">
                <asp:Button ID="btnumo" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelUmo %>" ToolTip="Kargo programına entegrasyon için (umo formatında)" />
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>" />
                <asp:Button ID="btnExport2" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelDetailed %>" />
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
