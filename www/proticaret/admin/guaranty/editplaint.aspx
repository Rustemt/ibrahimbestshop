<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editplaint.aspx.vb" Inherits="editplaint" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Müşteri Şikayet Tanımı Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Müşteri Şikayet Tanımı Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Şikayet Kodu : <asp:RequiredFieldValidator ID="txtPlaintCodeRFV" runat="server" ControlToValidate="txtPlaintCode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtPlaintCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Şikayet Adı : <asp:RequiredFieldValidator ID="txtPlaintRFV" runat="server" ControlToValidate="txtPlaint">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtPlaint" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama :</label>
						<asp:TextBox ID="txtPlaintDesc" runat="server" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
						<asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>