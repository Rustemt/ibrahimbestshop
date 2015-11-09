<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditAffiliatePayment" CodeBehind="EditAffiliatePayment.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Ödeme Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ödeme Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "SalesPartner")%> Id : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Satýþ Ortaðý Giriniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtId" runat="server"></asp:TextBox>						
                        <a href="javascript:void(0)" class="btnDefault"  onclick="popupWindow(900,700,50,'SelectAffiliateUser.aspx?TextBoxID=txtId&IND=0&MID=0','popup');"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "Select2")%></a>
					</div>
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "ReceipttoFile")%> :</label>
						<asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" NavigateUrl="#" onclick="BrowseServer('txtFileName');"><i class="fa fa-folder-open"></i> Galeri</asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "PaymentDate")%> :</label>
						<ew:CalendarPopup ID="txtDate" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaymentAmount")%> :</label>
						<ew:NumericBox ID="txtTutar" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "Description")%> :</label>
						<asp:TextBox ID="txtdetails" TextMode="MultiLine" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "CargoAutomaticSendMail")%> : <asp:CheckBox ID="chkSendMail" runat="server"></asp:CheckBox></label>
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