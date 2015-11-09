<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userplasiyer.aspx.vb" Inherits="ASPNetPortal.userplasiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "CustomerRepresentativeMemberDefinitions")%></div>
		</div>
		<div class="toggleContent">
			<asp:Label id="lbl" runat="server" />
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
				<Columns>
				<asp:BoundColumn DataField="UserId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/user/edituser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId") & ""","""",""width=750,height=850,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '> <i class="fa fa-edit"></i> </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
					<ItemTemplate>
						<asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"</asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button Text="<%$ Resources:admin,Close %>" runat="server" ID="btnCancel" CssClass="btnDefault" />
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
