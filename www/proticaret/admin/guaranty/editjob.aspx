<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editjob.aspx.vb" Inherits="editjob" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>İş Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">İş Ekle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label Text="" runat="server" ID="lbl" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>İş Grubu : <asp:RequiredFieldValidator ID="ddlJobGroupRFV" runat="server" ControlToValidate="ddlJobGroup" ErrorMessage="*" InitialValue="--Seçiniz--"></asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlJobGroup" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label>İş Kodu : <asp:RequiredFieldValidator ID="txtJobCodeRFV" runat="server" ControlToValidate="txtJobCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtJobCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>İş Adı : <asp:RequiredFieldValidator ID="txtJobNameRFV" runat="server" ControlToValidate="txtJobName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtJobName" runat="server" MaxLength="100"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>İş Açıklaması: <asp:RequiredFieldValidator ID="txtJobDescRFV" runat="server" ControlToValidate="txtJobDesc" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtJobDesc" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" ToolTip="Yeni proje ekler." OnClick="btnSave_Click" />
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