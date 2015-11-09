<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductSizeOption" CodeBehind="EditProductSizeOption.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Renk Beden Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Renk Beden Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Ürün Grubu Adý : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Ürün Grubu Adý giriniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Aktif :</label>
						<label class="labelInput"><asp:CheckBox ID="chkActive" runat="server" /> Aktif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>1. Boyut Adý :</label>
						<asp:TextBox ID="txtsize0Name" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkSize0Active" Text="Aktif" runat="server" Checked="True" Enabled="False" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>2. Boyut Adý :</label>
						<asp:TextBox ID="txtsize1Name" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkSize1Active" Text="Aktif" runat="server" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>3. Boyut Adý :</label>
						<asp:TextBox ID="txtsize2Name" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkSize2Active" Text="Aktif" runat="server" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açýklama :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath=" /FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" Text="Ýptal" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>