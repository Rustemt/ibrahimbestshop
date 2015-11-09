<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editdepartment.aspx.vb" Inherits="editdepartment" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Departman Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Departman Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server" ></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Departman Kodu : <asp:RequiredFieldValidator ID="txtServicesSubCategoryCodeRFV" runat="server" ControlToValidate="txtDepartmentCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtDepartmentCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Departman Adı : <asp:RequiredFieldValidator ID="txtDepartmentNameRFV" runat="server" ControlToValidate="txtDepartmentName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtDepartmentName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Cep Telefonu : <asp:RegularExpressionValidator ID="txtDepartmentMobileREV" runat="server" ErrorMessage="*" ControlToValidate="txtDepartmentMobile" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
						<asp:TextBox ID="txtDepartmentMobile" runat="server" MaxLength="11"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Sabit Telefon : <asp:RegularExpressionValidator ID="txtDepartmentPhoneREV" runat="server" ErrorMessage="*" ControlToValidate="txtDepartmentPhone" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
						<asp:TextBox ID="txtDepartmentPhone" runat="server" MaxLength="11"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Fax : <asp:RegularExpressionValidator ID="txtDepartmentFaxREV" runat="server" ErrorMessage="*" ControlToValidate="txtDepartmentFax" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
						<asp:TextBox ID="txtDepartmentFax" runat="server" MaxLength="11"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durum :</label>
						<asp:DropDownList ID="ddlDepartmentStatus" runat="server">
						<asp:ListItem Value="2">Aktif</asp:ListItem>
						<asp:ListItem Value="1">Pasif</asp:ListItem>
						<asp:ListItem Value="0">Belirsiz</asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
						<asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>