<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SecurityRoles" Codebehind="SecurityRoles.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "UserGroupSettings")%></title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Kullanýcý Grubu Ayarlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblMessage" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colOne colBtn">
						<asp:DropDownList ID="allUsers" runat="server"></asp:DropDownList>
						<asp:LinkButton ID="addExisting" runat="server" CssClass="btnDefault"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "UserAddGroup")%></asp:LinkButton>
					</div>
				</div>
			</div>
			<p><label runat="server"><%=GetGlobalResourceObject("admin", "UsersGroupMembers")%></label></p>
			<table id="tblsecroles" width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataFilter">
				<div class="colGroup">
					<div class="col col2">
						<label><asp:Label ID="Label8" runat="server"><%=GetGlobalResourceObject("admin", "UserName")%> :</asp:Label></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlfilter" runat="server">
						<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Equalss %>"  Value="='[]'"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label3" runat="server"><%=GetGlobalResourceObject("admin", "FullName")%> :</asp:Label></label>
						<asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlFulnameFilter" runat="server">
						<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("admin", "CompanyCode")%> :</asp:Label></label>
						<asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlCodeFilter" runat="server">
						<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col">
						<label>&nbsp;</label>
						<asp:Button ID="btnSearch" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Search %>"></asp:Button>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="dataTable">
			<asp:DataList ID="usersInRole" runat="server" GridLines="None" DataKeyField="UserId" RepeatColumns="2">
			<ItemTemplate>
				<asp:Label ID="Label2" runat="server" Text='<%#  DataBinder.Eval(Container.DataItem, "CompanyCode")  %>'></asp:Label>
				<asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label> - 
				<asp:LinkButton ID="ImageButton1" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CommandName="delete" Text="Gruptan Çýkar" CssClass="textRed"></asp:LinkButton>
			</ItemTemplate>
			</asp:DataList>
			</div>
			<div class="buttonGroup">
				<asp:LinkButton ID="saveBtn" runat="server" CssClass="btnDefault"><i class="fa fa-floppy-o"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>