<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editfault.aspx.vb" Inherits="editfault" %>
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
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>İş Türü : <asp:RequiredFieldValidator ID="txtFaultJobTypeRFV" runat="server" ControlToValidate="txtFaultJobType">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtFaultJobType" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Arıza Kodu : <asp:RequiredFieldValidator ID="txtFaultCodeRFV" runat="server" ControlToValidate="txtFaultCode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtFaultCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Arıza Adı : <asp:RequiredFieldValidator ID="txtFaultNameRFV" runat="server" ControlToValidate="txtFaultName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtFaultName" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama :</label>
						<asp:TextBox ID="txtFaultDesc" runat="server" MaxLength="400" Height="100px" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açıklama :</label>
						<asp:TextBox ID="txtFaultAnswer" runat="server" MaxLength="400" Height="100px" TextMode="MultiLine"></asp:TextBox>
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
