<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editstatus.aspx.vb" Inherits="editstatus2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis Durum Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:Label ID="lblTitle" runat="server"></asp:Label></div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Durum Kodu : <asp:RequiredFieldValidator ID="txtStatusCodeRFV" runat="server" ControlToValidate="txtStatusCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtStatusCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Durum Adı : <asp:RequiredFieldValidator ID="txtServiceStatusNameRFV" runat="server" ControlToValidate="txtServiceStatusName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtServiceStatusName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
					<label>Açıklama :</label>
					<asp:TextBox ID="txtDesc" runat="server" MaxLength="200"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
					<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" ToolTip="Siteyi Entegreli siteler listesine ekler." OnClick="btnSave_Click" />
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