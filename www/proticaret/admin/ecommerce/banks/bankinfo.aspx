<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.BankInfo" CodeBehind="BankInfo.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Banka Taksit Tanýmlarý</title>
</head>
<body>
<form id="Form1" runat="server">
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
                <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
			</div>
			<div class="dataTable">
				<asp:DataGrid ID="Datagrid1" GridLines="None" runat="server" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
				  <Columns>
				  <asp:BoundColumn DataField="BankInfoId" HeaderText="ID"></asp:BoundColumn>
				  <asp:BoundColumn DataField="Taksit" HeaderText="<%$ Resources:admin,Installment %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
				  <asp:BoundColumn DataField="Description" HeaderText="<%$ Resources:admin,VisibleInstallment %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
				  <asp:TemplateColumn HeaderText="<%$ Resources:admin,InstallmentRate %>">
					<ItemTemplate>
					  <asp:Label ID="Label1" runat="server" Text='<%# FormatNumberEx(DataBinder.Eval(Container, "DataItem.Rate")) + " %"%>'></asp:Label>
					</ItemTemplate>
				  </asp:TemplateColumn>
				  <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
					<a href="javascript:void(0)" class="btnIcon"  onclick="<%# "popupWindow(400,550,50,'EditBankInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankInfoId") & "&MID=" & BankId & "','popup');" %>"><i class="fa fa-pencil"></i></a>
                    </ItemTemplate>
				  </asp:TemplateColumn>
				  <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
					  <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				  </asp:TemplateColumn>
				  </Columns>
				</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= BankId %>";
        popupWindow(400, 550, 50, '/admin/ecommerce/banks/EditBankInfo.aspx?IND=0&MID=' + a, 'popup');
    }
</script>