<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page ValidateRequest="false" Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditAnnouncements" Codebehind="editannouncements.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Duyuru Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Duyuru Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Baþlýk : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Lütfen Baþlýk Giriniz." ForeColor="">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtTitle" runat="server" MaxLength="150"></asp:TextBox>
					</div>
					<div class="colTwo colBtn">
						<label>Resim Url :</label>
						<asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
						<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" NavigateUrl="javascript:BrowseServer('txtImage');" Text="Galeri"></asp:HyperLink>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açýklama :</label>
						<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label>Geçerlilik Tarihi : <asp:CompareValidator ID="VerifyExpireDate" runat="server" Display="Static" ErrorMessage="Geçerli bir tarih girmelisiniz." ControlToValidate="Tarih1" Operator="DataTypeCheck" Type="Date" ForeColor="">*</asp:CompareValidator> <asp:RequiredFieldValidator ID="RequiredExpireDate" runat="server" Display="Static" ErrorMessage="Geçerli bir tarih girmelisiniz." ControlToValidate="Tarih1" ForeColor="">*</asp:RequiredFieldValidator></label>
						<ew:CalendarPopup ID="Tarih1" runat="server" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" CalendarLocation="Bottom"></ew:CalendarPopup>
					</div>
				</div>
				<div class="row">
					<div class="colOne">Not: Bu tarihten sonra otomatik  olarak  veritabanýndan  silinecektir</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:LinkButton ID="updateButton" runat="server" BorderStyle="none" CssClass="btnDefault"><i class="fa fa-plus"></i> Kaydet</asp:LinkButton>
						<asp:LinkButton ID="deleteButton" CausesValidation="False" runat="server" CssClass="btnDefault"><i class="fa fa-trash"></i> Sil</asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>