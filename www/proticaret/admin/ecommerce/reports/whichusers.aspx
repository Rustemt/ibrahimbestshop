<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="whichusers.aspx.vb" Inherits="ASPNetPortal.whichusers" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Sepetine Ürünü Ekleyen Kullanıcılar</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Sepetine Ürünü Ekleyen Kullanıcılar</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lbl" runat="server" />
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
			<Columns>
			<asp:BoundColumn DataField="UserId" HeaderText="IND" Visible="false" ></asp:BoundColumn>
			<asp:BoundColumn DataField="CompanyCode" HeaderText="F.Kodu"></asp:BoundColumn>
			<asp:BoundColumn DataField="email" HeaderText="EPosta"></asp:BoundColumn>
			<asp:BoundColumn DataField="Name" HeaderText="Kullanıcı Adı"></asp:BoundColumn>
			<asp:BoundColumn DataField="FullName" HeaderText="Adı Soyadı"></asp:BoundColumn>
			<asp:BoundColumn DataField="Phone1" HeaderText="Telefon"></asp:BoundColumn>
			<asp:BoundColumn DataField="Phone2" HeaderText="Cep Telefon"></asp:BoundColumn>
			<asp:BoundColumn DataField="CreatedDate" HeaderText="Kayıt Tarihi"></asp:BoundColumn>
			<asp:BoundColumn DataField="LastLogin" HeaderText="Son Login Tarihi"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Detay" Visible="false" >
			<ItemTemplate>
			<asp:HyperLink ID="HyperLink1" runat="Server" data-width="750" data-height="900" CssClass="btnDefault" NavigateUrl='<%# "/admin/ecommerce/user/edituser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '>Detay</asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button Text="Kapat" runat="server" ID="btnCancel" CssClass="btnDefault" />
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>