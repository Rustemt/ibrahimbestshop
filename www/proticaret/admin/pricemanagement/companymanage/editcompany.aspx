﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editcompany.aspx.vb" Inherits="ASPNetPortal.editcompany" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Firma Düzenle</div>
		</div>
		<div class="toggleContent"> 
			<asp:Label ID="lbl" runat="server" Text=""></asp:Label>
			<asp:Label ID="lblError" runat="server" Text=""></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" ForeColor=" "></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label1" runat="server">Firma Adı:</asp:Label> <asp:RequiredFieldValidator ID="rvf1" ErrorMessage="Firma Adı Giriniz." ControlToValidate="txtname" runat="server" >*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtname" />
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><asp:Label ID="Label2" runat="server">Firma Kodu:</asp:Label> <asp:RequiredFieldValidator ID="rvf2" ErrorMessage="Firma Kodu Giriniz." ControlToValidate="txtcode" runat="server" >*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtcode" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnAdd" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
						<asp:Button ID="btnCancel" runat="server" Text="İptal" CausesValidation="False" CssClass="btnDefault"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
