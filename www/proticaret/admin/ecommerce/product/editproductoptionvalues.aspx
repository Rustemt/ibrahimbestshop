<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductOptionValues" CodeBehind="EditProductOptionValues.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Varyant Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Varyant Deðeri Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ValueName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Varyant Adý Girmelisiniz." ControlToValidate="txtName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
						<ew:MaskedTextBox ID="txtOrder" runat="server" Text="0" Mask="99" MaxLength="2"></ew:MaskedTextBox>
						<asp:Button ID="btnEkle" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Add %>"></asp:Button>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn Visible="False" DataField="ProductOptionsValuesId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductOptionsValuesName" HeaderText="<%$ Resources:admin,ValueName %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductOptionsValuesShowOrder" HeaderText="<%$ Resources:admin,ShowOrder %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
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