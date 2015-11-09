<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.manageusergroup" Codebehind="manageusergroup.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Kullanýcý Grubu Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Kullanýcý Grubu Düzenle</div>
		</div>
		<div class="toggleContent">
			<div id="alert" runat="server" visible="false"  class="alert alert-info"><asp:Label ID="lblEror" runat="server"></asp:Label></div>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo colBtn">
						<asp:DropDownList ID="allRoles" runat="server"  DataTextField="RoleName" DataValueField="RoleId"></asp:DropDownList>
						<asp:LinkButton ID="addExisting" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,AddUserGroup %>"></asp:LinkButton>
					</div>
				</div>
			</div>
			
			<div class="dataTable">
			<asp:DataList ID="userRoles" runat="server" GridLines="None" RepeatColumns="2" DataKeyField="RoleId">
				<ItemTemplate>
					<asp:ImageButton ID="Imagebutton1" runat="server" AlternateText="<%$ Resources:admin,DeleteUserGroup %>" CommandName="delete" ImageUrl="/admin/assets/img/delete.gif"></asp:ImageButton>
					<asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RoleName") %>'></asp:Label>
				</ItemTemplate>
			</asp:DataList>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>