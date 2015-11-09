<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editsubcategory.aspx.vb" Inherits="editsubcategory" %>
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
			<div class="titleText">Kategori Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Kategori : <asp:RequiredFieldValidator ID="ddlServicesCategoryNameRFV" runat="server" ControlToValidate="ddlServicesCategoryName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="ddlServicesCategoryName" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label>Kategori Kodu : <asp:RequiredFieldValidator ID="txtServicesSubCategoryCodeRFV" runat="server" ControlToValidate="txtServicesSubCategoryCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtServicesSubCategoryCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Kategori Adı : <asp:RequiredFieldValidator ID="txtServicesSubCategoryNameRFV" runat="server" ControlToValidate="txtServicesSubCategoryName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtServicesSubCategoryName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
					<label>Açıklama :</label>
					<asp:TextBox ID="txtServicesSubCategoryInfo" runat="server" MaxLength="400" TextMode="MultiLine"></asp:TextBox>
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