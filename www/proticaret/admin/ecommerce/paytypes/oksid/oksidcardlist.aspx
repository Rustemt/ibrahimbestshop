<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="oksidcardlist.aspx.vb" Inherits="ASPNetPortal.oksidcardlist" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Oksid Kart Listesi</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Oksid Kart Listesi</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblMsg" runat="server"></asp:Label>
			<p>Oksid Kartları | Son Güncelleme Tarihi: <asp:Label ID="lblLCTXmlFile" runat="server"></asp:Label></p>
			<div class="dataTable">
			<asp:DataGrid ID="MyCardsList" runat="server" GridLines="None" AllowPaging="true" AutoGenerateColumns="false" PageSize="15" HeaderStyle-CssClass="title">
				<Columns>
					<asp:BoundColumn DataField="Kart_id" HeaderText="Kart Sıra No" Visible="false"></asp:BoundColumn>
					<asp:BoundColumn DataField="banka_id" HeaderText="Banka Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="kart_adi" HeaderText="Kart Adı"></asp:BoundColumn>
					<asp:BoundColumn DataField="banka_adi" HeaderText="Banka Adı"></asp:BoundColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:HyperLink ID="hLinkDetail" runat="server" CssClass="btnDefault" Text="XML Bilgisi İcin Tıklayın"></asp:HyperLink>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>