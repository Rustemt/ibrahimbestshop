<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_companycomsission.aspx.vb" Inherits="ASPNetPortal.c2c_companycomsission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mağaza Komisyon Dökümü</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><span id="spnTitle" runat="server">Mağaza Komisyon Dökümü</span></div>
                </div>
                <div class="toggleContent">
                    <div class="row">
                        <div class="col1-3">
                            <div class="dataForm">
                                <div class="dataTable">
                                    <asp:DataGrid ID="dg1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                                        <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                                        <Columns>
                                            <asp:BoundColumn DataField="OrderDetailsId" SortExpression="OrderDetailsId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="IsTransfered" SortExpression="IsTransfered" HeaderText="IsTransfered" Visible="false"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderText="Sipariş Kodu" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblordercode" runat="server" Text='<%# Eval("OrderDetailsId") & "/" & Eval("OrderCode")%> '></asp:Label>
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
                                                    <asp:Button ID="btnChangeStatus" CssClass="btnDefault" Text='<%# IIf(ChkNullBoolean(Eval("IsTransfered")) = True, "Aktarıldı", "Aktarılmadı")%> ' CommandName="Update" runat="server" />
                                                    <asp:Label ID="lblistransfered" Visible="false" runat="server" Text='<%# Eval("IsTransfered")%> '></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                        <PagerStyle CssClass="dataPager" Mode="NumericPages" PageButtonCount="20" />
                                    </asp:DataGrid>
                                </div>
                                <div class="dataCount">
                                    <ul>
                                        <li runat="server"><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                        <li runat="server"><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                        <li runat="server"><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="buttonGroup">
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" />
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
