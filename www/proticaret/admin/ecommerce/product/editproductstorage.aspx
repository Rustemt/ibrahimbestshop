<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editproductstorage.aspx.vb" Inherits="ASPNetPortal.editproductstorage" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Depo Envanter Listesi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Depo Envanter Listesi</div>
                </div>
                <div class="toggleContent">
                    <div class="dataTable">
                        <asp:DataGrid ID="dgproductstorage" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
                            <HeaderStyle CssClass="title" />
                            <Columns>
                                <asp:BoundColumn DataField="StorageId" HeaderText="DepoId" Visible="false"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductId" HeaderText="Urun Id"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductName" HeaderText="Urun Adı"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductSizeId" HeaderText="TekstilId"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Size1Name" HeaderText="Renk"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Size2Name" HeaderText="Beden"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Size3Name" HeaderText="Drop"></asp:BoundColumn>
                                <asp:BoundColumn DataField="CompanyName" HeaderText="Firma"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ShopName" HeaderText="Satış Yeri"></asp:BoundColumn>
                                <asp:BoundColumn DataField="StorageName" HeaderText="Depo"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Miktar">
                                    <ItemTemplate>
                                        <asp:Label ID="lblProductId" runat="server" Text='<%# Container.DataItem("ProductId")%>' Visible="false" />
                                        <asp:Label ID="lblProductSizeId" runat="server" Text='<%# Container.DataItem("ProductSizeId")%>' Visible="false" />
                                        <asp:Label ID="lblStorageId" runat="server" Text='<%# Container.DataItem("StorageId")%>' Visible="false" />
                                        <ew:NumericBox ID="txtQty" runat="server" Width="25px" Text='<%# Container.DataItem("Quantity")%>' Enabled='<%# IIf(Container.DataItem("StorageId") = 1, False, True)%>'></ew:NumericBox>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
						<div class="buttonGroup">
                            <asp:Button ID="btnsave" Text="Güncelle" runat="server" CssClass="btnDefault" />
                            <asp:Button ID="btncancel" Text="İptal" runat="server" CssClass="btnDefault" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" ForeColor=" "></asp:ValidationSummary>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
