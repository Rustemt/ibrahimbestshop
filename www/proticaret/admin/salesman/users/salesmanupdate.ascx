<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="salesmanupdate.ascx.vb" Inherits="ASPNetPortal.salesmanupdate" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<div class="pageSalesmanUpdate">
   
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
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
                            <label><%= GetGlobalResourceObject("admin","MemberType") %></label>
                            <asp:DropDownList ID="ddlUserType" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Individual %>" Value="0"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Institutional %>" Value="1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Salesman %>" Value="2"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "Dealer")%></label>
                            <asp:DropDownList ID="ddlBayi" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Yes %>" Value="1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,No %>" Value="0"></asp:ListItem>
                            </asp:DropDownList>
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
                        <div class="col col4">
                            <label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
                            <ew:CalendarPopup ID="Tarih1" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="tarih2" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                        <div class="col colAuto">
                            <label>&nbsp;</label>
                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i><%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                        </div>
                    </div>
                    <div class="colGroup colGroupAdvanced">
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "Country")%></label>
                            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "City")%></label>
                            <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "District")%></label>
                            <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                        </div>
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
                            <asp:DropDownList ID="ddlgroup" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "CustomerRepresentative")%></label>
                            <asp:DropDownList ID="ddlsalesman" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col col4">
                            <label><%=GetGlobalResourceObject("admin", "LoginDate")%></label>
                            <ew:CalendarPopup ID="LTarih1" runat="server" Text=">" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="LTarih2" runat="server" Text="<" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <div class="dataForm">
        <div class="row">
            <div class="col1-1">
                <div class="dataForm">
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "SalesArea")%></label>
                            <asp:DropDownList ID="ddlareanew" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "SalesPlaces")%></label>
                            <asp:DropDownList ID="ddlplacenew" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <label><%=GetGlobalResourceObject("admin", "SalesGroup")%></label>
                            <asp:DropDownList ID="ddlgroupnew" runat="server" AutoPostBack="true"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colOne">
                            <label>
                                <%=GetGlobalResourceObject("admin", "CustomerRepresentative")%>
                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlsalenew" InitialValue="0" runat="server" ValidationGroup="updateuye" />
                            </label>
                            <asp:DropDownList ID="ddlsalenew" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <asp:Button Text="<%$ Resources:admin,UsersCustomerRepresentativeAppointed %>" runat="server" ID="btnAdd" CssClass="btnDefault" ValidationGroup="updateuye" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col1-3">
                <div class="dataTable">
                    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                        <pagerstyle mode="NumericPages" cssclass="dataPager" pagebuttoncount="15"></pagerstyle>
                        <columns>
                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="false" ></asp:BoundColumn>
                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Select2 %>">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkselect" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </columns>
                    </asp:DataGrid>
                    <div class="dataCount">
                        <ul>
                            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
