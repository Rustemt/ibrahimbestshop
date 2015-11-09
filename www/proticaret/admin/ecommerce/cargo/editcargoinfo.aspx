<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditCargoInfo" Codebehind="EditCargoInfo.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server"> 
<title>Kargo Tanýmlarý</title>    
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
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<table width="100%" cellpadding="0" cellspacing="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "LoadWeight")%> : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="<%$ Resources:admin,CargoMsg3 %>" ControlToValidate="txtKg" >*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtKg" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Charge")%> : <asp:Label runat="server" ID="lblDefaultCurrency"></asp:Label> <asp:RequiredFieldValidator ID="rq2" runat="server" ControlToValidate="txtPrice" ErrorMessage="<%$ Resources:admin,CargoMsg4 %>" >*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPrice" runat="server" TextAlign="Right" PositiveNumber="True" DecimalSign="," GroupingSeparator=" " ></ew:NumericBox>
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