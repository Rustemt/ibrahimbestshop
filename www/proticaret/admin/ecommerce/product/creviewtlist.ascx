<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CReviewtList" CodeBehind="CReviewtList.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageReviewtList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False" CssClass="alert alert-info"></asp:Label>
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
                                    <label><%=GetGlobalResourceObject("admin", "ProductCode")%></label>
                                    <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlfilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "ProductName")%></label>
                                    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                    <asp:DropDownList ID="ddlActive" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,SelectUserUpdate %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
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
                                        <asp:Label ID="lblScriptAdviceByDate" runat="server" />
                                        <asp:Label ID="lblScriptReviewStatus" runat="server" />
                                        <asp:Label ID="lblScriptUserMailByStatus" runat="server" />
                                        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
                                        <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
                                    </div>
                                    <div id='lineReviewByDate' class="user"></div>
                                    <div id='tableReviewByDate' class="daytable"></div>
                                    <div class="clear"></div>
                                    <div id='pieAPReviewByDate' class="user"></div>
                                    <div id='tableAPReviewByDate' class="daytable"></div>
                                    <div class="clear"></div>
                                    <div id='pieYesReviewByDate' class="user"></div>
                                    <div id='tableYesReviewByDate' class="daytable"></div>
                                    <div class="clear"></div>

                                </div>
                                <div class="clear"></div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                    <PagerStyle Mode="NumericPages" PageButtonCount="15"></PagerStyle>
                    <Columns>
                        <asp:BoundColumn DataField="ReviewId" SortExpression="ReviewId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="<%$ Resources:admin,ProductCode %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Comments" HeaderText="<%$ Resources:admin,Comments %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="Rating" SortExpression="Rating" HeaderText="<%$ Resources:admin,Rating %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,Status %>" SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblIsActive" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "Aktif", "Pasif") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkState" runat="server" CausesValidation="false" CommandName="State" CssClass="btnDefault" Text='<%# IIf(DataBinder.Eval(Container.DataItem,"IsActive") = "True" ,"Pasif Et!" ,"Aktif Et!") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
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
