<%@ Register TagPrefix="uc1" TagName="CUnitList" Src="CUnitList.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditUnits1" Codebehind="EditUnits.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Birim Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Birim Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<uc1:CUnitList ID="CUnitList1" runat="server"></uc1:CUnitList>
			<div class="buttonGroup">
			<asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Kapat" CssClass="btnDefault"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>