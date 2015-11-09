<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editsection.aspx.vb" Inherits="editsection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Bölüm Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server" ></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Bölüm Kodu : <asp:RequiredFieldValidator ID="txtSectionCodeRFV" runat="server" ControlToValidate="txtSectionCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtSectionCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Bölüm Adı : <asp:RequiredFieldValidator ID="txtSectionNameRFV" runat="server" ControlToValidate="txtSectionName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtSectionName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Departman : <asp:RequiredFieldValidator ID="ddlDepartmentRFV" runat="server" ControlToValidate="ddlDepartment" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlDepartment" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label>Cep Telefonu : <asp:RegularExpressionValidator ID="txtSectionMobileREV" runat="server" ErrorMessage="*" ControlToValidate="txtSectionMobile" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
					<asp:TextBox ID="txtSectionMobile" runat="server" MaxLength="11"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Sabit Telefon : <asp:RegularExpressionValidator ID="txtSectionPhoneREV" runat="server" ErrorMessage="*" ControlToValidate="txtSectionPhone" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
					<asp:TextBox ID="txtSectionPhone" runat="server" MaxLength="11"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Fax : <asp:RegularExpressionValidator ID="txtSectionFaxREV" runat="server" ErrorMessage="*" ControlToValidate="txtSectionFax" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></label>
					<asp:TextBox ID="txtSectionFax" runat="server" MaxLength="11"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Durum :</label>
					<asp:DropDownList ID="ddlSectionStatus" runat="server">
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
