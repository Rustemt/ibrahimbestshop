<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditPointsLimit" Codebehind="EditPointsLimit.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Hediye Puanlarý</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Hediye Puanlarý</div>
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
						<label><%=GetGlobalResourceObject("admin", "ProductsBeGivenToThePointsMultiplier")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPointsValue" ErrorMessage="Tutar Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPointsValue" runat="server" TextAlign="Right" PositiveNumber="True" DecimalSign="," GroupingSeparator=" " DecimalPlaces="2"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PointsWillBeGivenToThoseWhoComment")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ControlToValidate="txtReviewValue" ErrorMessage="Yorum Puaný Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtReviewValue" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PointsWillBeGivenToThoseWhoRecommend")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdviceValue" ErrorMessage="Tavsiye Puaný Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtAdviceValue" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "RateLimitToCreateGiftVoucher")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPointLimit" ErrorMessage="Puaný Limiti Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPointLimit" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right" DecimalPlaces="2"></ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "GiftVoucherPointsMultiplier")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMoneyValue" ErrorMessage="Hediye Çeki Puan Çarpaný Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtMoneyValue" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right" DecimalPlaces="4"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> <%=GetGlobalResourceObject("admin", "Active")%></label>
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