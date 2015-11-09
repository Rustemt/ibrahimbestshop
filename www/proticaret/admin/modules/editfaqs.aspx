<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editfaqs.aspx.vb" Inherits=".editfaqs" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Soru Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Soru Düzenle</div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Baþlýk :</label>
						<asp:TextBox ID="txtTitle" runat="server" MaxLength="250"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Yazar :</label>
						<asp:TextBox ID="txtAuthor" runat="server" MaxLength="250"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label>Tarih :</label>
						<ew:CalendarPopup ID="Tarih1" runat="server" CalendarLocation="Bottom" ClearDateText="Sil" GoToTodayText="Bu Gün:" Nullable="True" ShowGoToToday="True"> </ew:CalendarPopup>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Soru :</label>
						<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" BasePath="/FCKeditor/" Height="400px"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Cevap :</label>
						<FCKeditorV2:FCKeditor ID="Fckeditor2" runat="server" BasePath="/FCKeditor/" Height="400px"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:LinkButton ID="updateButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
						<asp:LinkButton ID="deleteButton" runat="server" CausesValidation="False" CssClass="btnDefault"><i class="fa fa-trash"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>