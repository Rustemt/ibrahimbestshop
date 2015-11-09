<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adduser.aspx.vb" Inherits=".adduser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Kullanıcı Ekle</div>
		</div>
		<div class="toggleContent">
			 
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Kullanıcı Adı :</label>
						<asp:TextBox ID="txtUserName" runat="server" MaxLength="100"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Şifre :</label>
						<asp:TextBox ID="txtPassword" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID ="chkIsActive" runat="server" TextAlign="Left"/> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<asp:Button ID="btnSaveUser" runat="server" Text="Kaydet" CssClass="btnDefault"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>