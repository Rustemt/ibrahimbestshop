<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offerlist.ascx.vb" Inherits="offerlist1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="suppliers" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span>Teklif Listesi </span>
        </div>
        <div>
            <br/>
        <div class="module_box" style="border:2px solid forestgreen;"><asp:Label ID="lblmsg" runat="server"></asp:Label></div>
            <br/>
            <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" CssClass="datalist" CellPadding="5" HeaderStyle-CssClass="title" GridLines="None" ItemStyle-CssClass="row" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" Width="100%">
                        <HeaderStyle CssClass="title" />
                        <Columns>

                            <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                            <asp:BoundField DataField="FullName" HeaderText="Teklifi Yapan" ReadOnly="True" SortExpression="FullName" />
                            <asp:TemplateField HeaderText="Fiyat" SortExpression="Toplam">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# formatCurTL(Container.DataItem("Toplam")) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:BoundField DataField="TotalIsk" HeaderText="Teklif" SortExpression="TotalIsk" />
                            <asp:BoundField DataField="OfferStatusName" HeaderText="Teklif Durumu" ReadOnly="True" SortExpression="OfferStatusName" />
                            <asp:BoundField DataField="DateCreated" HeaderText="Tarih" SortExpression="DateCreated" />
                            <asp:BoundField DataField="SendDate" HeaderText="Gönderim Tarih" SortExpression="SendDate" />
                            <asp:BoundField DataField="DeliveryDate" HeaderText="Sevk Tarih" SortExpression="DeliveryDate" />
                            <asp:BoundField DataField="ValidDate" HeaderText="Geçerlilik Tarih" SortExpression="ValidDate" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink runat="server" CssClass="lightbox button" ID="hlPayIt" NavigateUrl='<%# "~/store/offerorderdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & ""%>'>Detay</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>

<%--                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink runat="server" CssClass="button" ID="hlPayIt" NavigateUrl='<%# "~/store/payment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") & "&KID=" & UserID & ""%>'>Ödeme Yap</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>--%>

                        </Columns>
                    </asp:GridView>
                    <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
                    <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label>
                    <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label>
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                </ContentTemplate>

            </asp:UpdatePanel>

        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".lightbox").colorbox({ width: "600", height: "400", iframe: true, scrolling: false });
    });

</script>