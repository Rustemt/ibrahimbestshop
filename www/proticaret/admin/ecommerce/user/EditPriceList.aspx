<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditPriceList.aspx.vb" Inherits="ASPNetPortal.EditPriceList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fiyat Listesi Düzenle</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
    <form id="form1" runat="server">
        <<div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Fiyat Listesi Düzenle</div>
                </div>
                <div class="toggleContent">

                    <div class="dataFilter">

                        <div class="colGroup">
                            <div class="col">
                                <label><%=GetGlobalResourceObject("admin", "Category")%></label>
                                <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col col2">
                                <label><%=GetGlobalResourceObject("admin", "ProductCode2")%>/IND</label>
                                <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlFilter" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductCode + '%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductCode + '%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductCode "></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductCode "></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col col2">
                                <label><%=GetGlobalResourceObject("admin", "ProductName")%></label>
                                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like  @ProductName + '%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%' + @ProductName + '%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%' + @ProductName "></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="= @ProductName "></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label4" runat="server" Width="15px">Marka:</asp:Label><br />
                                <asp:DropDownList ID="ddlMark" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Label ID="lbl1" runat="server" Width="15px">Kod11</asp:Label><br />
                                <asp:DropDownList ID="ddlCode11" runat="server">
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label12" runat="server" Width="15px">Kod12</asp:Label><br />
                                <asp:DropDownList ID="ddlCode12" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Label ID="Label13" runat="server" Width="15px">Kod13</asp:Label><br />
                                <asp:DropDownList ID="ddlCode13" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label><%=GetGlobalResourceObject("admin", "Status")%></label>
                                <asp:DropDownList ID="ddlActive" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,All %>" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col col4">
                                <label><%=GetGlobalResourceObject("admin", "DateAdded")%></label>
                                <ew:CalendarPopup ID="Tarih1" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"></ew:CalendarPopup>
                                <ew:CalendarPopup ID="Tarih2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"></ew:CalendarPopup>
                            </div>
                        </div>
                        <div class="col">
                            <label>&nbsp;</label>
                            <asp:Button ID="btnAra" runat="server" CssClass="btnDefault" Text="Ara"></asp:Button>
                        </div>


                    </div>

                    <div class="dataTable">
                        <asp:DataGrid ID="dgprice" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" AllowPaging="true">
                            <Columns>
                                <asp:BoundColumn DataField="PriceId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductId" HeaderText="ProductId"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductName" HeaderText="Ürün Adı"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="İndirim Tipi">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlDiscountType" runat="server" SelectedValue='<%# Eval("DiscountType")%>'>
                                            <asp:ListItem Value="0">% İndirim</asp:ListItem>
                                            <asp:ListItem Value="1">Tutar İndirimi (TL)</asp:ListItem>
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="İndirim Miktarı">
                                    <ItemTemplate>
                                        <ew:NumericBox ID="txtDiscountAmount" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DiscountAmount")%> ' Width="50px" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">
                                        </ew:NumericBox>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Uygulanacak Fiyat">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="ddlprice" runat="server" SelectedValue='<%# Eval("Price")%>'>
                                            <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,SalesPrice1Products %>" Value="SatisFiyati1"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,SalesPrice2Products %>" Value="SatisFiyati2"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,SalesPrice3Products %>" Value="SatisFiyati3"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,SalesPrice4Products %>" Value="SatisFiyati4"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,SalesPrice5Products %>" Value="SatisFiyati5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Detay" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:HyperLink ToolTip="Ürün Detayı" CssClass="btnIcon" ID="HyperLink1" runat="Server"
                                            NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=1100,height=750,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i> </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
                        </asp:DataGrid>
                    </div>

                    <div class="dataCount">
                        <ul>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "TotalRecording")%></label>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "TotalPage")%></label>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                            <li>
                                <label runat="server"><%=GetGlobalResourceObject("admin", "CurrentPage")%></label>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                        </ul>
                    </div>

                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>

                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Update %>" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CssClass="btnDefault"></asp:Button>

                    </div>

                </div>

            </div>
        </div>
    </form>
</body>
</html>
