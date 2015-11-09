<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditShipping"  Codebehind="EditShipping.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "ShippingAddress")%></title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "ShippingAddress")%></div>
		</div>
		<div class="toggleContent">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
			<td runat="server">
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" HeaderText="<%$ Resources:admin,ShippingMsg10 %>" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="alert alert-info">* <%=GetGlobalResourceObject("admin", "ShippingMsg1")%></div>
			<div class="alert alert-info"><%=GetGlobalResourceObject("admin", "ShippingMsg2")%></div>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> :</label>
						<asp:DropDownList ID="ddlShipping" runat="server"  AutoPostBack="True"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server"   ControlToValidate="txtRecipientName" ErrorMessage="<%$ Resources:admin,ShippingMsg4 %>">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtRecipientName" runat="server"  MaxLength="100" ToolTip="<%$ Resources:admin,ShippingMsg3 %>" ></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Phone")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   ControlToValidate="txtPhoneNo" ErrorMessage="<%$ Resources:admin,ShippingMsg5 %>">*</asp:RequiredFieldValidator></label>
						<ew:MaskedTextBox id="txtPhoneNo" runat="server"  errormessage="<%$ Resources:admin,InvalidInput %>" mask="9999999999999" errortext="*" maxlength="14"></ew:MaskedTextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MobilePhoneNumber")%> :</label>
						<ew:MaskedTextBox id="txtGSMNo" runat="server"  errormessage="<%$ Resources:admin,InvalidInput %>" mask="9999999999999" errortext="*" maxlength="14"></ew:MaskedTextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Country")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator221" runat="server" ControlToValidate="ddlShipCountry" ErrorMessage="<%$ Resources:admin,ShippingMsg6 %>" InitialValue="">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlShipCountry" CssClass="select" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "City")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"  ErrorMessage="<%$ Resources:admin,ShippingMsg7 %>" ControlToValidate="ddlShipCity"  InitialValue="">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlShipCity" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "District")%> :</label>
						<asp:DropDownList ID="ddlShipDistrict" CssClass="select" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "DefaultUse")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkShipDefault" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "StatusYesOrNo")%></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "DeliveryAddress")%> : <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server"   ControlToValidate="txtShipAddress" ErrorMessage="Lütfen teslim teslim  adresini giriniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtShipAddress" runat="server"  MaxLength="150" ToolTip="<%$ Resources:admin,ShippingMsg8 %>"  TextMode="MultiLine"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Directions")%> :</label>
						<asp:TextBox ID="txtShipDescription" runat="server"  MaxLength="150" ToolTip="<%$ Resources:admin,ShippingMsg8 %>"  TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:LinkButton ID="btnPay" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:LinkButton>
			</div>
			</td>
			</tr>
			</table>
		</div>
	</div>
</div>
<cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlShipCountry" Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
<cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlShipCity" ParentControlID="ddlShipCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCity" />
<cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlShipDistrict" ParentControlID="ddlShipCity" Category="DistrictId"  PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetDistict" />
</form>
</body>
</html>