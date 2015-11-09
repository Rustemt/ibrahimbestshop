<%@ Page Language="vb" AutoEventWireup="false" Inherits="SelectAffiliateUser" CodeBehind="SelectAffiliateUser.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Üye Seç</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Üye Seç</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<div class="dataFilter">
				<table id="Table1" runat="server" cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
				<td>
				<div class="colGroup">
					<div class="col">
						<label><asp:Label ID="lblAfiliate" runat="server" Text="<%$ Resources:admin,Affiliates %>"></asp:Label></label>
						<asp:DropDownList ID="ddlAfiliate" runat="server" TabIndex="9">
						<asp:ListItem Selected="True" Value="-1">--T&#252;m&#252;--</asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="2"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "UserName")%> :</asp:Label></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlfilter" runat="server">
						<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label14" runat="server"><%=GetGlobalResourceObject("admin", "Email")%>:</asp:Label></label>
						<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
						<asp:DropDownList ID="ddlemail" runat="server">
						<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
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
					<div class="col col4">
						<label><asp:Label ID="Label10" runat="server"><%=GetGlobalResourceObject("admin", "CreateDate")%> :</asp:Label></label>
						<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
						<ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
					</div>
					<div class="col">
						<label>&nbsp;</label>
						<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Search %>"></asp:LinkButton>
					</div>
				</div>
				</td>
				</tr>
				</table>
			</div>
			<div class="dataTable">
				<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" HeaderStyle-CssClass="title">
					<Columns>
						<asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="false" ></asp:BoundColumn>
						<asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
						<asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
						<asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>">
							<ItemTemplate>
								<asp:Label ID="lbldurumu" runat="Server" Text='<%# iif(DataBinder.Eval(Container.DataItem,"AffiliateStatus")=1,"Aktif","Onay Bekliyor") %> '></asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="TotalOrders" SortExpression="TotalOrders" HeaderText="<%$ Resources:admin,TotalEarnings %>" DataFormatString="{0:0.00 TL}" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
						<asp:BoundColumn DataField="TotalPayments" SortExpression="TotalPayments" HeaderText="<%$ Resources:admin,TotalPayments %>" DataFormatString="{0:0.00 TL}" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
						<asp:BoundColumn DataField="TotalLeft" SortExpression="TotalLeft" HeaderText="<%$ Resources:admin,TotalBalance %>" DataFormatString="{0:0.00 TL}" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
						<asp:TemplateColumn HeaderText="<%$ Resources:admin,Select2 %>">
							<ItemTemplate>
								<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnDefault" CausesValidation="false" CommandName="Delete" Text="<%$ Resources:admin,Select2 %>"></asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateColumn>
					</Columns>
					<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
				</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>