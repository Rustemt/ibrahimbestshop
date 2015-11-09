<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CargoInfo" CodeBehind="CargoInfo.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Kargo Ücret Tanýmlarý</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Kargo Ücret Tanýmlarý</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <div class="buttonGroup">
                        <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
                    </div>
                    <div class="dataTable">
                        <asp:DataGrid ID="dgCargoPrice" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="20" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundColumn Visible="False" DataField="CargoInfoId" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Desi" HeaderText="<%$ Resources:admin,LoadWeight %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Charge %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# formatCurDoviz(DataBinder.Eval(Container, "DataItem.Price")) %>'></asp:Label>
                                        <%=  " " &  publicItems.DefaultCurrencyCode %>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(620,168,50,'/admin/ecommerce/cargo/EditCargoInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CargoInfoId") & "&MID=" & CargoId & "','popup');" %>"><i class="fa fa-pencil"></i></a>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                        </asp:DataGrid>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= CargoId %>" ;
        popupWindow(620,168, 50, '/admin/ecommerce/cargo/EditCargoInfo.aspx?IND=0&MID=' + a, 'popup');
    }
</script>
