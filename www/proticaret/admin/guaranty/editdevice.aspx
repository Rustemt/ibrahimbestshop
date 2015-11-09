<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editdevice.aspx.vb" Inherits="editdevice" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Yeni Cihaz Ekle</title>
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
						<label>Cihaz Kodu : <asp:RequiredFieldValidator ID="txtDeviceCodeRFV" runat="server" ControlToValidate="txtDeviceCode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtDeviceCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Cihaz Adı : <asp:RequiredFieldValidator ID="txtDeviceNameRFV" runat="server" ControlToValidate="txtDeviceName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtDeviceName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Marka : <asp:RequiredFieldValidator ID="ddlMarkNameRFV" runat="server" ControlToValidate="ddlMarkName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlMarkName" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label>Model : <asp:RequiredFieldValidator ID="ddlModelNameRFV" runat="server" ControlToValidate="ddlModelName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlModelName" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Seri No : <asp:RequiredFieldValidator ID="txtSerialNoRFV" runat="server" ControlToValidate="txtSerialNo">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtSerialNo" runat="server" MaxLength="200"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Ürün Adı : <asp:RequiredFieldValidator ID="ddlProductNameRFV" runat="server" ControlToValidate="ddlProductName" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlProductName" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özellik 1 :</label>
						<asp:TextBox ID="txtDeviceProperty1" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Özellik 2 :</label>
						<asp:TextBox ID="txtDeviceProperty2" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özellik 3 :</label>
						<asp:TextBox ID="txtDeviceProperty3" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Özellik 4 :</label>
						<asp:TextBox ID="txtDeviceProperty4" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özellik 5 :</label>
						<asp:TextBox ID="txtDeviceProperty5" runat="server" MaxLength="50"></asp:TextBox>
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