<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.Ucartlist" CodeBehind="cartlist.aspx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "Cart")%></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "Cart")%></div>
		</div>
		<div class="toggleContent">
			<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
			<ContentTemplate>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblMsg" runat="server"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False">RecordId DESC</asp:Label>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn DataField="RecordId" SortExpression="RecordId" HeaderText="ID"></asp:BoundColumn>
				<%--<asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="Kullanýcý Adý"></asp:BoundColumn>--%>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode %>">
					<ItemTemplate>
						<asp:HyperLink ID="Hyperlink2" runat="server" Target="_blank" CssClass="btnDefault" Text='<%# container.dataitem("ProductCode")  %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn>
					<ItemTemplate>
						<asp:Image ID="Image3" runat="server" CssClass="UrunListesi_Resim" BorderStyle="None" oncontextmenu='return false' ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>'></asp:Image>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductName %>">
					<ItemTemplate>
						<asp:HyperLink ID="Hyperlink7" runat="server" Target="_blank" CssClass="btnDefault" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
						<asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
					</ItemTemplate>
					<HeaderStyle Wrap="False"></HeaderStyle>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="<%$ Resources:admin,StockQty %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Unit %>">
					<ItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Qty") & "-" & DataBinder.Eval(Container, "DataItem.BirimAdi") %>'> </asp:Label>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="AlisFiyati" SortExpression="AlisFiyati" HeaderText="<%$ Resources:admin,PurchasePrice %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="SatisFiyati" SortExpression="SatisFiyati" HeaderText="<%$ Resources:admin,SalesPrice %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Avails %>">
					<ItemTemplate>
						<asp:Label ID="lblkars" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati") - DataBinder.Eval(Container, "DataItem.AlisFiyati") %>'> </asp:Label>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Currency %>">
					<ItemTemplate>
						<asp:Label ID="lblpb" runat="server" Text="TL"> </asp:Label>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:BoundColumn DataField="Provider" SortExpression="Provider" HeaderText="<%$ Resources:admin,Provider %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" NavigateUrl='<%# String.Format("Javascript:var PopUpWin = window.open(""{0}/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & "&MID=" & 0 & ""","""",""width=900,height=670,scrollbars=1,toolbar=0,status=1,resizable=1"")", BaseUrl)%> '> <i class="fa fa-pencil"></i></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" ><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="dataCount">
				<ul>
					<li><%=GetGlobalResourceObject("admin", "ExcludingVatTotalAvails")%> : <asp:Label ID="lbltoplamKar" runat="server"></asp:Label></li>
					<li><%=GetGlobalResourceObject("admin", "ExcludingVatTotal")%> : <asp:Label ID="lblKdvHaricToplam" runat="server"></asp:Label></li>
					<li><%=GetGlobalResourceObject("admin", "TotalRecording")%> : <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
				</ul>
			</div>
			</ContentTemplate>
			</asp:UpdatePanel>
		</div>
	</div>
</div>
</form>
</body>
</html>