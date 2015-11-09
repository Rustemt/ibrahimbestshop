<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editcategory.aspx.vb" Inherits="editcategory" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis Tip Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup" runat="server">
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
						<label>Kategori Kodu : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtServicesCategoryCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtServicesCategoryCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Kategori Adı : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtServicesCategoryName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtServicesCategoryName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama :</label>
						<asp:TextBox ID="txtServicesCategoryInfo" runat="server" MaxLength="400" Height="100px" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<div class="buttonGroup">
							<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
							<asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>