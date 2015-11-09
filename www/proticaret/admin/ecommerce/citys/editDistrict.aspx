<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editDistrict.aspx.vb" Inherits="ASPNetPortal.editDistrict" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>İlçe Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">İlçe Düzenle</div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label Text="<%$ Resources:admin,Country %> " runat="server" /></label>
						<asp:DropDownList runat="server" ID="ddlCountry" AutoPostBack="true"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="Label1" Text="<%$ Resources:admin,City %> " runat="server" /></label>
						<asp:DropDownList runat="server" ID="ddlCity"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="Label2" Text="<%$ Resources:admin,DistrictName %>" runat="server" /> <asp:RequiredFieldValidator runat="server" ID="rq" ControlToValidate="txtDistrictName" ErrorMessage="<%$ Resources:admin,DistrictAddMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtDistrictName"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:CheckBox runat="server" ID="chkStatus" Checked="true" /> <asp:Label ID="Label3" Text="<%$ Resources:admin,StatusActiveorPassive %> " runat="server" /></label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>