<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editservicetype.aspx.vb" Inherits="editservicetype" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis tip Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:Label ID="lblTitle" runat="server"></asp:Label></div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Tip Kodu : <asp:RequiredFieldValidator ID="txtServicesTypeCodeRFV" runat="server" ControlToValidate="txtServicesTypeCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtServicesTypeCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Tip Adı : <asp:RequiredFieldValidator ID="txtServicesTypeNameRFV" runat="server" ControlToValidate="txtServicesTypeName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtServicesTypeName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Şube : <asp:RequiredFieldValidator ID="ddlCenterRFV" runat="server" ControlToValidate="ddlCenter" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlCenter" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label>Bölüm : <asp:RequiredFieldValidator ID="ddlSectionRFV" runat="server" ControlToValidate="ddlSection" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlSection" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Departman : <asp:RequiredFieldValidator ID="ddlDepartmentRFV" runat="server" ControlToValidate="ddlDepartment" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlDepartment" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label>Proje : <asp:RequiredFieldValidator ID="ddlProjectRFV" runat="server" ControlToValidate="ddlProject" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlProject" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
					<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" ToolTip="Siteyi Entegreli siteler listesine ekler." OnClick="btnSave_Click" />
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