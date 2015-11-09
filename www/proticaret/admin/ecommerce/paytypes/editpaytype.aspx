<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditPayType" Codebehind="EditPayType.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Ödeme Tipi Tanýmlarý</title> 
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ödeme Tipi Tanýmlarý</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellpadding="0" cellspacing="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "PayTypeName")%> : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtPaytype" ErrorMessage="Ödeme Tipi Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtPaytype" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsDefault" runat="server" Checked="True"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "Active")%></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "DiscountAndAdditional")%> :</label>
						<asp:DropDownList ID="ddlInd" runat="server" CssClass="Admin_Normal_ComboBox">
						<asp:ListItem Text="<%$ Resources:admin,Discount %>" Value="+"></asp:ListItem>
						<asp:ListItem Text="<%$ Resources:admin,Additional %>" Value="-"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TaxRate")%> % : </label>
						<ew:numericbox id="txtRate" runat="server" DecimalSign="," GroupingSeparator=" " textalign="Right">0</ew:numericbox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "Explanation")%> :</label>
						<fckeditorv2:fckeditor id="txtDetail" runat="server" height="300px" basepath="/FCKeditor/" toolbarset="Basic"></fckeditorv2:fckeditor>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" CausesValidation="False" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>