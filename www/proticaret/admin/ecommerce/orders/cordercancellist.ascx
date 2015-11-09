<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cordercancellist.ascx.vb" Inherits="ASPNetPortal.cordercancellist" %>
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
                                <div class="col">
                                    <label>İade-Değişim Kodu</label>
                                    <asp:TextBox ID="txtCancelOrderCode" runat="server"></asp:TextBox>
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
                                    <div class="col col4">
                                    <label>İade Tarihi</label>
                                    <ew:CalendarPopup ID="Tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih22" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
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
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                    <div class="col col4">
                                    <label>İade Onay Tarihi</label>
                                    <ew:CalendarPopup ID="Tarih3" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="Tarih33" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                                   <div class="col">
                                        <label>Sipariş Durumu</label>
                                        <asp:DropDownList ID="ddlOrderStatus" runat="server"></asp:DropDownList>
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
                        </div>

                    </div>
                </div>
            </div>
            <div class="dataTable" style="overflow-x:scroll;">
                <div>
                    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" ShowFooter="true" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundColumn DataField="MID" SortExpression="MID" HeaderText="İade/Değişim No/Kodu" Visible="false"></asp:BoundColumn>
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
                            <asp:TemplateColumn ItemStyle-Width="115px" SortExpression="StatusName" HeaderText="Sipariş Durumu">
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
                            <asp:TemplateColumn HeaderText="Entegrasyon">
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
            <div class="dataCount">
                <ul>
                    <li>KDV Dahil İade Toplam  :<asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalOrderAmount")%> :<asp:Label ID="lblBankaToplam" runat="server"></asp:Label></li>
                </ul>
            </div>

            <div class="buttonGroup">
                <asp:Button ID="btnumo" runat="server" Visible="false" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelUmo %>" ToolTip="Kargo programına entegrasyon için (umo formatında)" />
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>" />
                <asp:Button ID="btnExport2" runat="server" Visible="false" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcelDetailed %>" />
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
