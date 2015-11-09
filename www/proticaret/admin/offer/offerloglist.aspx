<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="offerloglist.aspx.vb" Inherits="offerloglist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Teklif Tarihçesi</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Logo</div>
                </div>

                <div class="toggleContent">
                    <asp:Label ID="lblError" runat="server"></asp:Label>

                    <div class="dataForm">
                        <div class="dataTable">
                            <asp:GridView ID="gvOfferList" runat="server" CssClass="datalist" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True">
                                <HeaderStyle CssClass="title" />
                                <Columns>
                                    <asp:BoundField DataField="OfferTicket" HeaderText="Teklif No" SortExpression="OfferTicket" ReadOnly="True" />
                                    <asp:BoundField DataField="id" HeaderText="Revz.No" SortExpression="id" ReadOnly="True" />

                                    <asp:TemplateField HeaderText="UpdateTarihi" SortExpression="UpdateDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# ChkNullString(Eval("UpdateDate"))%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="KayitTarihi" HeaderText="KayıtTarihi" SortExpression="KayitTarihi" ReadOnly="True" />
                                    <asp:BoundField DataField="Updater" HeaderText="Güncelleyen" ReadOnly="True" SortExpression="Updater" />
                                    <asp:TemplateField HeaderText="Durum" SortExpression="OfferStatusName">
                                        <ItemTemplate>
                                            <span class="Status Status<%# Eval("OfferStatusID")%>"><%# Eval("OfferStatusName")%></span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="OfferPayName" HeaderText="ÖdemeŞekli" SortExpression="OfferPayName" />
                                    <asp:BoundField DataField="OfferSendName" HeaderText="SevkŞekli" ReadOnly="True" SortExpression="OfferSendName" />
                                    <asp:BoundField DataField="PersonName" HeaderText="Personel" SortExpression="PersonName" />
                                    <asp:TemplateField HeaderText="GeçerlilikTarihi" SortExpression="ValidDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Container.DataItem("ValidDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="SevkTarihi" SortExpression="SendDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Container.DataItem("SendDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Teslim Tarihi" SortExpression="DeliveryDate">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItem("DeliveryDate")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Total" HeaderText="Ürün Toplam" SortExpression="Total" />
                                    <asp:BoundField DataField="DiscTotal" HeaderText="Top.İndirim" SortExpression="DiscTotal" />
                                    <asp:BoundField DataField="HizmtBedeli" HeaderText="Hiz.Bedeli" SortExpression="HizmtBedeli" />
                                    <asp:BoundField DataField="NetToplam" HeaderText="İnd.Toplam" SortExpression="NetToplam" />
                                    <asp:BoundField DataField="KdvToplam" HeaderText="KDV" SortExpression="KdvToplam" />
                                    <asp:BoundField DataField="Toplam" HeaderText="KdvDahil" SortExpression="Toplam" />
                                    <asp:BoundField DataField="AdminApproval" HeaderText="Y. Onayı" SortExpression="AdminApproval" />
                                    <asp:TemplateField HeaderText="Detay">
                                        <ItemTemplate>
                                            &nbsp;<asp:HyperLink runat="server" CssClass="button" ID="hllog" NavigateUrl='<%#"Javascript:var PopUpWin = window.open(""/admin/offer/offerlogdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&OID=" & DataBinder.Eval(Container.DataItem, "OfferTicket") & ""","""","" width=1500, height=670, scrollbars=1, toolbar=0, status=1, resizable=1"")"%>'><i class="fa fa-history"></i>Tarihçe</asp:HyperLink>
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
        </div>
        <asp:Label Text="" runat="server" ID="lbl" />
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
