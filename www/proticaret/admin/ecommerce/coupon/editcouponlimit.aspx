<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editcouponlimit" CodeBehind="editcouponlimit.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Yeni Üyelere Hediye Çeki </title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Hediye Çeki Tanýmlarý</div>
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
						<label><%=GetGlobalResourceObject("admin", "NewUserCouponLimit")%> : <asp:Label runat="server" ID="lblDefaultCurrencyCode1"></asp:Label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumericBox1" ErrorMessage="<%$ Resources:admin,NewUserCouponMsg2 %>">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="NumericBox1" runat="server" TextAlign="Right" PositiveNumber="True" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "GiftVoucherLimit")%> : <asp:Label runat="server" ID="lblDefaultCurrencyCode2"></asp:Label> <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ControlToValidate="NumericBox2" ErrorMessage="<%$ Resources:admin,NewUserCouponMsg1 %>">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="NumericBox2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "StartDate")%> :</label>
						<ew:CalendarPopup ID="txtStartDate" Text=">" runat="server" AllowArbitraryText="False" ClearDateText="Sil" Culture="Turkish (Turkey)" DisableTextBoxEntry="False" GoToTodayText="Bu gün:" MonthYearPopupApplyText="Uygula" MonthYearPopupCancelText="Ýptal" Nullable="True" NullableLabelText="Tarih Giriniz"></ew:CalendarPopup>
					</div>
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ExpirationDate")%> :</label>
						<ew:CalendarPopup ID="txtEndDate" Text="<" runat="server" PopupLocation="Bottom" AllowArbitraryText="False" ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu gün:" MonthYearPopupApplyText="Uygula" MonthYearPopupCancelText="Ýptal" Nullable="True" NullableLabelText="Tarih Giriniz"></ew:CalendarPopup>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>&nbsp;</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" AutoPostBack="True" /> <%=GetGlobalResourceObject("admin", "Active")%> :</label>
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