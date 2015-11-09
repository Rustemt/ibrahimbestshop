<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditGroup.aspx.vb" Inherits="EditGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Set Ürünler</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Set Ürün Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <div runat="server" id="chkAlert" style="display: none" class="alert alert-error">
                        <label>
                            <asp:Label ID="lblchkMsg" runat="server"></asp:Label></label>
                    </div>
                    <div class="dataFilter">
                        <div class="colGroup">
                            <div class="col col2">
                                <label>
                                    <asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "ProductCode2")%> :</asp:Label></label>
                                <asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlfilter" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col col2">
                                <label>
                                    <asp:Label ID="Label3" runat="server"><%=GetGlobalResourceObject("admin", "ProductName")%> :</asp:Label></label>
                                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                                <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                    <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                    <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>
                                    <asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("admin", "Brand")%>:</asp:Label></label>
                                <asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="col">
                                <label>&nbsp;</label>
                                <asp:LinkButton ID="btnSearch" runat="server" Text="<%$ Resources:admin,Search %>" CssClass="btnDefault"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" ShowFooter="true" runat="server" GridLines="None" HeaderStyle-CssClass="title" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True">
                            <Columns>
                                <asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="<%$ Resources:admin,ProductCode2 %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
                                <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="<%$ Resources:admin,Stock %>"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="Set Stok">
                                    <ItemTemplate>
                                        <asp:TextBox runat="server" ID="txtStockQty">1</asp:TextBox>
                                        <asp:Label runat="server" Visible="false" Text='<%# Eval("BirimAdi") %>' ID="lblUnitName"></asp:Label>
                                        <asp:Label runat="server" Visible="false" Text='<%# Eval("Carpan") %>' ID="lblCarpan"></asp:Label>
                                        <asp:Label runat="server" Visible="false" Text='<%# Eval("UnitId") %>' ID="lblUnitId"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="Set Olarak Ekle">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkalternative" runat="server" />
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:Button ID="btnaddAlternative" OnClientClick="javascript:return CheckBox();" CommandName="add" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault"></asp:Button>
                                    </FooterTemplate>
                                </asp:TemplateColumn>
                            </Columns>
                            <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                        </asp:DataGrid>
                    </div>
                    <div class="dataCount">
                        <ul>
                            <li>Toplam Kayıt :
                                <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                            <li>Toplam Sayfa :
                                <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                            <li>Geçerli Sayfa :
                                <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                        </ul>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSaveExit" runat="server" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    var TargetBaseControl = null;

    window.onload = function () {
        try {
            //get target base control.
            TargetBaseControl =
              document.getElementById('<%= Datagrid1.ClientID%>');
        }
        catch (err) {
            TargetBaseControl = null;
        }
    }

    function CheckBox() {
        if (TargetBaseControl == null) return false;

        //get target child control.
        var TargetChildControl = "chkalternative";

        //get all the control of the type INPUT in the base control.
        var Inputs = TargetBaseControl.getElementsByTagName("input");

        for (var n = 0; n < Inputs.length; ++n)
            if (Inputs[n].type == 'checkbox' &&
               Inputs[n].id.indexOf(TargetChildControl, 0) >= 0 &&
               Inputs[n].checked)
                return true;


        document.getElementById('<%= chkAlert.ClientID%>').style.display = 'block'; // Show
        document.getElementById('<%= lblchkMsg.ClientId%>').innerText = 'Lütfen Tanımlanacak Ürün veya Ürünlerin Seçimini Yapınız!';

        return false;
    }
</script>
