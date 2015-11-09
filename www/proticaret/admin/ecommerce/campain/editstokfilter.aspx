<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditStokFilter" CodeBehind="EditStokFilter.aspx.vb" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<html>
<head id="head1" runat="server">
    <title>Stok Filtresi</title>
</head>
<body>
    <form id="form2" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Stok Filtresi</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <div class="buttonGroup">
                        <asp:HyperLink ID="lnkAddNew" runat="Server" CssClass="btnDefault"  ><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
                    </div>
                    <div class="dataFilter">
                        <div class="colGroup">
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label5" runat="server">Kategori :</asp:Label></label>
                                <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col col2">
                                <label>
                                    <asp:Label ID="Label1" runat="server">Stok Kodu :</asp:Label></label>
                                <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlFilter" runat="server">
                                    <asp:ListItem Value="like  '[]' + '%'">Baþlar</asp:ListItem>
                                    <asp:ListItem Value="like '%' + '[]' + '%'">Ý&#231;erir</asp:ListItem>
                                    <asp:ListItem Value="like '%' + '[]' ">Biter</asp:ListItem>
                                    <asp:ListItem Value="= [] ">Eþittir</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col col2">
                                <label>
                                    <asp:Label ID="Label3" runat="server">Ürün Adý :</asp:Label></label>
                                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                    <asp:ListItem Value="like  '[]' + '%'">Baþlar</asp:ListItem>
                                    <asp:ListItem Value="like '%' + '[]' + '%'">Ý&#231;erir</asp:ListItem>
                                    <asp:ListItem Value="like '%' + '[]' ">Biter</asp:ListItem>
                                    <asp:ListItem Value="= '[]' ">Eþittir</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label4" runat="server">Marka:</asp:Label></label>
                                <asp:DropDownList ID="ddlMark" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="lbl1" runat="server">Kod11</asp:Label></label>
                                <asp:DropDownList ID="ddlCode11" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label12" runat="server">Kod12</asp:Label></label>
                                <asp:DropDownList ID="ddlCode12" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label13" runat="server">Kod13</asp:Label></label>
                                <asp:DropDownList ID="ddlCode13" runat="server"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label10" runat="server">Durumu:</asp:Label></label>
                                <asp:DropDownList ID="ddlActive" runat="server">
                                    <asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
                                    <asp:ListItem Value="1">Aktif</asp:ListItem>
                                    <asp:ListItem Value="0">Pasif</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col col3">
                                <label>
                                    <asp:Label ID="Label6" runat="server">Eklenme Tarihi</asp:Label></label>
                                <ew:CalendarPopup ID="Tarih1" runat="server" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" CalendarLocation="Bottom"></ew:CalendarPopup>
                            </div>
                            <div class="col">
                                <label>&nbsp;</label>
                                <asp:Button ID="btnSearch" runat="server" CssClass="btnDefault" Text="Ara"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="True" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" HeaderStyle-CssClass="title" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Right" PagerStyle-NextPageText="Next" PagerStyle-PrevPageText="Prev" OnSortCommand="Datagrid1_SortCommand" OnPageIndexChanged="Datagrid1_PageIndexChanged">
                            <Columns>
                                <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="Stok Kodu"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Adý"></asp:BoundColumn>
                                <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="Marka"></asp:BoundColumn>
                                <asp:BoundColumn DataField="CODE1" SortExpression="CODE1" HeaderText="Kod 1" Visible="false"></asp:BoundColumn>
                                <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="Kalan"></asp:BoundColumn>
                                <asp:TemplateColumn SortExpression="IsActive" HeaderText="Durum">
                                    <ItemTemplate>
                                        <asp:CheckBox ToolTip="Ürünü Aktif etmek için seçiniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' runat="server"></asp:CheckBox>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <input id="chkAllItemsa" type="checkbox" onClick="CheckAllDataGridCheckBoxes('chkAktif', this.checked);" />
                                        Tümü
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Detay" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" ToolTip="Ürün Detayý" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=1100,height=750,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i> </asp:HyperLink>

                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
                        </asp:DataGrid>
                    </div>
                    <div class="dataCount">
                        <ul>
                            <li>Toplam Kayýt:
                                <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                            <li>Toplam Sayfa:
                                <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                            <li>Geçerli Sayfa:
                                <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                        </ul>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSaveExit" runat="server" CssClass="btnDefault" Text="Kapat"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Ýptal"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
