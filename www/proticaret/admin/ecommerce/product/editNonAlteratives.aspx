<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditnonAlteratives" Codebehind="EditnonAlteratives.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Alternatif Olmayanları Düzenle</title>	
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Alternatif Olmayanları Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="buttonGroup">
				<a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="nonAlternativeId" HeaderStyle-CssClass="title">
				<Columns>
					<asp:BoundColumn DataField="nonAlternativeId" SortExpression="nonAlternativeId" HeaderText="IND"></asp:BoundColumn>
					<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
					<asp:BoundColumn DataField="AProductName" SortExpression="AProductName" HeaderText="<%$ Resources:admin,nonAlternativeProducts %>"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="<%$ Resources:admin,Remove %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center">
						<ItemTemplate>
							<asp:CheckBox ID="chkalternative"  runat="server" />
						</ItemTemplate>
						<FooterTemplate>
							<asp:Button ID="btnaddAlternative" runat="server" CommandName="add" CssClass="btnDefault" Text="<%$ Resources:admin,Remove %>" />
						</FooterTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Remove %>">
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" Text="<%$ Resources:admin,Remove %>" CausesValidation="false" CommandName="Delete" CssClass="btnDefault"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>        
			</asp:DataGrid>    
			</div>
			<div class="buttonGroup">
				<asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault"><i class="fa fa-trash"></i> <%= GetGlobalResourceObject("admin","Remove") %></asp:LinkButton>
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
        var a = "<%= IND %>";
        var b = "<%= moduleId %>";
        popupWindow(800, 730, 50, '/admin/ecommerce/product/editNonAlterative.aspx?IND=0&DIND=' + a + '&MID=' + b, 'popup');
    }
</script>