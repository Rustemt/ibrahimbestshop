<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editCity.aspx.vb" Inherits="ASPNetPortal.editCity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Şehir Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Şehir Düzenle</div>
		</div>
		<div class="toggleContent">
			<table cellpadding="0" cellspacing="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Country")%> :</label>
						<asp:DropDownList runat="server" ID="ddlCountry"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CityName")%> : <asp:RequiredFieldValidator runat="server" ID="rq" ControlToValidate="txtCityName" ErrorMessage="<%$ Resources:admin,CityAddMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtCityName"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:CheckBox runat="server" ID="chkStatus" Checked="true" /> <%=GetGlobalResourceObject("admin", "StatusActiveorPassive")%></label>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>&nbsp;
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>