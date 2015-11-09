<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditStok" CodeBehind="EditStok.aspx.vb" %>
<html>
<head id="head1" runat="server">
<title>Hediye �r�n</title>
</head>
<body>
<form id="form2" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Hediye �r�n Listesi</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="dataFilter">
				<div class="colGroup">
					<div class="col col2">
						<label><asp:Label ID="Label1" runat="server">Stok Kodu :</asp:Label></label>
						<asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlfilter" runat="server">
							<asp:ListItem Value="like '%[]%'">�&#231;erir</asp:ListItem>
							<asp:ListItem Value="like '[]%'">Ba�lar</asp:ListItem>
							<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
							<asp:ListItem Value="='[]'">E�ittir</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label3" runat="server">�r�n Ad� :</asp:Label></label>
						<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlFulnameFilter" runat="server">
							<asp:ListItem Value="like '%[]%'">�&#231;erir</asp:ListItem>
							<asp:ListItem Value="like '[]%'">Ba�lar</asp:ListItem>
							<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
							<asp:ListItem Value="='[]'">E�ittir</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col">
						<label><asp:Label ID="Label4" runat="server">Marka:</asp:Label></label>
						<asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True"></asp:DropDownList>
					</div>
					<div class="col">
						<label>&nbsp;</label>
						<asp:Button ID="btnSearch" runat="server" CssClass="btnDefault" Text="Ara"></asp:Button>
					</div>
				</div>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" HeaderStyle-CssClass="title" PagerStyle-Mode="NumericPages" PagerStyle-HorizontalAlign="Right" PagerStyle-NextPageText="Next" PagerStyle-PrevPageText="Prev" OnSortCommand="Datagrid1_SortCommand" OnPageIndexChanged="Datagrid1_PageIndexChanged">
			<Columns>
				<asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="Stok Kodu"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Ad�"></asp:BoundColumn>
				<asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="Marka Ad�"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Hediye &#220;r&#252;n">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Se�"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
			<PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
			</asp:DataGrid>
			</div>
			<div class="dataCount">
				<ul>
					<li>Toplam Kay�t: <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li>Toplam Sayfa: <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li>Ge�erli Sayfa: <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
				</ul>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="�ptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
