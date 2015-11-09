<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addframe.aspx.vb" Inherits="ASPNetPortal.addframe" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Çerçeve Ekle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Çerçeve Ekle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:Label ID="lbl" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameCode")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" ErrorMessage="<%$ Resources:admin,FrameCodeMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameUpperLeft")%> :</label>
						<input id="oFile1" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameUpperRight")%> :</label>
						<input id="oFile2" type="file" size="13" name="oFile" runat="server" />
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameBottom")%> :</label>
						<input id="oFile3" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameBottomRight")%> :</label>
						<input id="oFile4" type="file" size="13" name="oFile" runat="server" />
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "LeftEdgePicture")%> :</label>
						<input id="oFile5" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "RightEdgePicture")%> :</label>
						<input id="oFile6" type="file" size="13" name="oFile" runat="server" />
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TopEdgePicture")%> :</label>
						<input id="oFile7" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "BottomEdgePicture")%> :</label>
						<input id="oFile8" type="file" size="13" name="oFile" runat="server" />
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PreviewImage")%> :</label>
						<input id="oFile9" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>