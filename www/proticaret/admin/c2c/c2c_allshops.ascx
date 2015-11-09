<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_allshops.ascx.vb" Inherits="ASPNetPortal.c2c_allshops" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>

<div class="pageUserList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbljs" runat="server" />


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
                                    <label>Mağaza Adı</label>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlfilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" Text=">" GoToTodayText="Bugün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih2" runat="server" Text="<" GoToTodayText="Bugün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
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
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoginDate")%> > </label>
                                    <ew:CalendarPopup ID="LTarih1" runat="server" Text=">" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="LTarih2" runat="server" Text="<" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                    <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                    <Columns>
                        <asp:BoundColumn DataField="UserId" Visible="false" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="ShopName" HeaderText="Mağaza Adı">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink5" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/c2c/c2c_shopdetails.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><%#Eval("ShopName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ShopType" SortExpression="ShopType" HeaderText="Mağaza Türü"></asp:BoundColumn>
                        <asp:BoundColumn DataField="email" SortExpression="email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Mağaza Komisyonları" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink56" runat="Server" CssClass="fancyContent btnIcon" NavigateUrl='<%# "/admin/c2c/comission/c2c_companycomsission.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Mağaza Yetkileri" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink57" runat="Server" CssClass="fancyContent btnIcon" NavigateUrl='<%# "/admin/c2c/c2c_editpreviliges.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" Enabled="<%# IsAllowedOnDemo() %>" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>

                    </Columns>
                </asp:DataGrid>
            </div>

            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
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
