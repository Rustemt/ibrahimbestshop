<%@ page language="vb" autoeventwireup="false" inherits="EditVideo" codebehind="editvideo.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Video Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Video Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:label id="lblErr" runat="server"></asp:label>
			<asp:validationsummary id="ValidationSummary1" runat="server" showsummary="False" showmessagebox="True"></asp:validationsummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
				<td>
					<div class="dataForm">
						<div class="row">
							<div class="colTwo colBtn">
								<label><%=GetGlobalResourceObject("admin", "FilePath")%> :</label>
								<asp:textbox id="txtFileName" runat="server"></asp:textbox>
								<asp:hyperlink id="showGalleryButton" runat="server" cssclass="btnDefault" onclick="BrowseServer('txtFileName');" navigateurl="#"><i class="fa fa-folder-open-o"></i> Galeri</asp:hyperlink>
							</div>
						</div>
					</div>		
				</td>
			</tr>
			<tr>
				<td id="tdPanel" runat="server"></td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:button id="btnSaveExit" runat="server" text="<%$ Resources:admin,Save %>" cssclass="btnDefault"></asp:button>
				<asp:button id="btnDelete" runat="server" text="<%$ Resources:admin,Delete %>" causesvalidation="False" cssclass="btnDefault" Visible="false"></asp:button>
				<asp:button id="btnCancel" runat="server" text="<%$ Resources:admin,Close %>" causesvalidation="False" cssclass="btnDefault"></asp:button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>