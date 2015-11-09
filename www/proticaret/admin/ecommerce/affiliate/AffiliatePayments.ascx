<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AdminAffiliatePayments" CodeBehind="AffiliatePayments.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div id="pageAffiliatePayments">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" data-width="500" data-height="200" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Ekle</asp:HyperLink>
    </div>

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
                            <label><%=GetGlobalResourceObject("admin", "PaymentDate")%> ></label>
                            <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text=">" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text="<" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:Button ID="btnSearch" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Search %>"></asp:Button>
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
                        </div>
                        <div class="clear"></div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="PaymentId" HeaderText="IND"  Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="False"></asp:BoundColumn>
                 <asp:TemplateColumn SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/affiliate/EditAffiliatePayment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PaymentId")%> '><%#Eval("FullName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                <asp:BoundColumn DataField="PaymentDate" SortExpression="PaymentDate" HeaderText="<%$ Resources:admin,PaymentDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                <asp:BoundColumn DataField="Total" HeaderText="<%$ Resources:admin,TotalPayments %>" DataFormatString="{0:0.00 TL}"></asp:BoundColumn>
                <asp:TemplateColumn ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Receipt %>">
                    <ItemTemplate>
                        <asp:HyperLink CssClass="button" Text="<%$ Resources:admin,Receipt %>" rel="lightbox" ID="HyperLink1" runat="Server" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"Path") %> ' Visible='<%# iif(DataBinder.Eval(Container.DataItem,"Path").tostring()<>"","True","False") %> ' />
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Details" HeaderText="<%$ Resources:admin,Description %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="false" >
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink11" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/affiliate/EditAffiliatePayment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PaymentId")%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
                    <HeaderStyle Width="10px"></HeaderStyle>
                    <ItemTemplate>
                        <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
        </asp:DataGrid>
    </div>

<div class="buttonGroup">
    <asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
</div>

<div class="dataCount">
    <ul>
        <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
        <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
        <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
    </ul>
</div>
</div>