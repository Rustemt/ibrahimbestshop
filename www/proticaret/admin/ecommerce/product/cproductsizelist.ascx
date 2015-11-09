<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="cproductsizelist" CodeBehind="cproductsizelist.ascx.vb" %>
<div class="pageProductSizeList clearFix" style="min-width:750px;">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="msg" runat="server"></asp:Label>

    <div class="buttonGroup">
        <a href="javascript:void(0)" runat="server" id="lnkAddNew" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="true">
            <Columns>
                <asp:BoundColumn DataField="ProductSizeId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Size0">
                    <ItemTemplate>
                        <%# container.dataitem("Size0Name") %>
                        <img alt="" border="0" height="16" src='<%# container.dataitem("Size0Path") %>'>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Ürün Resmi" HeaderStyle-Width="130px">
                    <ItemTemplate>
                        <asp:Label ID="lblimage" runat="server" Visible="false" Text='<%#Eval("ProductImageId") %>'></asp:Label>
                        <asp:DropDownList ID="ddlimage" DataSource="<%# dsImages %>" DataTextField="Path" DataValueField="ImageId" runat="server" Width="95px"></asp:DropDownList>
                        <span style="text-align: center; vertical-align: middle; padding-left:5px;" id="imgpre"></span>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="Size1Name" HeaderText="Size1"></asp:BoundColumn>
                <asp:BoundColumn DataField="Size2Name" HeaderText="Size2"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Stok">
                    <ItemTemplate>
                        <ew:NumericBox ID="txtEnvanter" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"StockQty")%> ' Width="25px" TextAlign="Right" DecimalPlaces="0" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Asorti Miktarý">
                    <ItemTemplate>
                        <ew:NumericBox ID="txtEnvanter2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"StockQty2")%> ' Width="25px" TextAlign="Right" DecimalPlaces="0" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Stok Kontrol">
                    <ItemTemplate>
                        <asp:CheckBox ID="cbStockCheck" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "StockCheck")%>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('cbStockCheck', this.checked);" />
                        Tümü
                    </FooterTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Asorti Deðiþken">
                    <ItemTemplate>
                        <asp:CheckBox ID="cbStockChange" runat="server" Checked='<%# DataBinder.Eval(Container.DataItem, "StockChange")%>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('cbStockChange', this.checked);" />Tümü
                    </FooterTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Barkod">
                    <ItemTemplate>
                        <asp:TextBox ID="txtBarkod" runat="server" MaxLength="50" Text='<%# DataBinder.Eval(Container.DataItem,"Barcode")%>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center">
                    <HeaderStyle Width="10px"></HeaderStyle>
                    <ItemTemplate>
                        <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                    <FooterTemplate>
                        <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />Tümü
                    </FooterTemplate>
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle Visible="False" CssClass="Admin_TabloBaslik" Mode="NumericPages"></PagerStyle>
        </asp:DataGrid>
    </div>

    <div class="buttonGroup" style="float:left; margin-left:10px;">
        <asp:Button ID="btnUpdate" runat="server" CssClass="btnDefault" Text="Güncelle" />
        <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" Text="Sil" />
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

        $('select[id$="ddlimage"]').each(function () {
            src = $("option:selected", this).text();
            img = $('<img height="20" src="/uploads/productsimages/' + src + '"/>');
            $(this).next().empty().append(img);
        });

        $('select[id$="ddlimage"]').each(function () {
            $(this).bind("change", function () {
                src = $("option:selected", this).text();
                img = $('<img height="20" src="/uploads/productsimages/' + src + '"/>');
                $(this).next().empty().append(img);
            });
        });
    });
</script>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND%>";
        var b = "<%= moduleId%>";
        popupWindow(620, 750, 50, '/admin/ecommerce/product/EditProductSizesValues.aspx?IND=' + b + '&PID=' + a + '&MID=' + b, 'popup');
    }
</script>
