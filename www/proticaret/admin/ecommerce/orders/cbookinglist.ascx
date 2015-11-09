<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbookinglist.ascx.vb" Inherits="ASPNetPortal.cbookinglist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageOrderList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderId DESC</asp:Label>
            <div class="alert alert-info" id="alert" runat="server" visible="false">
                <asp:Label ID="lblMsg" runat="server"></asp:Label></div>

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
                                        <label>Rezervasyon Kodu</label>
                                        <asp:TextBox ID="txtBookedCode" runat="server"></asp:TextBox>
                                    </div>
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
                                
                                     <div class="col col4">
                                        <label>Rezervasyon Tarihi</label>
                                        <ew:CalendarPopup ID="Tarih3" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        <ew:CalendarPopup ID="Tarih33" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    </div>
                                
                                    <div class="col colAuto">
                                        <label>&nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                    </div>
                                </asp:Panel>
                            </div>
                            <div class="colGroup colGroupAdvanced">
 
                              <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%></label>
                                        <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        <ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
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
                    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" ShowFooter="true" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
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
                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                             </Columns>
                        <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="20"></PagerStyle>
                    </asp:DataGrid>
                </div>
            </div>

            <div class="dataCount" style="display: none">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalGiftCoupon")%> :<asp:Label ID="lblToplamHediyeCeki" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalShippingAmount")%> :<asp:Label ID="lblToplamKargo" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "ExcludingVatTotal")%> :<asp:Label ID="lblKdvHaricToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "VatIncludedTotal")%> :<asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalOrderAmount")%> :<asp:Label ID="lblBankaToplam" runat="server"></asp:Label></li>
                </ul>
            </div>

            <div class="buttonGroup">
                <asp:Button ID="btnumo" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelUmo %>" ToolTip="Kargo programına entegrasyon için (umo formatında)" />
                <asp:Button ID="btnExport" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>" />
                <asp:Button ID="btnExport2" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelDetailed %>" />
                <asp:Button ID="btnCargo" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ShippingReceiptPrint %>" />
                <asp:Button ID="btnInvoice" Visible="false" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,InvoicePrint %>" />
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
