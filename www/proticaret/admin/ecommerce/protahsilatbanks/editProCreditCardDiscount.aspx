﻿<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editProCreditCardDiscount.aspx.vb" Inherits="ASPNetPortal.editProCreditCardDiscount" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server"> 
<title>Tek Çekim İndirim Oranı</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Tek Çekim İndirim Oranı</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Tek Çekim İndirimi: % <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumericBox1" ErrorMessage="Oran Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:numericbox id="NumericBox1" runat="server" textalign="Right" positivenumber="True"  DecimalSign="," GroupingSeparator=" "></ew:numericbox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" Text="İptal" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>

</form>
</body>
</html>
