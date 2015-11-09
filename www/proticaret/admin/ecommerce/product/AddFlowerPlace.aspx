<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddFlowerPlace.aspx.vb" Inherits="ASPNetPortal.AddFlowerPlace" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Gönderilecek Yer</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Gönderim Yeri Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" Visible="true"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lblName" runat="server"><%=GetGlobalResourceObject("admin", "ShippingPlace")%> : <asp:RequiredFieldValidator runat="server" ID="rvf1" ControlToValidate="txtPlace" ErrorMessage="<%$ Resources:admin,ShippingPlaceMsg1 %>">*</asp:RequiredFieldValidator></asp:Label></label>
						<asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"/>
				<asp:Button  ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"/>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>