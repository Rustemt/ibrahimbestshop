<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditCurrency" CodeBehind="EditCurrency.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Döviz Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Döviz Ekle / Düzenle</div>
		</div>
		<div class="toggleContent">
			<div id="divAlert" runat="server" class="alert" visible="false"><asp:Label ID="lblMessage" runat="server"></asp:Label></div>
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CurrencyCode2")%> : <a href="http://en.wikipedia.org/wiki/ISO_4217" class="textRed" target="_blank">Kodlar için týklayýnýz</a> <asp:RequiredFieldValidator runat="server" ID="rq1" ControlToValidate="txtCurrencyCode">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtCurrencyCode" MaxLength="3"></asp:TextBox>
						<%--<asp:DropDownList runat="server" ID="ddlCurrency"></asp:DropDownList>--%>
						
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CurrencyName")%> : <asp:RequiredFieldValidator runat="server" ID="rq" ControlToValidate="txtParaBirimi" ErrorMessage="Para Birimi Adý Boþ Geçilemez">*</asp:RequiredFieldValidator></label>
						<asp:TextBox runat="server" ID="txtParaBirimi"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "LeftSymbol")%> :</label>
						<asp:TextBox runat="server" ID="txtSolSembol" MaxLength="10"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "RightSymbol")%> :</label>
						<asp:TextBox runat="server" ID="txtSagSembol" MaxLength="10"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Online Güncelle</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsOnline" runat="server" ToolTip="<%$ Resources:admin,RatesAutoBring %>" AutoPostBack="True"></asp:CheckBox> <asp:Label ID="lblKurLabel" runat="server"><%=GetGlobalResourceObject("admin", "CurrencyOnlineUpdate")%> :</asp:Label></label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "CurrencyRate")%> :</label>
						<ew:NumericBox ID="txtRate" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkStatus" runat="server"></asp:CheckBox> <asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "StatusActiveorPassive")%>:</asp:Label></label>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>