<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editjobgroup.aspx.vb" Inherits="editjobgroup" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>İş Grubu Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Kategori Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>İş Grubu Kodu : <asp:RequiredFieldValidator ID="JobGroupCodeRFV" runat="server" ControlToValidate="txtJobGroupCode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtJobGroupCode" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>İş Grubu Adı : <asp:RequiredFieldValidator ID="txtJobGroupNameRFV" runat="server" ControlToValidate="txtJobGroupName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtJobGroupName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Şubesi : <asp:RequiredFieldValidator ID="ddlServicesNameRFV" runat="server" ControlToValidate="ddlServicesName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlServicesName" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label>Departman : <asp:RequiredFieldValidator ID="ddlDepartmentNameRFV" runat="server" ControlToValidate="ddlDepartmentName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlDepartmentName" runat="server"></asp:DropDownList>
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