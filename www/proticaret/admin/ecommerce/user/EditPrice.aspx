<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditPrice.aspx.vb" Inherits="ASPNetPortal.EditPrice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fiyat Listeleri</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Fiyat Listeleri</div>
                </div>
                <div class="toggleContent">
                    <div class="dataTable">
                        <asp:DataGrid ID="dgprice" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                            <Columns>
                                <asp:BoundColumn DataField="PriceId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="PriceName" HeaderText="Fiyat Listesi Adı"></asp:BoundColumn>
                                <asp:BoundColumn DataField="DiscountType" HeaderText="İndirim Tipi"></asp:BoundColumn>
                                <asp:BoundColumn DataField="DiscountAmount" HeaderText="İndirim Miktarı/Oranı"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Price" HeaderText="Uygulanacak Fiyat"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Detay" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                                    <ItemTemplate>
                                        <asp:HyperLink ID="Hyperlink3" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/user/EditPriceList.aspx?PID=" & DataBinder.Eval(Container.DataItem,"PriceId") & "&UID=" & DataBinder.Eval(Container.DataItem,"UserId") &  ""","""",""width=1100,height=900,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i>
                                        </asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                        <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
