<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="waitingsupport.ascx.vb" Inherits=".waitingsupport1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageSupportWaiting">
    <asp:Label ID="lblAssignedUserMail" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <div id="alert" runat="server" visible="false" class="alert">
        <p>
            <asp:Label runat="server" ID="lblMessage"></asp:Label>
        </p>
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
                            <label><%= GetGlobalResourceObject("admin","Personnel") %></label>
                            <asp:DropDownList runat="server" ID="ddlUser"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%= GetGlobalResourceObject("admin","Category") %></label>
                            <asp:DropDownList runat="server" ID="ddlCategory"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%= GetGlobalResourceObject("admin","Status") %></label>
                            <asp:DropDownList runat="server" ID="ddlStatus"></asp:DropDownList>
                        </div>
                        <div class="col col2">
                            <label><%= GetGlobalResourceObject("admin","Email") %></label>
                            <asp:TextBox runat="server" ID="txtSearchEmail"></asp:TextBox>
                            <asp:DropDownList runat="server" ID="ddlEmail">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col col2">
                            <label><%= GetGlobalResourceObject("admin","Subject") %></label>
                            <asp:TextBox runat="server" ID="txtSearchSubject"> </asp:TextBox>
                            <asp:DropDownList runat="server" ID="ddlSubject">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col col2">
                            <label><%= GetGlobalResourceObject("admin","RequestsID") %></label>
                            <asp:TextBox runat="server" ID="txtSupportId"></asp:TextBox>
                            <asp:DropDownList runat="server" ID="ddlSupport">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <label><%= GetGlobalResourceObject("admin","CustomerStatus") %></label>
                            <asp:DropDownList runat="server" ID="ddlIsPayed">
                                <asp:ListItem Value="-1" Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                <asp:ListItem Value="1" Text="<%$ Resources:admin,ContractedCustomer %>"></asp:ListItem>
                                <asp:ListItem Value="0" Text="<%$ Resources:admin,ChargeTaken %>"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col colAuto">
                            <label>&nbsp;</label>
                            <asp:Button runat="server" ID="btnSearch" CssClass="btnDefault" Text="<%$ Resources:admin,Search %>" />
                        </div>
                    </div>
                    <div class="colGroup colGroupAdvanced">
                        <div class="col col4">
                            <label><%= GetGlobalResourceObject("admin","StartDate") %></label>
                            <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="Tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="stList" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AllowCustomPaging="false" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
            <Columns>
                <asp:BoundColumn DataField="SupportId" SortExpression="SupportId" HeaderText="IND" />
                <asp:TemplateColumn SortExpression="TalebiAcan" HeaderText="<%$ Resources:admin,RequestForm %>">
                    <ItemTemplate>
                        <%# Container.DataItem("TalebiAcan") %>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Subject %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/supportadmin/supportDetail.aspx?SupportId=" & Container.DataItem("SupportId")  %> '><%# ChkNullString(Eval("Title"), "Konu Yok")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn HeaderText="<%$ Resources:admin,StartDate %>" DataField="StartDate" SortExpression="StartDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundColumn HeaderText="<%$ Resources:admin,Category %>" DataField="SupportCategoryName" SortExpression="SupportCategoryName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                <asp:BoundColumn HeaderText="<%$ Resources:admin,ResponsiblePersonnel %>" DataField="assignedUserName" SortExpression="assignedUserName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsPayment %>" SortExpression="IsPayed" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsPayed")%>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn HeaderText="<%$ Resources:admin,TicketStatus %>" DataField="SupportStatusName" SortExpression="SupportStatusName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsAnswer %>" SortExpression="IsSupport" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblCevapDurumu" Text='<%# Container.DataItem("IsSupport") %>' Visible="false"></asp:Label>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsSupport")%>' ID="Checkbox4"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/supportadmin/supportDetail.aspx?SupportId=" & Container.DataItem("SupportId") & ""%>'>Detay</asp:HyperLink>
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
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=960,height=670,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
