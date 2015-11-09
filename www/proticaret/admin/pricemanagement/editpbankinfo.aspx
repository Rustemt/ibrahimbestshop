<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editpbankinfo.aspx.vb" Inherits="ASPNetPortal.editpbankinfo" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
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
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","BankInstallmentDefinitions") %></div>
		</div>
		<div class="toggleContent">
			<div class="alert alert-info"><asp:Label ID="lblErr" runat="server"></asp:Label></div>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="Label2" runat="server"><%= GetGlobalResourceObject("admin","Installment") %>:</asp:Label> <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ErrorMessage="Taksit Girmelisiniz." ControlToValidate="txtKg">*</asp:RequiredFieldValidator></label>
						<ew:numericbox id="txtKg" runat="server" positivenumber="True" textalign="Right"></ew:numericbox>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="Label1" runat="server" Width="72px"><%= GetGlobalResourceObject("admin","InterestRate") %>(%):</asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Faiz Oranı Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:numericbox id="txtPrice" runat="server" textalign="Right"></ew:numericbox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
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
