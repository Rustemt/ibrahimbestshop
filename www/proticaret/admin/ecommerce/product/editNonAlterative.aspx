<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editNonAlterative.aspx.vb" Inherits=".editNonAlterative" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Alternatif Olmayan Düzenle</title>	
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Alternatif Olmayan Ürün Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<table width="100%" cellpadding="0" cellspacing="0" border="0" runat="server">
			<tr>
			<td>
			<div class="colGroup">
				<div class="col col2">
					<label><asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "ProductCode2")%> :</asp:Label></label>
					<asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
					<asp:DropDownList ID="ddlfilter" runat="server" >
					<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="col col2">
					<label><asp:Label ID="Label3" runat="server"><%=GetGlobalResourceObject("admin", "ProductName")%> :</asp:Label></label>
					<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
					<asp:DropDownList ID="ddlFulnameFilter" runat="server" >
					<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="col">
					<label><asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("admin", "Brand")%>:</asp:Label></label>
					<asp:DropDownList ID="ddlMark" runat="server" AutoPostBack="True"></asp:DropDownList>
				</div>
				<div class="col">
					<label>&nbsp;</label>
					<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" ShowFooter="true" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<Columns>
				<asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="<%$ Resources:admin,ProductCode2 %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,AlternativeMsg1 %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" FooterStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:CheckBox ID="chkalternative" runat="server" />
					</ItemTemplate>
					<FooterTemplate>
						<asp:Button ID="btnaddAlternative" CommandName="add" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault"></asp:Button>
					</FooterTemplate>
				</asp:TemplateColumn>            
			</Columns>
			<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
			</asp:DataGrid>
			</div>
			<div class="dataCount">
				<ul>
					<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
				</ul>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSaveExit" runat="server" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>