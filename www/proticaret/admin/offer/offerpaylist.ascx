<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offerpaylist.ascx.vb" Inherits="offerpaylist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageOfferPayList">
    <asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="Linkaddnewoffertype" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Ödeme Türü Ekle</asp:HyperLink>
            </div>
            <div class="dataTable">
                <asp:GridView ID="gvOfferTypeList" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" Visible="false" /> 
                        <asp:TemplateField HeaderText="Teklif Ödeme Kodu">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/offer/editofferpay.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%# databinder.Eval(Container.DataItem,"OfferPayCode") %> </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="OfferPayName" HeaderText="Teklif Ödeme Türü" ReadOnly="True" SortExpression="OfferPayName" />
                        <asp:BoundField DataField="OfferPayDesc" HeaderText="Teklif Ödeme Açıklaması" ReadOnly="True" SortExpression="OfferPayDesc" />
                        <asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CssClass="btnIcon"><i class="fa fa-trash-o"></i>  </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="dataCount">
                <ul>
                    <li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
