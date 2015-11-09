<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editsite.aspx.vb" Inherits=".editsite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title><%= GetGlobalResourceObject("admin","AddNewWebSite") %></title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div runat="server" class="titleText"><%= GetGlobalResourceObject("admin","AddNewWebSite") %></div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo"></div>
					<div class="colTwo"></div>
				</div>
			</div>
			<asp:Label Text="" runat="server" ID="lbl" />
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server" Visible="false"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "SiteName")%></label>
						<asp:TextBox ID="txtSiteName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "SqlServerName")%></label>
						<asp:TextBox ID="txtServerName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "DatabaseName")%></label>
						<asp:TextBox ID="txtDbName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "SqlServerUser")%></label>
						<asp:TextBox ID="txtDbUserName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "SqlServerPassword")%></label>
						<asp:TextBox ID="txtDbPass" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label runat="server"><%= GetGlobalResourceObject("admin", "AppointedManager")%></label>
						<label class="labelInput" runat="server"><asp:CheckBox ID="cbIsDefault" runat="server" /> <%= GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" ToolTip="<%$ Resources:admin,MultiAdminMsg1 %>" OnClick="btnSave_Click" />
				<asp:Button ID="btnEdit" runat="server" Text="<%$ Resources:admin,Save %>" Visible="false" CssClass="btnDefault" />
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>