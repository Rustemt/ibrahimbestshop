<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cpointlist" CodeBehind="cpointlist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pagePointList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">PointId</asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

            <div class="buttonGroup">
                <asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
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
                                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlUserFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "CouponStatus")%></label>
                                    <asp:DropDownList ID="ddlIsUsed" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CouponUsed %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CouponUnused %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%>:</label>
                                    <asp:DropDownList ID="ddlIsActive" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "PointType")%></label>
                                    <asp:DropDownList ID="ddlType" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All2 %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PointShopping %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PointComment %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PointAdvice %>" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "RateAmount")%></label>
                                    <ew:NumericBox ID="txtDiscount1" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                    <input type="button" value=">" />
                                    <ew:NumericBox ID="txtDiscount2" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "StartDate")%> ></label>
                                    <ew:CalendarPopup ID="txtCreatedDate1" runat="server" CalendarLocation="Bottom" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="txtCreatedDate2" runat="server" CalendarLocation="Bottom" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:"></ew:CalendarPopup>
                                </div>
                                <div class="col">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="tab">Raporlar</div>
                    </div>
                </div>
            </div>

            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Left" ShowFooter="True">
                    <Columns>
                        <asp:BoundColumn DataField="PointId" SortExpression="PointId" HeaderText="IND"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/points/EditPoint.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PointId") &  "" %> '><%#Eval("FullName")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>" SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblIsActive" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "Aktif", "Pasif") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,IsUsed %>" SortExpression="IsUsed" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="chkStatus" runat="server" Enabled="false" Checked='<%# IIf(Eval("IsUsed")="True",True,False) %>' />
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="TotalPoints" HeaderText="<%$ Resources:admin,TotalScore %>" SortExpression="TotalPoints" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ScoreType %>" SortExpression="PointType" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblType" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,OrderDetails %>" HeaderStyle-Width="100px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="hl2" runat="server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditOrder.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PointRef") &  "" %> ' Visible='<%# iif(Container.DataItem("PointType")=0,True,False) %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-Width="100px" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="hl3" runat="server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/points/EditPoint.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PointId") &  "" %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-Width="50px">
                            <ItemTemplate>
                                <asp:CheckBox ToolTip="<%$ Resources:admin,SelectToDelete %>" ID="chkdelete" runat="server"></asp:CheckBox>
                            </ItemTemplate>
                            <FooterTemplate>
                                <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
                                <%=GetGlobalResourceObject("admin", "All2")%>
                            </FooterTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                </asp:DataGrid>
            </div>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
            <div class="buttonGroup">
                <asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>"></asp:Button>
                <asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
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
