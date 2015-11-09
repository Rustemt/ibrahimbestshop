<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="guarantyloglist.aspx.vb" Inherits="guarantyloglist" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Servis Tarihçesi</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup pageQuaranLogs" id="pageQuaranLogs" runat="server">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Servis Tarihçesi</div>
		</div>
		<div class="toggleContent">
			<asp:Label Text="" runat="server" ID="Label1" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			
			<div class="dataTable">
				<asp:GridView ID="GWOrderList" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True">
				<Columns>
					<asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
					<asp:BoundField DataField="LogNo" HeaderText="Rev. No" SortExpression="LogNo" ReadOnly="True" />
					<asp:BoundField DataField="DocNo" HeaderText="Belge No" SortExpression="DocNo" />
					<asp:BoundField DataField="SerialNo" HeaderText="Seri No" SortExpression="SerialNo" />
					<asp:BoundField DataField="FullName" HeaderText="Üye" ReadOnly="True" SortExpression="FullName" />
					<asp:TemplateField HeaderText="Servis Durumu" SortExpression="Status">
					<ItemTemplate> <span class="Status Status<%# Eval("ServicesStatus") %>"><%# Eval("Status")%></span> </ItemTemplate>
					</asp:TemplateField>
					<asp:BoundField DataField="SaveDate" HeaderText="Tarih" SortExpression="SaveDate" />
					<asp:BoundField DataField="GStatus" HeaderText="Garanti" SortExpression="GStatus" />
					<asp:BoundField DataField="SStatus" HeaderText="Servis Türü" ReadOnly="True" SortExpression="SStatus" />
					<asp:BoundField DataField="MarkName" HeaderText="Marka" ReadOnly="True" SortExpression="MarkName" />
					<asp:BoundField DataField="ModelName" HeaderText="Model" SortExpression="ModelName" />
					<asp:BoundField DataField="ProductName" HeaderText="Ürün" SortExpression="ProductName" />
					<asp:TemplateField HeaderText="Detay">
					<ItemTemplate>
							<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%#"Javascript:var PopUpWin = window.open(""/guaranty/logdetail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ServicesNo") & "&LNO=" & DataBinder.Eval(Container.DataItem, "LogNo") & ""","""","" width=1500, height=670, scrollbars=1, toolbar=0, status=1, resizable=1"")"%>'> Detay </asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateField>
				</Columns>
				</asp:GridView>
			</div>
			<div class="dataCount">
				<ul>
					<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>