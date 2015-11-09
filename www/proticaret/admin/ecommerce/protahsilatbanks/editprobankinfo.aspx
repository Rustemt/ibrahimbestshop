<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editprobankinfo.aspx.vb" Inherits=".editprobankinfo" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Taksit Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" CssClass="Admin_HataMesaji"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Taksit : <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ErrorMessage="Lütfen Taksit Giriniz." ControlToValidate="txtTaksit">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtTaksit" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
					</div>
					<div class="colTwo">
						<label>Görünen Taksit : <small>(Taksit yerine gösterilecek (Örnek 3+1))</small></label>
						<asp:TextBox ID="txtDesc" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Faiz Oranı (%) : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Lütfen Oran Giriniz.">*</asp:RequiredFieldValidator></label>
						<ew:NumericBox ID="txtPrice" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Taksit Faiz Oranı Hesaplama</label>
						<label class="labelInput">Bankanın size vermiş olduğu faiz oranını girdikten sonra hesapla düğmesine basınız. Sistem size yansıyacak faiz oranını hesaplayacaktır.</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Banka Faiz Oranı(%): </label>
						<ew:NumericBox ID="txtRate2" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right"></ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<asp:HyperLink ID="HyperLink1" runat="server" CssClass="btnDefault" NavigateUrl="javascript:Calc();"><i class="fa fa-calculator"></i> Hesapla</asp:HyperLink>
						<asp:Label ID="lblresult" runat="server"></asp:Label>
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