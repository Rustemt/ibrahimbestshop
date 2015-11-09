<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditCargo" CodeBehind="EditCargo.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Kargo Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Kargo Tanýmlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
				<tr>
				<td>
				<div class="dataForm">
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "CargoName")%> : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtKargo" ErrorMessage="<%$ Resources:admin,CargoMsg1 %>">*</asp:RequiredFieldValidator></label>
							<asp:TextBox ID="txtKargo" runat="server"></asp:TextBox> 
							
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "CargoMail")%> :</label>
							<asp:TextBox ID="txtCargoMail" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "CargoShowOrder")%> : <asp:RequiredFieldValidator ID="rq3" runat="server" ErrorMessage="<%$ Resources:admin,CargoMsg2 %>" ControlToValidate="txtGosterim">*</asp:RequiredFieldValidator></label>
							<ew:NumericBox ID="txtGosterim" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" MaxLength="2">1</ew:NumericBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "CashOnDeliveryPayment")%> : <asp:Label runat="server" ID="lblDefaultCurrency"></asp:Label></label>
							<ew:NumericBox ID="txtTesFiyat" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
                            <asp:RequiredFieldValidator ErrorMessage="Eklenecek Ücreti Giriniz" ControlToValidate="txtTesFiyat" runat="server" >*</asp:RequiredFieldValidator>
						</div>
					</div>
					<div class="row">
						<div class="colOne">
							<div class="checkList">
								<ul>
									<li><label><asp:CheckBox ID="chkIsActive" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "Active")%> :</label></li>
									<li><label><asp:CheckBox ID="chkIsOnline" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "CargoAutomaticSendMail")%> :</label></li>
									<li><label><asp:CheckBox ID="chkShowDetails" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "ProductDetailsShow")%> :</label></li>
									<li><label><asp:CheckBox ID="chkCashOnDelivery" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "CashOnDeliveryActive")%> :</label></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				</td>
				</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>