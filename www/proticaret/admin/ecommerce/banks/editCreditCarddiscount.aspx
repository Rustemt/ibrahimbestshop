<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editCreditCarddiscount" Codebehind="editCreditCarddiscount.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server"> 
<title>Tek Çekim İndirim Oranı</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Tek Çekim İndirimi</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" ></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            <div class="dataForm" runat="server">
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "BanksSinglePayment")%> : % <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NumericBox1" ErrorMessage="<%$ Resources:admin,BanksSinglePaymentMsg1 %>">*</asp:RequiredFieldValidator></label>
                        <ew:numericbox id="NumericBox1" runat="server" textalign="Right" positivenumber="True"  DecimalSign="," GroupingSeparator=" "></ew:numericbox>
                    </div>
                </div>
            </div>
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