<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editproject.aspx.vb" Inherits="editproject" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Bölüm Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Proje No : <asp:RequiredFieldValidator ID="txtProjectNoRFV" runat="server" ControlToValidate="txtProjectNo" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProjectNo" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Proje Kodu : <asp:RequiredFieldValidator ID="txtProjectCodeRFV" runat="server" ControlToValidate="txtProjectCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProjectCode" runat="server" MaxLength="50"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Proje Adı : <asp:RequiredFieldValidator ID="txtProjectNameRFV" runat="server" ControlToValidate="txtProjectName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProjectName" runat="server" MaxLength="100"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Şirket : <asp:RequiredFieldValidator ID="txtProjectCompanyRFV" runat="server" ControlToValidate="txtProjectCompany" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProjectCompany" runat="server" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Yönetici : <asp:RequiredFieldValidator ID="txtProjectAdminRFV" runat="server" ControlToValidate="txtProjectAdmin" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProjectAdmin" runat="server" MaxLength="50"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Durum :</label>
					<asp:DropDownList ID="ddlProjectStatus" runat="server">
					<asp:ListItem Value="2">Aktif</asp:ListItem>
					<asp:ListItem Value="1">Pasif</asp:ListItem>
					<asp:ListItem Value="0">Belirsiz</asp:ListItem>
					</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Başlangıç Tarihi : <asp:CompareValidator ID="cv2" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtProjectStartDate">*</asp:CompareValidator></label>
					<asp:TextBox ID="txtProjectStartDate" runat="server" MaxLength="50"></asp:TextBox>
					<cc1:CalendarExtender ID="Calendarextender1" Format="dd.MM.yyyy" runat="server" TargetControlID="txtProjectStartDate" Animated="True"></cc1:CalendarExtender>
					</div>
					<div class="colTwo">
					<label>Bitiş Tarihi : <asp:CompareValidator ID="cv3" runat="server" ErrorMessage="*" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtProjectFinishDate">*</asp:CompareValidator></label>
					<asp:TextBox ID="txtProjectFinishDate" runat="server"></asp:TextBox>
					<cc1:CalendarExtender ID="txtDeliveryDate_CalendarExtender" Format="dd.MM.yyyy" runat="server" TargetControlID="txtProjectFinishDate" Animated="True"></cc1:CalendarExtender>
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
