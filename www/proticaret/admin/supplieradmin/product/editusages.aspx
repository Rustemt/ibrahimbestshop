<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditUsages1" Codebehind="EditUsages.aspx.vb" %>
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
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="buttonGroup">
			<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" Width="100%" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="UsageId" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn DataField="UsageId" SortExpression="UsageId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Adý"></asp:BoundColumn>
			<asp:BoundColumn DataField="uProductName" SortExpression="uProductName" HeaderText="Sarf &#220;r&#252;n"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Kaldýr">
				<ItemTemplate>
					<asp:CheckBox ID="chkalternative" runat="server" />
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
			<asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault">Kaldýr</asp:LinkButton>
			<asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Kapat" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>