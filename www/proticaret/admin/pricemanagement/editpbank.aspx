<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpbank.aspx.vb" Inherits="ASPNetPortal.editpbank" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin", "BankEdit")%></div>
		</div>
		<div class="toggleContent">
			<div class="alert alert-info"><asp:Label ID="lblErr" runat="server"></asp:Label></div>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" ForeColor=" "></asp:ValidationSummary>
			
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="Label1" runat="server"><%= GetGlobalResourceObject("admin", "BankName")%>: <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Banka Seçiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></asp:Label></label>
						<asp:DropDownList ID="cmbBankName" runat="server"> </asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="Label10" runat="server"><%= GetGlobalResourceObject("admin", "Active")%>:</asp:Label></label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server"></asp:CheckBox></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnTest" runat="server" Text="Test" CssClass="btnDefault" Visible="False"></asp:Button>
						<asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
						<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>