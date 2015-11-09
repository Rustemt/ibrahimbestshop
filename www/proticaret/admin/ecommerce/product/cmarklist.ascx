<%@ Control Language="vb" AutoEventWireup="false" Inherits="CMarkList" CodeBehind="CMarkList.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageMarkList">

    <asp:Label ID="msg" runat="server" CssClass="alert alert-info" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblerr" runat="server" ></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,SelectRecordsUpdateDelete %>" />
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
                        <div class="col">
                            <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                            <asp:DropDownList ID="ddlDurum" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,All2 %>" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col col2">
                            <label><%=GetGlobalResourceObject("admin", "MarkName")%></label>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="ddlfilter" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
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
                                <asp:Label ID="lblScriptProductByBrand" runat="server" />
                                <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
                                <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
                            </div>
                            <div class="clear"></div>
                            <div id="report_content" class="user">
                                <div id='pieProductByBrand' class="daytable"></div>
                                <div id='tableProductByBrand'></div>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>


                    </div>


                </div>

            </div>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
            <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
            <Columns>
                <asp:BoundColumn DataField="MarkId" Visible="false" SortExpression="MarkId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn SortExpression="MarkName" HeaderText="<%$ Resources:admin,MarkName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditMark.aspx?IND=" & DataBinder.Eval(Container.DataItem,"MarkId") & "&DIND=" & 0  %> '><%#Eval("MarkName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="chkDurum"></asp:CheckBox>
                    </ItemTemplate>
                    <FooterTemplate>
                        <input id="chkAllDurum" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkDurum', this.checked);" />
                        <%=GetGlobalResourceObject("admin", "All2")%>
                    </FooterTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditMark.aspx?IND=" & DataBinder.Eval(Container.DataItem,"MarkId") & "&DIND=" & 0  %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                    <FooterTemplate>
                        <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
                        <%=GetGlobalResourceObject("admin", "All2")%>
                    </FooterTemplate>
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
</div>
