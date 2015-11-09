<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="NetworkMarketingUsers" CodeBehind="NetworkMarketingUsers.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAffiliateuserlist">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>

            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault" Visible="false"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddNew")%></asp:HyperLink>
                <asp:Button ID="Button1" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,PointsCalculate %>" />
                <asp:Button ID="Button2" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,DeployEarnings %>" ValidationGroup="aa" />
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li> 
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col col2">
                                    <label><%= GetGlobalResourceObject("admin","UserName") %></label>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlfilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%= GetGlobalResourceObject("admin", "Email")%></label>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlemail" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%= GetGlobalResourceObject("admin", "FullName")%></label>
                                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%= GetGlobalResourceObject("admin", "CreateDate")%> ></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" Text=">" CalendarLocation="Bottom" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih2" runat="server" Text="<" CalendarLocation="Bottom" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"></ew:CalendarPopup>
                                </div>
                                <div class="col col4">
                                    <label><%= GetGlobalResourceObject("admin", "LoginDate")%> ></label>
                                    <ew:CalendarPopup ID="LTarih1" runat="server" Text=">" CalendarLocation="Bottom" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="LTarih2" runat="server" Text="<" CalendarLocation="Bottom" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"></ew:CalendarPopup>
                                </div>
                                <div class="col col3">
                                    <label><%= GetGlobalResourceObject("admin", "StartDate")%> ></label>
                                    <ew:CalendarPopup ID="txtBeginDate" Text=">" runat="server" CalendarLocation="Bottom" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"></ew:CalendarPopup>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBeginDate" ErrorMessage="*" SetFocusOnError="True" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>

            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                    <Columns>
                        <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,UserName %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><%#Eval("Name")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                        <asp:BoundColumn DataField="NetworkSponsorId" SortExpression="NetworkSponsorId" HeaderText="NetworkSponsorId"></asp:BoundColumn>
                        <asp:BoundColumn DataField="NetworkRank" SortExpression="NetworkRank" HeaderText="NetworkRank"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TotalOrders" SortExpression="TotalOrders" HeaderText="<%$ Resources:admin,TotalEarnings %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TotalPayments" SortExpression="TotalPayments" HeaderText="<%$ Resources:admin,TotalPayments %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                        <asp:BoundColumn DataField="TotalLeft" SortExpression="TotalLeft" HeaderText="<%$ Resources:admin,TotalBalance %>" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderText="<%$ Resources:admin,Payments %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink4x" runat="Server" CssClass="fancyContent" NavigateUrl='<%# "/admin/networkmarketing/EditNetworkPayment.aspx?IND=0&UID=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><i class="fa fa-credit-card"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><i class="fa fa-user"></i> <%=GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
                </asp:DataGrid>
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
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
</div>
