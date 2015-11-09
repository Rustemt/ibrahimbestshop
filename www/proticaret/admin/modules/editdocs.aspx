<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditDocs" Codebehind="editdocs.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Dökuman Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Dökuman Düzenle</div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Belge Adý : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameField" ErrorMessage="Geçerli bir isim girmelisiniz." Display="Static"></asp:RequiredFieldValidator></label>
						<asp:TextBox ID="NameField" runat="server" MaxLength="150"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Kategori :</label>
						<asp:TextBox ID="CategoryField" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>URL Adresi :</label>
						<asp:TextBox ID="PathField" runat="server" MaxLength="250">~/uploads</asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>— veya — </label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Web Server'a gönder :</label>
						<asp:CheckBox ID="Upload" runat="server"></asp:CheckBox>
						<input id="FileUpload" type="file" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:LinkButton ID="updateButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
						<asp:LinkButton ID="deleteButton" CausesValidation="False" runat="server" CssClass="btnDefault"><i class="fa fa-trash"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>