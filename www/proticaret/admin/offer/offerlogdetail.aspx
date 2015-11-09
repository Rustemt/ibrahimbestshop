<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="offerlogdetail.aspx.vb" Inherits="offerlogdeatil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
    <script type="text/javascript" src="/admin/js/jquery.ui.smoothMenu.min.js"></script>
    <link href="/admin/css/jquery-ui-smoothMenu.css" rel="stylesheet" type="text/css" />
    <link href="../admin/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../admin/css/portal.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />

    <style type="text/css">
        .baslik {
            width: 120px;
            text-align: right;
        }

        .icerik {
            width: 200px;
            text-align: left;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Logu</div>
                </div>

                <div class="toggleContent">
                    <asp:Label ID="lblError" runat="server"></asp:Label>

                    <div class="dataForm">
                        <div class="dataTable">
                            <asp:GridView ID="gvOfferList" runat="server" CssClass="datalist" AutoGenerateColumns="False" CellPadding="5" HeaderStyle-CssClass="title" ShowFooter="True" ItemStyle-CssClass="row" DataKeyNames="id,OfferStatusID" EnableModelValidation="True" Width="100%">
                                <HeaderStyle CssClass="title" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                                    <asp:BoundField DataField="OfferTicket" HeaderText="Teklif No" SortExpression="OfferTicket" />
                                    <asp:BoundField DataField="UpdateDate" HeaderText="Güncelleme Tarihi" ReadOnly="True" SortExpression="UpdateDate" />
                                    <asp:BoundField DataField="Updater" HeaderText="Güncelleyen" ReadOnly="True" SortExpression="Updater" />

                                    <asp:BoundField DataField="ProviderName" HeaderText="Tedarikçi Kodu" ReadOnly="True" SortExpression="ProviderName" />
                                    <asp:BoundField DataField="ProductCode" HeaderText="Barkod" ReadOnly="True" SortExpression="ProductCode" />
                                    <asp:BoundField DataField="ProductId" HeaderText="Stok Kodu" ReadOnly="True" SortExpression="ProductId" />
                                    <asp:BoundField DataField="ProductName" HeaderText="Stok Adı" ReadOnly="True" SortExpression="ProductName" />

                                    <asp:TemplateField HeaderText="Açıklama" SortExpression="UserName">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Note")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="Qty" HeaderText="Miktar" ReadOnly="True" SortExpression="Qty" />
                                    <asp:BoundField DataField="BirimAdi" HeaderText="Birim" ReadOnly="True" SortExpression="BirimAdi" />

                                    <asp:TemplateField HeaderText="Fiyat" SortExpression="Price">
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# formatCurTL(container.dataitem("Price"))%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Hiz. Fiyatı" SortExpression="Price">
                                        <ItemTemplate>
                                            <asp:Label ID="Label10" runat="server" Text='<%# formatCurTL(Container.DataItem("ServicePrice"))%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="Discount1" HeaderText="İsk1" ReadOnly="True" SortExpression="Discount1" />
                                    <asp:BoundField DataField="Discount2" HeaderText="İsk2" ReadOnly="True" SortExpression="Discount2" />
                                    <asp:BoundField DataField="Discount3" HeaderText="İsk3" ReadOnly="True" SortExpression="Discount3" />
                                    <asp:BoundField DataField="Discount4" HeaderText="İsk4" ReadOnly="True" SortExpression="Discount4" />
                                    <asp:BoundField DataField="Discount5" HeaderText="İsk5" ReadOnly="True" SortExpression="Discount5" />

                                    <asp:TemplateField HeaderText="Toplam Tutar" SortExpression="TotalPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="İskTopTut" SortExpression="DiscTotPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="NetTopTut" SortExpression="NetTotPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="KDV" SortExpression="KdvRate">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKdvRate" runat="server" Text='<%# Bind("Kdv")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="KdvTopTut" SortExpression="KdvTotPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="En" SortExpression="En">
                                        <ItemTemplate>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("En")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Boy" SortExpression="Boy">
                                        <ItemTemplate>
                                            <asp:Label ID="lblOrdlblOrderBoyerDate" runat="server" Text='<%# Bind("Boy")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Yukseklik" SortExpression="En">
                                        <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%# Bind("Yukseklik")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Agirlik" SortExpression="Agirlik">
                                        <ItemTemplate>
                                            <asp:Label ID="Label13" runat="server" Text='<%# Bind("Agirlik")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Hacim" SortExpression="Hacim">
                                        <ItemTemplate>
                                            <asp:Label ID="Label14" runat="server" Text='<%# Bind("Hacim")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                        <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                        <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                        <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
                        <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>

                    </div>
                </div>
            </div>
            <asp:Label Text="" runat="server" ID="lbl" />
        </div>
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".button").button();
            $("#module", this).addClass('ui-widget');
            $("div#module_content", this).addClass('ui-widget-content ui-corner-all');
            $("#module_title", this).addClass('ui-widget-header ui-corner-all');
            $("#module_title_icon", this).addClass('ui-icon ui-icon-triangle-1-e');
            $("div.module a", this).addClass('ui-priority-primary');
        });
    </script>
</body>
</html>

