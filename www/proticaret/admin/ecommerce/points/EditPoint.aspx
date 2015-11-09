<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditPoint" Codebehind="EditPoint.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Puan Detayý</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Puan Detayý</div>
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
						<label><%=GetGlobalResourceObject("admin", "TotalScore")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPointsValue" ErrorMessage="<%$ Resources:admin,NewUserCouponMsg2 %>">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPointsValue" runat="server" TextAlign="Right" PositiveNumber="True" DecimalSign="," GroupingSeparator=" " DecimalPlaces="2"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "IsUsed")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsUsed" runat="server" /> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<%=GetGlobalResourceObject("admin", "Active")%> :
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
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