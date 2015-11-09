<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.fBankInfo" CodeBehind="fbankinfo.aspx.vb" %>
<html>
<head id="head1" runat="server">
<title>Banka Taksit Tanýmlarý</title>
</head>
<body>
<form id="Form1" method="post" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka Taksit Tanýmlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="buttonGroup">
				<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault"><i class="fa fa-plus"> <%=GetGlobalResourceObject("admin","AddNew") %></i></asp:HyperLink>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" HeaderStyle-CssClass="title" AutoGenerateColumns="False" ShowFooter="True">
			<Columns>
				<asp:BoundColumn DataField="BankInfoId" HeaderText="ID"></asp:BoundColumn>
				<asp:BoundColumn DataField="TAKSIT" HeaderText="Taksit"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Oran(%)">
					<ItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# FormatCurDoviz(DataBinder.Eval(Container, "DataItem.Rate")) + " %"%>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Düzenle" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditfBankInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankInfoId") & "&MID=" & BIND & ""","""",""width=600,height=250,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-pencil"></i></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete" ><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Kapat"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>