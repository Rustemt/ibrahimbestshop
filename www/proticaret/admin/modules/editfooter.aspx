<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editfooter" Codebehind="editfooter.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Footer Düzenle</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Footer Düzenle</div>
		</div>
		<div class="toggleContent">
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label>Html :</label>
						<FCKeditorV2:FCKeditor ID="FCKeditor1" ToolbarSet="Default" runat="server" BasePath="/fckeditor/" Height="350px"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Bu kýsýmdaki içerik otomatik olarak önbelleðe alýnmaktadýr... Burada yaptýðýnýz deðiþiklikler 15 dakika sonra aktif hale gelecektir.</label>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:LinkButton ID="updateButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>