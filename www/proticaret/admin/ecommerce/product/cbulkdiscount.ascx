<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbulkdiscount.ascx.vb" Inherits="ASPNetPortal.cbulkdiscount" %>
<div class="pageBulkDiscountList">

    <asp:Label ID="lblerr" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="alert alert-info" id="alert" runat="server">
        <asp:Label ID="msg" runat="server"></asp:Label>
    </div>
    <div class="buttonGroup">
        <a class="btnDefault" id="lnkAddNew" runat="server" href="#" onclick="AddNewBulk()"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddNew")%></a>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="DiscountId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn DataField="UnitName" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Birim Adi"></asp:BoundColumn>
                <asp:BoundColumn DataField="StartQty" SortExpression="StartQty" HeaderText="Başlangıç Miktari"></asp:BoundColumn>
                <asp:BoundColumn DataField="EndQty" SortExpression="EndQty" HeaderText="Bitiş Miktari"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="İndirim Tipi" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# IIf(DataBinder.Eval(Container.DataItem, "DiscountType") = 1,"Yüzde","Tutar") %>' ID="lblDiscountType"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="DiscountAmount" SortExpression="DiscountAmount" HeaderText="İndirim Miktari"></asp:BoundColumn>
                <asp:BoundColumn DataField="UnitPrice" SortExpression="UnitPrice" HeaderText="Fiyat Son Hali"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox1"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditBulkDiscount.aspx?IND=" & DataBinder.Eval(Container.DataItem,"DiscountId") & "&DIND=" &  DataBinder.Eval(Container.DataItem,"ProductId") & ""","""",""width=650,height=350,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
<script type="text/javascript">
    function AddNewBulk() {
        var a = "<%= IND %>";
        var b = "<%= moduleId %>";
        popupWindow(600, 350, 50, '/admin/ecommerce/product/EditBulkDiscount.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }

</script>
