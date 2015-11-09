<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditAlternative1" Codebehind="EditAlternative.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Alternatif Ürünler</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Alternatif Ürün Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server" ></asp:Label>
			<div class="dataFilter">
				<div class="colGroup">
					<div class="col col2">
						<label><asp:Label ID="Label1" runat="server">Stok Kodu :</asp:Label></label>
						<asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlfilter" runat="server" >
						<asp:ListItem Value="like '%[]%'">Ý&#231;erir</asp:ListItem>
						<asp:ListItem Value="like '[]%'">Baþlar</asp:ListItem>
						<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
						<asp:ListItem Value="='[]'">Eþittir</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label3" runat="server">Ürün Adý :</asp:Label></label>
						<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlFulnameFilter" runat="server">
						<asp:ListItem Value="like '%[]%'">Ý&#231;erir</asp:ListItem>
						<asp:ListItem Value="like '[]%'">Baþlar</asp:ListItem>
						<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
						<asp:ListItem Value="='[]'">Eþittir</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col">
						<label><asp:Label ID="Label4" runat="server">Marka:</asp:Label></label>
						<asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True"></asp:DropDownList>
					</div>
					<div class="col">
						<label>&nbsp;</label>
						<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault">Ara</asp:LinkButton>
					</div>
				</div>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" ShowFooter="true" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="Stok Kodu"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Adý"></asp:BoundColumn>
				<asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="Marka Adý"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Alternatif Olarak Ekle">
					<ItemTemplate>
						<asp:CheckBox ID="chkalternative" runat="server" />
					</ItemTemplate>
					<FooterTemplate>
						<asp:Button ID="btnaddAlternative" CommandName="add" runat="server" Text="Ekle" CssClass="btnDefault"></asp:Button>
					</FooterTemplate>
				</asp:TemplateColumn>
				</Columns>
				<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
			</asp:DataGrid>
			</div>
			<div class="dataCount">
				<ul>
					<li>Toplam Kayýt : <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li>Toplam Sayfa : <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li>Geçerli Sayfa : <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
				</ul>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSaveExit" runat="server" Text="Kapat" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>