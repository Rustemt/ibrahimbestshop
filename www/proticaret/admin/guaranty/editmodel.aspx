<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editmodel.aspx.vb" Inherits="editmodel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Model Ekle</title>
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
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Markası : <asp:RequiredFieldValidator ID="ddlMarkNameRFV" runat="server" ControlToValidate="ddlMarkName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlMarkName" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label>Model Kodu : <asp:RequiredFieldValidator ID="txtModelCodeRFV" runat="server" ControlToValidate="txtModelCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtModelCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Kategori Adı : <asp:RequiredFieldValidator ID="txtModelNameRFV" runat="server" ControlToValidate="txtModelName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtModelName" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama :</label>
						<asp:TextBox ID="txtModelDesc" runat="server" MaxLength="400" Height="100px" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet"/>
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