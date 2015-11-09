<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editcoupon" CodeBehind="editcoupon.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Tekli Hediye Çeki</title>
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
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<table width="100%" cellpadding="0" cellspacing="0" border="0" runat="server" id="tblType">
				<tr>
				<td>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "GiftVoucherType")%> :</label>
						<asp:DropDownList ID="ddlCouponType" runat="server" AutoPostBack="True">
						<asp:ListItem Text="<%$ Resources:admin,BulkCouponCustomer %>" Value="1"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,BulkCouponCommon %>" Value="2"></asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
				</td>
				</tr>
				</table>
				<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblUsers">
				<tr> 
				<td>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "CustomerFilter")%> :</label>
						<asp:Label ID="lblUserFilter" CssClass="labelInput" runat="server"><%=GetGlobalResourceObject("admin", "CouponStatusActive")%></asp:Label>
						<a id="A1" class="btnDefault" runat="server" href="#" onclick="Customer()" ><i class="fa fa-pencil"></i><%=GetGlobalResourceObject("admin", "Edit")%></a>
						<input id="txtUserFilterDesc" type="hidden" size="2" name="Hidden1" runat="server" value=" Durumu=Aktif" />
						<input id="txtUserFilter" type="hidden" size="2" name="Hidden1" runat="server" value=" Users.IsActive=1" />
					</div>
				</div>
				</td>
				</tr>
				</table>
				<table runat="server" cellpadding="2" id="tblCouponCount">
				<tr>
				<td>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CouponQuantity")%> :</label>
						<ew:NumericBox ID="txtCouponCount" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">1</ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "UserGroups3")%> :</label>
						<asp:DropDownList ID="ddlRoles" runat="server" AutoPostBack="True"></asp:DropDownList>
					</div>
				</div>
				</td>
				</tr>
				</table>
				<table runat="server" id="tblEdit">
				<tr>
				<td>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CouponCode")%> :</label>
						<asp:Label ID="txtCouponCode" runat="server"></asp:Label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "UserGroups3")%> :</label>
						<asp:Label ID="txtGroupName" runat="server"></asp:Label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "UserName")%> :</label>
						<asp:Label ID="txtName" runat="server"></asp:Label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FullName")%> :</label>
						<asp:Label ID="txtFullname" runat="server"></asp:Label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
						<asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
						
					</div>
				</div>
                    <div class="row">
					<div class="colOne">
                        <asp:Button ID="btnSendmail" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,SendMail %>" ToolTip="<%$ Resources:admin,CouponMsg1 %>" />
					</div>
				</div>
				</td>
				</tr>
				</table>
				<table id="Table1" width="100%" cellpadding="0" cellspacing="0" border="0" runat="server">
				<tr>
				<td>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "GiftVoucherAmount")%> : <asp:Label runat="server" ID="lblDefaultCurrencyCode1"></asp:Label></label>
						<ew:NumericBox ID="txtDiscount" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CouponStatus")%></label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Text="<%$ Resources:admin,Active %>" Checked="True"></asp:CheckBox></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "StartDate")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Baþlangýç Tarihi belirtiniz." ControlToValidate="txtStartDate">*</asp:RequiredFieldValidator></label>
						<ew:CalendarPopup ID="txtStartDate" runat="server" Culture="Turkish (Turkey)" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="Ýptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Hour")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Baþlangýç Saatini belirtiniz." ControlToValidate="txtstarttime">*</asp:RequiredFieldValidator></label>
						<ew:MaskedTextBox ID="txtstarttime" runat="server" ErrorMessage="geçersiz giriþ" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ExpirationDate")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Baþlangýç Tarihi belirtiniz." ControlToValidate="txtEndDate">*</asp:RequiredFieldValidator></label>
						<ew:CalendarPopup ID="txtEndDate" runat="server" DisableTextBoxEntry="False" AllowArbitraryText="False" NullableLabelText="Tarih Giriniz" Nullable="True" MonthYearPopupCancelText="Ýptal" MonthYearPopupApplyText="Uygula" GoToTodayText="Bu gün:" ClearDateText="Sil"></ew:CalendarPopup>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Hour")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ErrorMessage="Bitiþ Saatini belirtiniz." ControlToValidate="txtendtime">*</asp:RequiredFieldValidator></label>
						<ew:MaskedTextBox ID="txtendtime" runat="server" ErrorMessage="geçersiz giriþ" Mask="99:99" Text="00:00"></ew:MaskedTextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MinimumAmountProduct")%> : <%=GetGlobalResourceObject("admin", "Count")%></label>
						<ew:NumericBox ID="txtMinQty" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MinimumItemAmount")%> : <asp:Label runat="server" ID="lblDefaultCurrencyCode2"></asp:Label></label>
						<ew:NumericBox ID="txtMinPrice" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">50</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo"></div>
					<div class="colTwo"></div>
				</div>
				</td>
				</tr>
				</table>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,CreateCoupon %>" />
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">

    function Customer() {
        var a = "<%= MID%>";
        popupWindow(700, 600, 50, '/admin/ecommerce/user/EditUserFilter.aspx?LabelId=lblUserFilter&TextBoxID=txtUserFilter&TextBoxID1=txtUserFilterDesc&IND=0&MID=' + a, 'popup');
    }
    
</script> 
 