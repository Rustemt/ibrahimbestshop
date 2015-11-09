<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.edittab1" Codebehind="edittab.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Tab Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Tab Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" ></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Tab Adý : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTabName" ErrorMessage="Tab Adý Girmelisiniz." >*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtTabName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Tab Aktif :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Tab Detayý :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Height="400px" ToolbarSet="BasicPlus" BasePath=" /FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>