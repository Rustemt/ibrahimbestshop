<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddFoodPlace.aspx.vb" Inherits="ASPNetPortal.AddFoodPlace" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Minimum Paket Tutarı</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Sipariş Yeri Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" Visible="true"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lblName" runat="server"><%=GetGlobalResourceObject("admin", "ShippingPlace")%></asp:Label> <asp:RequiredFieldValidator runat="server" ID="rvf1" ControlToValidate="txtPlace" ErrorMessage="<%$ Resources:admin,ShippingPlaceMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtPlace" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="lblPrice" runat="server"><%=GetGlobalResourceObject("admin", "MinimumDeliveryAmount")%></asp:Label> <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtPrice" ErrorMessage="Fiyat Giriniz..">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtPrice" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" />
			</div>
		</div>
	</div>
</div>
<asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtPrice" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
</form>
</body>
</html>