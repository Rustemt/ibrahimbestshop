<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditAlteratives1" Codebehind="EditAlteratives.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Alternatif Düzenle</title>	
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Alternatif Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<div class="buttonGroup">
			<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" Width="100%" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" DataKeyField="AlternativeId" HeaderStyle-CssClass="title">
				<Columns>
					<asp:BoundColumn DataField="AlternativeId" SortExpression="AlternativeId" HeaderText="IND"></asp:BoundColumn>
					<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Adý"></asp:BoundColumn>
					<asp:BoundColumn DataField="AProductName" SortExpression="AProductName" HeaderText="Alternatif &#220;r&#252;n"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Kaldýr">
						<ItemTemplate>
							<asp:CheckBox ID="chkalternative"  runat="server" />
						</ItemTemplate>
						<FooterTemplate>
							<asp:Button ID="btnaddAlternative" runat="server" CommandName="add" CssClass="btnDefault" Text="Kaldýr" />
						</FooterTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn Visible="false" HeaderText="Kaldýr">
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnDefault" Text="Kaldýr" CausesValidation="false" CommandName="Delete"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>        
			</asp:DataGrid>    
			</div>
			<div class="buttonGroup">
				<asp:LinkButton ID="btnDel" runat="server" CssClass="btnDefault">Kaldýr</asp:LinkButton> 
				<asp:Button ID="btnCancel" Text="Kapat" CausesValidation="False" CssClass="btnDefault" runat="server"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>