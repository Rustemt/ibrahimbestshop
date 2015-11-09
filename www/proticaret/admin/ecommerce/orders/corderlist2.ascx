<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="corderlist2.ascx.vb" Inherits="ASPNetPortal.corderlist2" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<div id="COrderList2" class="pageOrderList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab" style="float: left;">
                        <ul class="tabMenu" style="float: left;">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                </div>

                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <asp:Panel ID="filterpanel" runat="server" DefaultButton="btn">
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
                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "TotalAmount")%></label>
                                        <ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                        <input type="button" value=">" />
                                        <ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
                                        <input type="button" value="<" />
                                    </div>
                                    <div class="col colAuto">
                                        <label>&nbsp;</label>
                                        <asp:Button ID="btn" CssClass="btnDefault" Text="Ara" runat="server" />
                                    </div>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" ShowFooter="true" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                    <HeaderStyle CssClass="title" />
                    <Columns>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Email" SortExpression="Email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ToplamSiparisSayisi" SortExpression="ToplamSiparisSayisi" HeaderText="ToplamSiparisSayisi"></asp:BoundColumn>

                        <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="BankaToplamTutar">
                            <ItemTemplate>
                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Container.DataItem("BankaToplamTutar") * (publicItems.DefaultCurrencyRate)) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="KdvDahilToplam">
                            <ItemTemplate>
                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Container.DataItem("KdvDahilToplam") * (publicItems.DefaultCurrencyRate)) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="ToplamTutar">
                            <ItemTemplate>
                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Container.DataItem("ToplamTutar") * (publicItems.DefaultCurrencyRate)) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="ToplamKargo">
                            <ItemTemplate>
                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Container.DataItem("ToplamKargo") * (publicItems.DefaultCurrencyRate)) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn SortExpression="BankaToplamTutar" HeaderText="CekIndirimi">
                            <ItemTemplate>
                                <asp:Label ID="lblBankaToplamTutar" runat="server" Text='<%# formatCurDoviz(Container.DataItem("CekIndirimi") * (publicItems.DefaultCurrencyRate)) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/OrderList.aspx?Status=all&email=" & Container.DataItem("Email")%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" PageButtonCount="20" CssClass="dataPager"></PagerStyle>
                </asp:DataGrid>
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
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderId DESC</asp:Label>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <label>
                <%=GetGlobalResourceObject("admin", "TotalRecording")%>:
                        <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
            <label>
                <%=GetGlobalResourceObject("admin", "TotalPage")%>:
                        <asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
            <label>
                <%=GetGlobalResourceObject("admin", "CurrentPage")%>:
                        <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
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
</div>
