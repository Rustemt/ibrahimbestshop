<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="oksid.aspx.vb" Inherits="ASPNetPortal.oksid" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Oksid Kullanıcı Tanımları</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Oksid Kullanıcı Tanımları</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblMsg" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Oksid :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" /> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label>Oksid Kullanıcı Adı :</label>
						<asp:TextBox ID="txtOksidUserName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Oksid Kullanıcı Şifresi :</label>
						<asp:TextBox ID="txtOksidPassword" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>3D Ödeme :</label>
						<label class="labelInput"><asp:CheckBox ID="chk3DIsActive" runat="server" Enabled="false" /> Aktif/Pasif</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Oksid Güncel Kart Listesi</label>
						<asp:HyperLink ID="lnkOksidCards" runat="server" CssClass="btnDefault" Text="Güncel Liste"></asp:HyperLink>
					</div>
				</div>
			</div>
			
			<div class="buttonGroup">
				<asp:LinkButton ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:LinkButton>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>