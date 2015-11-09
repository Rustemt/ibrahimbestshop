<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_companycomissionlist.ascx.vb" Inherits="ASPNetPortal.c2c_companycomissionlist" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %> 
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<div class="pageOrderList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False">OrderDetailsId DESC</asp:Label>
            <div class="alert alert-info" id="alert" runat="server" visible="false">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab" style="float: left;">
                        <ul class="tabMenu" style="float: left;">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>

                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
                </div>

                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <asp:Panel ID="filterpanel" runat="server" DefaultButton="btnSearch">
                                    <div class="col">
                                        <label><%=GetGlobalResourceObject("admin", "OrderNoCode")%></label>
                                        <asp:TextBox ID="txtOrderId" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col">
                                        <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                        <asp:DropDownList ID="ddlStatus" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col col2">
                                        <label><%=GetGlobalResourceObject("admin", "UserName")%></label>
                                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
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
                                    <div class="col">
                                        <label><%=GetGlobalResourceObject("admin", "PaymentType")%></label>
                                        <asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList>
                                    </div>
                                    <div class="col">
                                        <label><%=GetGlobalResourceObject("admin", "PaymentBank")%></label>
                                        <asp:DropDownList ID="ddlBank" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="col col4">
                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%></label>
                                        <ew:calendarpopup id="Tarih1" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                        <ew:calendarpopup id="tarih11" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text="<" disabletextboxentry="False"></ew:calendarpopup>
                                    </div>
                                    <div class="col colAuto">
                                        <label>&nbsp;</label>
                                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                    </div>
                                </asp:Panel>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "DeliveryName")%></label>
                                    <asp:TextBox ID="txtShipName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlShip" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "BillingName")%></label>
                                    <asp:TextBox ID="txtBill" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlBill" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "InstallmentRange")%></label>
                                    <ew:numericbox id="txttaksit1" runat="server" decimalsign="," groupingseparator=" " positivenumber="True" textalign="Right"></ew:numericbox>
                                    <input type="button" value=">" />
                                    <ew:numericbox id="txttaksit2" runat="server" decimalsign="," groupingseparator=" " positivenumber="True" textalign="Right"></ew:numericbox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "TotalAmount")%></label>
                                    <ew:numericbox id="txtFiyat" runat="server" decimalsign="," groupingseparator=" " textalign="Right" positivenumber="True"></ew:numericbox>
                                    <input type="button" value=">" />
                                    <ew:numericbox id="txtFiyat1" runat="server" decimalsign="," groupingseparator=" " textalign="Right" positivenumber="True"></ew:numericbox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoadWeightRange")%></label>
                                    <ew:numericbox id="txtDesi1" runat="server" decimalsign="," groupingseparator=" " positivenumber="True" textalign="Right"></ew:numericbox>
                                    <input type="button" value=">" />
                                    <ew:numericbox id="txtDesi2" runat="server" decimalsign="," groupingseparator=" " positivenumber="True" textalign="Right"></ew:numericbox>
                                    <input type="button" value="<" />
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "DeliveryDate")%></label>
                                    <ew:calendarpopup id="Tarih2" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text=">" disabletextboxentry="False"></ew:calendarpopup>
                                    <ew:calendarpopup id="tarih22" runat="server" gototodaytext="Bu Gün:" cleardatetext="Sil" showgototoday="True" nullable="True" text="<" disabletextboxentry="False"></ew:calendarpopup>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="dataTable">
                <div>
                    <asp:DataGrid ID="dg1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                        <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                        <Columns>
                            <asp:BoundColumn DataField="OrderDetailsId" SortExpression="OrderDetailsId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="Sipariş Kodu" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate> 
                                    <asp:HyperLink ID="HyperLink4" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# string.format("{0}/admin/c2c/order/c2c_editcompanyorder.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderDetailsId") & "&MID=" & DataBinder.Eval(Container.DataItem,"OrderId") & "",BaseUrl) %> '><%#Eval("OrderDetailsId") & "/" & Eval("OrderCode")%></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="Ürün Adı"></asp:BoundColumn>
                            <asp:BoundColumn DataField="Description" SortExpression="Description" HeaderText="Açıklama"></asp:BoundColumn>
                            <asp:BoundColumn DataField="OrderDate" SortExpression="OrderDate" HeaderText="Sipariş Tarihi" DataFormatString="{0:d}"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="ÜrünFiyatı" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblproductprice" runat="server" Text='<%# formatCurDoviz(CalcKdvDahil(Eval("SatisFiyati") * Eval("Carpan"), Eval("KdvRate"))) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:BoundColumn DataField="Quantity" SortExpression="Quantity" HeaderText="Miktarı"></asp:BoundColumn>
                            <asp:BoundColumn DataField="KomisyonRate" SortExpression="KomisyonRate" HeaderText="KomisyonOranı"></asp:BoundColumn>
                            <asp:TemplateColumn HeaderText="MağazanınAlacağı" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblshopprice" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcKdvDahil(Eval("SatisFiyati") * Eval("Carpan"), Eval("KdvRate")) * Eval("Quantity") , Container.DataItem("KomisyonRate"))) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="C2C nin Alacağı" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lbln11price" runat="server" Text='<%# formatCurDoviz((CalcKdvDahil(Eval("SatisFiyati") * Eval("Carpan"), Eval("KdvRate")) * Eval("Quantity"))-  (CalcIndirim(CalcKdvDahil(Eval("SatisFiyati") * Eval("Carpan"), Eval("KdvRate")) * Eval("Quantity") , Container.DataItem("KomisyonRate")))  ) & " " & publicItems.DefaultCurrencyCode%> '></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Aktarım Durumu" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="btnChangeStatus" Text='<%# IIf(ChkNullBoolean(Eval("IsTransfered")) = True, "Aktarıldı", "Aktarılmadı")%> ' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </Columns>
                        <PagerStyle CssClass="dataPager" Mode="NumericPages" PageButtonCount="20" />
                    </asp:DataGrid>
                </div>
            </div>

            <div class="dataCount">
                <ul>
                    <li runat="server"><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li runat="server"><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li runat="server"><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
 
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="Label1" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="Label2" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="Label3" runat="server"></asp:Label></li>
                </ul>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
</div>

