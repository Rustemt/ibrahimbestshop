<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditAffiliateBanner" Codebehind="EditAffiliateBanner.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Reklam Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Reklam Düzenle</div>
		</div>
		<div class="toggleContent">
			<table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
			<tr>
			<td>
			<asp:label id="lblErr" runat="server"></asp:label>
			<asp:validationsummary id="ValidationSummary1" runat="server" showmessagebox="True" showsummary="False"></asp:validationsummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "AdvertisingName")%> : <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="txtFileName" errormessage="Reklam Adý Girmelisiniz.">*</asp:requiredfieldvalidator></label>
						<asp:textbox id="txtName" runat="server"></asp:textbox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "AdvertisingType")%> :</label>
						<asp:dropdownlist id="ddlType" runat="server">
							<asp:ListItem Value="Banner">Banner</asp:ListItem>
							<asp:ListItem Value="Text">Text</asp:ListItem>
						</asp:dropdownlist>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ImageFile")%> :</label>
						<asp:textbox id="txtFileName" runat="server"></asp:textbox>
						<asp:hyperlink id="showGalleryButton" runat="server" CssClass="btnDefault" navigateurl="#" onclick="BrowseServer('txtFileName');"><i class="fa fa-folder-open-o"></i> Galeri</asp:hyperlink>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "AdvertisingActive")%> : <asp:checkbox id="chkIsActive" runat="server" checked="True"></asp:checkbox></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "AdvertisingHtml")%> :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Width="550px" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "ExampleLinks")%> :</label>
						1-) http://www.proticaret.net/default.aspx?utm_source=affiliate&amp;utm_medium=banner&amp;utm_campaign=[AffiliateId]&amp;AffiliateId=[AffiliateId]<br />
						2-) http://www.proticaret.net/default.aspx?AffiliateId=[AffiliateId]
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:button id="btnAdd" runat="server" cssclass="btnDefault" text="<%$ Resources:admin,Save %>"></asp:button>
				<asp:button id="btnCancel" runat="server" cssclass="btnDefault" causesvalidation="False" text="<%$ Resources:admin,Close %>"></asp:button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
