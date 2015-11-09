<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editpublisher" Codebehind="editpublisher.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server"> 
<title>Yayýnevi Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Yayýnevi Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<div class="dataForm">
			<table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
				<tr>
					<td>
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "PublisherName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIl" ErrorMessage="Yayýnevi Adý Giriniz.">*</asp:RequiredFieldValidator></label>
								<asp:TextBox ID="txtIl" runat="server"></asp:TextBox>
							</div>
						</div>
					</td>
				</tr>
				<tr id="Tr1" visible="false" runat="server">
					<td>
						<div class="row">
							<div class="colTwo">
								<label><asp:CheckBox ID="chkIsActive" runat="server" Checked="True" Visible="False"></asp:CheckBox> Yayýnevi Aktif</label>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "PublisherDescription")%> :</label>
								<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Width="550px" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
							</div>
						</div>
					</td>
				</tr>     
			</table>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>