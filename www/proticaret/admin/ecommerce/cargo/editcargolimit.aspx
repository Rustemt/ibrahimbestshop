<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditCargoLimit"    Codebehind="EditCargoLimit.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server"> 
<title>Ücretsiz Kargo Limiti</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ücretsiz Kargo Limiti</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
				<tr>
					<td>
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label><%=GetGlobalResourceObject("admin", "FreeShippingLimit")%> : <asp:Label runat="server" ID="lblDefaultCurrency"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKargoLimit" ErrorMessage="Limit Girmelisiniz.">*</asp:RequiredFieldValidator></label>
								<ew:NumericBox ID="txtKargoLimit" runat="server" TextAlign="Right" PositiveNumber="True"  DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
							</div>
						</div>
						<div class="row" style="display:none;">
							<div class="colTwo">
								<label>Desi Limiti:</label>
								<ew:numericbox id="txtDesi" visible="false" runat="server" DecimalSign="," GroupingSeparator=" " positivenumber="True"  textalign="Right">1000</ew:numericbox>
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