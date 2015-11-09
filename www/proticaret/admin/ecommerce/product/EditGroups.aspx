<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditGroups.aspx.vb" Inherits="EditGroups" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Set Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Set Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <div runat="server" id="alldiv">
                        <div runat="server" id="chkAlert" style="display: none" class="alert alert-error">
                            <label>
                                <asp:Label ID="lblchkMsg" runat="server"></asp:Label></label>
                        </div>
                        <div class="buttonGroup">
                            <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i><%= GetGlobalResourceObject("admin","AddNew") %></a>
                        </div>
                        <div class="dataTable">
                            <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="ProductGroupId" HeaderStyle-CssClass="title">
                                <HeaderStyle CssClass="title" />
                                <Columns>
                                    <asp:BoundColumn DataField="ProductGroupId" SortExpression="ProductGroupId" HeaderText="IND"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="GProductId" SortExpression="GProductId" HeaderText="GProductId" Visible="false"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="UnitId" SortExpression="UnitId" HeaderText="UnitId" Visible="false"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="AProductName" SortExpression="AProductName" HeaderText="Set Ürünler"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" Visible="false" HeaderText="Miktar"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="Birim">
                                        <ItemTemplate>
                                            <asp:DropDownList runat="server" ID="ddlUnitType"></asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Miktar">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" Text='<%# Eval("StockQty")%>' ID="txtStockQty"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Select %>">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkalternative" runat="server" />
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <asp:Button ID="btnaddAlternative" runat="server" CommandName="add" CssClass="btnDefault" Text="<%$ Resources:admin,Remove %>" />
                                        </FooterTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Delete %>">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Remove %>" CausesValidation="false" CommandName="Delete"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                    </div>
                    <div class="alert alert-info" id="divalertset" runat="server" visible="false">
                        <asp:Label Text="Set Ürün Lisansınız Bulunmamaktadır" runat="server" />
                    </div>
                    <div class="alert alert-info" id="divalertset2" runat="server" visible="false">
                        <asp:Label Text="Ürün Set olarak Tanımlanmamıştır." runat="server" />
                    </div>
                    <div class="buttonGroup">
                        <asp:LinkButton ID="btnDel" OnClientClick="javascript:return CheckBox();" runat="server" CssClass="btnDefault"><i class="fa fa-trash-o"></i> Kaldır</asp:LinkButton>
                        <asp:LinkButton ID="btnUpdate" OnClientClick="javascript:return CheckBox();" runat="server" CssClass="btnDefault"><i class="fa fa-pencil"></i> Güncelle</asp:LinkButton>
                        <asp:Button ID="btnCancel" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault" runat="server"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND%>";
        var b = "<%= moduleId%>";
        popupWindow(785, 950, 50, '/admin/ecommerce/product/EditGroup.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }
</script>
<script type="text/javascript">
    var TargetBaseControl = null;

    window.onload = function () {
        try {
            //get target base control.
            TargetBaseControl =
              document.getElementById('<%= g1.ClientID%>');
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
        document.getElementById('<%= lblchkMsg.ClientId%>').innerText = 'Lütfen Tanımlanacak Yapılacak Ürün veya Ürünlerin Seçimini Yapınız!';

        return false;
    }
</script>
