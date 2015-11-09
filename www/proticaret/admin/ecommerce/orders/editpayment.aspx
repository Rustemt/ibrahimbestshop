<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditPayment" Codebehind="EditPayment.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Ödeme Detay</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" runat="server">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ödeme Detay</div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaymentDate")%>:</label>
						<label class="labelInput"><asp:Label ID="PaymentDate" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaymentNumber")%> :</label>
						<label class="labelInput"><asp:Label ID="PaymentId" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "UserName")%> :</label>
						<label class="labelInput"><asp:HyperLink ID="FullName" runat="server"></asp:HyperLink></label>
                        <asp:HyperLink ID="lnkUserOrders" runat="server" CssClass="btnDefault">[lnkUserOrders]</asp:HyperLink>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaymentMethod")%> :</label>
						<label class="labelInput"><asp:Label ID="PaymentType" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "BankName")%> :</label>
						<label class="labelInput"><asp:Label ID="BankName" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "BankPaymentMethod")%> :</label>
						<label class="labelInput"><asp:Label ID="BankPayType" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Installment")%> :</label>
						<label class="labelInput"><asp:Label ID="Taksit" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TotalAmount")%> :</label>
						<label class="labelInput"><asp:Label ID="ToplamTutar" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TotalExpense")%> :</label>
						<label class="labelInput"><asp:Label ID="ToplamGider" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TotalAmountPaid")%> :</label>
						<label class="labelInput"><asp:Label ID="BankaToplamTutar" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><b><%=GetGlobalResourceObject("admin", "PaymentNotes")%> :</b></label>
                        <hr />
						<asp:Label ID="Note" runat="server"></asp:Label>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>