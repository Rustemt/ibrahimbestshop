<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditBankInfo" CodeBehind="EditBankInfo.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Taksit Düzenle</title>
<script type="text/javascript">
	function Calc() {
		var rate = document.getElementById("txtRate2").value.replace(",", ".");
		var res = document.getElementById("lblresult");
		res.innerHTML = "Girmeniz Önerilen Oran : " + (((Number(rate) * Number(rate)) / 100) + Number(rate)).toString().replace(".", ",");
	}
</script>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" runat="server">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Taksit Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="col1-2">
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "Installment")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ErrorMessage="Lütfen Taksit Giriniz." ControlToValidate="txtTaksit">*</asp:RequiredFieldValidator></label>
								<ew:NumericBox ID="txtTaksit" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "VisibleInstallment")%> : <%=GetGlobalResourceObject("admin", "BankMsg4")%></label>
								<asp:TextBox ID="txtDesc" runat="server" MaxLength="100"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><%=GetGlobalResourceObject("admin", "InterestRate")%>(%) : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="<%$ Resources:admin,BanksSinglePaymentMsg1 %>">*</asp:RequiredFieldValidator></label>
								<ew:NumericBox ID="txtPrice" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colOne buttonGroup">
								<asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
								<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label runat="server"><%=GetGlobalResourceObject("admin", "BankMsg3")%></label>
								<p runat="server"> <%=GetGlobalResourceObject("admin", "BankMsg1")%> <%=GetGlobalResourceObject("admin", "BankMsg2")%></p>
								<label runat="server"> <%=GetGlobalResourceObject("admin", "BankInterestRate")%> (%):</label>
								<ew:NumericBox ID="txtRate2" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right"></ew:NumericBox>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<asp:HyperLink ID="HyperLink1" runat="server" CssClass="btnDefault" NavigateUrl="javascript:Calc();"><i class="fa fa-calculator"></i> <%=GetGlobalResourceObject("admin", "Calculate")%></asp:HyperLink>
								<p><asp:Label ID="lblresult" runat="server"></asp:Label></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>