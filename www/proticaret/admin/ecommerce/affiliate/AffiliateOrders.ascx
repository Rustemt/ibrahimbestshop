<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AdminAffiliateOrders" CodeBehind="AffiliateOrders.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageAffiliateOrders">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
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
        </div>
        <div class="toggleContent">
            <div class="tabContent">
                <div class="tab">
                    <div class="colGroup">
                        <div class="col col2">
                            <label><%=GetGlobalResourceObject("admin", "UserName")%></label>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
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
                        <div class="col col2">
                            <label><%=GetGlobalResourceObject("admin", "FullName")%></label>
                            <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col col4">
                            <label><%=GetGlobalResourceObject("admin", "OrderDate")%> ></label>
                            <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text=">" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text="<" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                        <div class="col">
                            <label>Satýþ Durumu</label>
                            <asp:DropDownList ID="ddlStatus" runat="server" TabIndex="9">
                                <asp:ListItem Text="<%$ Resources:admin,All %>" Selected="True" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Approved %>" Value="Onaylandý"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="Beklemede"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Cancel %>"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
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
                                <asp:Label ID="lblScriptSaleByDate" runat="server" />
                                <asp:Label ID="lblScriptOrderByDate" runat="server" />
                                <asp:Label ID="lblScriptSaleByPayType" runat="server" />
                                <asp:Label ID="lblScriptOrderByStatus" runat="server" />
                                <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
                            </div>
                            <div id='lineSaleByDate' class="user"></div>
                            <div id='tableSaleByDate' class="daytable"></div>
                            <div class="clear"></div>
                            <div id='lineOrderByDate' class="user"></div>
                            <div id='tableOrderByDate' class="daytable"></div>
                            <div class="clear"></div>
                            <div id='pieSaleByPayType'></div>
                            <div id='tableSaleByPayType'></div>
                            <div class="clear"></div>
                            <div id='pieOrderByStatus'></div>
                            <div id='tableOrderByStatus'></div>
                        </div>
                        <div class="clear"></div>


                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="AffiliateOrdersId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,OrderId %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" data-width="1250" data-height="600" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '><%#Eval("OrderId")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,OrderDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="Type" HeaderText="<%$ Resources:admin,PaymentType %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="Total" SortExpression="Total" HeaderText="<%$ Resources:admin,ShoppingAmount %>" DataFormatString="{0:0.00 TL}"></asp:BoundColumn>
                <asp:BoundColumn DataField="Status" HeaderText="<%$ Resources:admin,Status %>" SortExpression="Status"></asp:BoundColumn>
                <asp:BoundColumn DataField="Details" HeaderText="<%$ Resources:admin,Description %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,OrderDetails %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
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
