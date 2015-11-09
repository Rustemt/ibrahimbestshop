<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editresault.aspx.vb" Inherits="editresault" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Arıza Durumu Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Arıza Durumu Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server" ></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Arıza Kodu : <asp:RequiredFieldValidator ID="txtResaultCodeRFV" runat="server" ControlToValidate="txtResaultCode">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtResaultCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
					<label>Arıza Sonucu Adı :</label>
					<asp:TextBox ID="txtResault" runat="server" MaxLength="200" Height="100px" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
					<label>Açıklama :</label>
					<asp:TextBox ID="txtResaultDesc" runat="server" MaxLength="200" Height="100px" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
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
