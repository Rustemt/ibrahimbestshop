<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditPackage" Codebehind="EditPackage.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Hediye Paketi Ambalaj Tanýmlarý</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Hediye Paketi (Ambalaj) Tanýmlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Active")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ImageFile")%> :</label>
						<asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
						<asp:hyperlink id="showGalleryButton" runat="server" CssClass="btnDefault" navigateurl="javascript:BrowseServer('txtFileName');"><i class="fa fa-folder-open-o"></i> Galeri</asp:hyperlink>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<asp:Image ID="imge" runat="server" Height="70px"></asp:Image>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnSaveExit" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>