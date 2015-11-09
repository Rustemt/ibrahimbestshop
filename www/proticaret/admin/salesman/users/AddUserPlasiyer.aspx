<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddUserPlasiyer.aspx.vb" Inherits="ASPNetPortal.AddUserPlasiyer" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Yeni Üye Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Yeni Üye Ekle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<div class="dataTable">
			<asp:DataGrid ID="dgmember" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
				<Columns>
				<asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="F.Kodu"></asp:BoundColumn>
				<asp:BoundColumn DataField="email" HeaderText="EPosta" SortExpression="email"></asp:BoundColumn>
				<asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="Kullanıcı Adı"></asp:BoundColumn>
				<asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="Adı Soyadı"></asp:BoundColumn>
				<asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="Kayıt Tarihi"></asp:BoundColumn>
				<asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="Son Login Tarihi"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Seç">
					<ItemTemplate>
						<asp:CheckBox ID="chkselect" runat="server"></asp:CheckBox>
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="dataCount">
				<ul>
					<li>Toplam Kayıt : <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li>Toplam Sayfa : <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li>Geçerli Sayfa : <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
				</ul>
			</div>
			<div class="buttonGroup">
				<asp:Button Text="Üye Ekle" ID="btnadd" runat="server" CssClass="btnDefault"/>
				<asp:Button Text="Kapat" ID="btncancel" runat="server" CssClass="btnDefault"/>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>