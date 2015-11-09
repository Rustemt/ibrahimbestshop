<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editwizard" Codebehind="editwizard.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Teknik Tablo Tanımı</title> 
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Teknik Tablo Tanımı</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Teknik Tablo Adı : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Sihirbaz Adı Girmelisiniz" ControlToValidate="txtWizardName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtWizardName" runat="server" MaxLength="100"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Text="Aktif" Checked="True"></asp:CheckBox> <asp:CheckBox ID="chkIsVisible" runat="server" Checked="True" Text="Arama sihirbazı" Visible="false" /></label>	
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Gösterim Sırası :</label>
						<ew:NumericBox ID="txtShowOrder" runat="server" TextAlign="Right"  DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
					</div>
					<div class="colTwo colBtn">
						<label>Resim :</label>
						<asp:TextBox ID="BSrc" runat="server"></asp:TextBox>
						<asp:HyperLink ID="logoGaleri" runat="server" CssClass="btnDefault" onclick="BrowseServer('BSrc');" navigateurl="#"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Detay :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" CssClass="btnDefault" runat="server" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" CssClass="btnDefault" runat="server" Text="İptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>