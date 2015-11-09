<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditUsages" Codebehind="EditUsages.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Ürün Sarf Malzemeleri</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Sarf Malzeme Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<div class="buttonGroup">
                <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="UsageId" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn DataField="UsageId" SortExpression="UsageId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="uProductName" SortExpression="uProductName" HeaderText="<%$ Resources:admin,ConsumableItems %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Remove %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:CheckBox ID="chkalternative" runat="server" />
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>           
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash"></i> <%= GetGlobalResourceObject("admin","Remove") %></asp:LinkButton>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND %>";
        var b = "<%= moduleId %>";
        popupWindow(800, 730, 50, '/admin/ecommerce/product/EditUsage.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }
</script>