<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editpaspartu" CodeBehind="editpaspartu.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Çerçeve Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Paspartu Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaspartuName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode" ErrorMessage="<%$ Resources:admin,PaspartuMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PaspartuColorCode")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtColor" ErrorMessage="<%$ Resources:admin,PaspartuMsg2 %>">*</asp:RequiredFieldValidator></label>
						<%--<asp:TextBox ID="txtColor" runat="server"></asp:TextBox>--%>
						<input class="color" value="66ff00" id="txtColor" runat="server" >
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True" /> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
						<ew:NumericBox ID="txtShowOrder" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" MaxLength="2">1</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FramePricecm")%> : TL</label>
						<ew:NumericBox ID="txtFiyat" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
					<div class="colTwo">
						<%-- 
						<label>Geniþlik (cm) :
						<ew:NumericBox ID="txtWidth" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
						--%>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
    <script type="text/javascript">
        function updateInfo(color) {
            document.getElementById('info-r').value = color.rgb[0];
            document.getElementById('info-g').value = color.rgb[1];
            document.getElementById('info-b').value = color.rgb[2];
        }
</script>
<script src="/admin/assets/js/color/jscolor.js" type="text/javascript"></script>
</body>
</html>