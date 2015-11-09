<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editslideritem"    Codebehind="editslideritem.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Slayt Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Slayt Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Baþlýk :</label>
						<asp:textbox id="txttitle" runat="server"></asp:textbox>
					</div>
					<div class="colTwo colBtn">
						<label>Resim :</label>
						<asp:textbox id="txtsrc" runat="server"></asp:textbox>
						<asp:hyperlink id="showGalleryButton" CssClass="btnDefault" onclick="BrowseServer('txtsrc');" navigateurl="#" runat="server" text="Galeri"></asp:hyperlink>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Hedef Url :</label>
						<asp:textbox id="txtLink" runat="server"></asp:textbox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Html :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Width="100%" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
			</div>
			
			<div class="buttonGroup">
				<asp:LinkButton ID="btnAdd" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="Ýptal" />
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
