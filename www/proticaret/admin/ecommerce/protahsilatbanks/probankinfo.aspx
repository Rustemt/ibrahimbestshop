<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="probankinfo.aspx.vb" Inherits=".probankinfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
<title>Banka Taksit Tanımları</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Taksit Tanımları</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="buttonGroup">
				<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
				<asp:Button ID ="btnUpdateInstallment" Text="Taksitleri ve Oranları Çek" runat="server" CssClass="btnDefault"/>
			</div>
			<div class="dataTable">
				<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
					<Columns>
					<asp:BoundColumn DataField="BankInfoId" HeaderText="ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="Taksit" HeaderText="Taksit"></asp:BoundColumn>
					<asp:BoundColumn DataField="Description" HeaderText="Görünen Taksit"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="Oran(%)">
						<ItemTemplate>
							<asp:Label ID="Label1" runat="server" Text='<%# FormatNumberEx(DataBinder.Eval(Container, "DataItem.Rate")) + " %"%>'>
						</asp:Label>
					</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Düzenle">
						<ItemTemplate>
							<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/protahsilatbanks/editprobankinfo.aspx?IND=" & DataBinder.Eval(Container.DataItem,"BankInfoId") & "&MID=" & BankId & ""","""",""width=450,height=500,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>Düzenle</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="Sil">
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil"></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
					</Columns>
				</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Kapat" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>