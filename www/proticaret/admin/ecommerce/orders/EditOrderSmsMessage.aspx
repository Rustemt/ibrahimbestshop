<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditOrderSmsMessage" Codebehind="EditOrderSmsMessage.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Sms Gönder</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Sipariþ Durumunu Sms ile Bildir</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<table width="100%" cellspacing="0" cellpadding="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "OrderId")%> :</label>
						<label class="labelInput"><asp:Label ID="lblOrderId" runat="server" ></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "OrderDate")%> :</label>
						<label class="labelInput"><asp:Label ID="lblOrderDate" runat="server" ></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "OrderStatus")%> :</label>
						<label class="labelInput"><asp:Label ID="lblOrderStatus" runat="server" ></asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FullName")%> :</label>
						<label class="labelInput"><asp:Label ID="lblFullName" runat="server" ></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Phone")%> :</label>
						<label class="labelInput"><asp:DropDownList ID="ddlSMS" runat="server"></asp:DropDownList></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MessageSent")%> :</label>
						<label class="labelInput"><asp:TextBox ID="txtsms" runat="server" MaxLength="50"></asp:TextBox></label>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Send %>" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>