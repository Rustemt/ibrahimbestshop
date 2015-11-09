<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="plasiyerlist.ascx.vb" Inherits="ASPNetPortal.plasiyerlist" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<div class="pagePlasiyerList">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="hypAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>

    <div class="dataFilter boxToggle">
        <div class="toggleTitle toggleMini">
            <div class="titleTab">
                <ul class="tabMenu">
                    <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li> 
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
                            <label><%=GetGlobalResourceObject("admin", "SalesArea")%></label>
                            <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "SalesPlaces")%></label>
                            <asp:DropDownList ID="ddlplace" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "SalesGroup")%></label>
                            <asp:DropDownList ID="ddlgroup" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col col2">
                            <label><%=GetGlobalResourceObject("admin", "CompanyCode")%></label>
                            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="ddlCodeFilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
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
                        <div class="col colAuto">
                            <label>&nbsp;</label>
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                        </div>
                    </div>
                    <div class="colGroup colGroupAdvanced">
                    	<div class="col col4">
                            <label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
                            <ew:CalendarPopup ID="Tarih1" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="tarih2" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                        <div class="col col4">
                            <label><%=GetGlobalResourceObject("admin", "LoginDate")%></label>
                            <ew:CalendarPopup ID="LTarih1" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="LTarih2" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
            <Columns>
                <asp:BoundColumn DataField="UserId" HeaderText="IND" Visible="false"></asp:BoundColumn>

                <asp:TemplateColumn HeaderText="<%$ Resources:admin,UserName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="hypp" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/salesman/users/editplasiyer.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><%#Eval("Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="areaName" HeaderText="<%$ Resources:admin,SalesArea %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="placeName" HeaderText="<%$ Resources:admin,SalesPlaces %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="groupName" HeaderText="<%$ Resources:admin,SalesGroup %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>" Visible="false"></asp:BoundColumn>
                <asp:BoundColumn DataField="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Users %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="hypUye" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/salesman/users/userplasiyer.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><i class="fa fa-user"></i>  </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,BillingAddress %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditBilling.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><i class="fa fa-pencil"></i> </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,ShippingAddress %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink3" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditShipping.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") &  "" %> '><i class="fa fa-pencil"></i> </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Cart %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:HyperLink ID="lnkcart" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/CartList.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""%> '><i class="fa fa-shopping-cart"></i> </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Orders %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink4" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/OrderList.aspx?Status=all&email=" & DataBinder.Eval(Container.DataItem, "Email") & ""%> '><i class="fa fa-pencil"></i> </asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>

    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
        </ul>
    </div>
</div>
