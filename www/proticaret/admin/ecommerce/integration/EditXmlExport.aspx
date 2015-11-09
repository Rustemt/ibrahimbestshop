<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditXmlExport" Codebehind="EditXmlExport.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Xml Export Düzenle</title>   
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Xml Export Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "XmlListUserName")%> :</label>
						<asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "XmlListPassword")%> :</label>
						<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "XmlListIpAddress")%> :</label>
						<asp:TextBox ID="txtIpAddress" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label><%=GetGlobalResourceObject("admin", "XmlListFileFormat")%> :</label>
					<asp:DropDownList ID="ddlXslFile" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Status")%></label>
						<label class="labelInput"><asp:CheckBox ID="chkAktif" runat="server"></asp:CheckBox> Aktif / Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "XmlListDescription")%> :</label>
						<asp:TextBox ID="txtDescription" runat="server"  MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>  
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