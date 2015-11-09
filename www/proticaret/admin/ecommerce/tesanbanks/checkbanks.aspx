<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="checkbanks.aspx.vb" Inherits=".checkbanks1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
<title>Bankaları Kontrol Et</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Bankaları Kontrol Et</div>
		</div>
		<div class="toggleContent">
			<div class="alert alert-info" id="alert" runat="server" visible="false"><asp:Label ID="lblError" runat="server"></asp:Label></div>
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label>Bankaları Kontrol Et</label>
						<asp:Button ID="btnCheckBanks" runat="server" Text="Kontrol Et" CssClass="btnDefault"></asp:Button>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<asp:Label ID="lblNewBank" runat="server"></asp:Label>
						<asp:Label ID="lblUpdateBank" runat="server"></asp:Label>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>