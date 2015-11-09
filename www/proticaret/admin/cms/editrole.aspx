<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editrole" Codebehind="editrole.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "GroupEdit")%></title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Grup Düzenle</div>
		</div>
		<div class="toggleContent" runat="server">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "GroupName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:admin,EditRoleMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:admin,EditRoleMsg1 %>">*</asp:RequiredFieldValidator>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
			<asp:LinkButton ID="btnAdd" runat="server" CssClass="btnDefault"><i class="fa fa-floppy-o"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
			<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>