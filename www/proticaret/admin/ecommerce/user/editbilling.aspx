<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditBilling" CodeBehind="EditBilling.aspx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "BillingAddress")%></title>
</head>
<body>
<form id="Form1" runat="server">
<cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlBillCountry" Category="CountryId" PromptText="<%$ Resources:admin,BillingMsg8 %>" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
<cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlBillCity" ParentControlID="ddlBillCountry" Category="CityId" PromptText="<%$ Resources:admin,BillingMsg9 %>" ServicePath="/services/city.asmx" ServiceMethod="GetCity" />
<cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlBillDistrict" ParentControlID="ddlBillCity" Category="DistrictId" PromptValue="0" PromptText="<%$ Resources:admin,BillingMsg10 %>" ServicePath="/services/city.asmx" ServiceMethod="GetDistict" />
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "BillingAddress")%></div>
		</div>
		<div class="toggleContent">
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" HeaderText="<%$ Resources:admin,ShippingMsg10 %>" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr>
			<td runat="server">
			<div class="alert alert-info">* <%=GetGlobalResourceObject("admin", "ShippingMsg1")%></div>
			<div class="alert alert-info"><%=GetGlobalResourceObject("admin", "BillingMsg1")%></div>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> :</label>
						<asp:DropDownList ID="ddlBilling" runat="server" AutoPostBack="True"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="<%$ Resources:admin,ShippingMsg4 %>" ControlToValidate="CompanyName">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="CompanyName" runat="server" ToolTip="<%$ Resources:admin,ShippingMsg3 %>" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "BillingMsg2")%>:</label>
						<asp:TextBox ID="txtMail" runat="server" ToolTip="<%$ Resources:admin,BillingMsg3 %>" MaxLength="100"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "TaxAdministration")%> :</label>
						<asp:TextBox ID="taxOffice" runat="server" ToolTip="<%$ Resources:admin,BillingMsg4 %>" MaxLength="100"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "BillingMsg5")%> :</label>
						<asp:TextBox ID="taxNo" runat="server" ToolTip="<%$ Resources:admin,BillingMsg6 %>" MaxLength="11"></asp:TextBox>
	                    <cc3:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="taxNo" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
					</div>
					<div class="colTwo">
						<label> <%=GetGlobalResourceObject("admin", "Phone")%> :</label>
						<ew:MaskedTextBox ID="txtBillPhoneNo" runat="server" ErrorMessage="<%$ Resources:admin,InvalidInput %>" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
	                    <cc3:FilteredTextBoxExtender runat="server" ID="FilteredTextBoxExtender1" TargetControlID="txtBillPhoneNo" FilterType="Custom" ValidChars="1234567890"></cc3:FilteredTextBoxExtender>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MobilePhoneNumber")%> :</label>
						<ew:MaskedTextBox ID="txtBillGSMno" runat="server" ErrorMessage="<%$ Resources:admin,InvalidInput %>" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Country")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlBillCountry" ErrorMessage="<%$ Resources:admin,ShippingMsg6 %>" InitialValue="">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlBillCountry" CssClass="select" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "City")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlBillCity" ErrorMessage="<%$ Resources:admin,ShippingMsg7 %>" InitialValue="">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList ID="ddlBillCity" runat="server"></asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "District")%> :</label>
						<asp:DropDownList ID="ddlBillDistrict" CssClass="select" runat="server"></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "DefaultUse")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkBillDefault" runat="server"></asp:CheckBox> <%=GetGlobalResourceObject("admin", "StatusActiveOrPassive")%></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label><%=GetGlobalResourceObject("admin", "BillingAddress2")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="<%$ Resources:admin,BillingMsg7 %>" ControlToValidate="txtBillAddress">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtBillAddress" runat="server" ToolTip="<%$ Resources:admin,BillingMsg7 %>" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
					</div>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:LinkButton ID="btnPay" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:LinkButton>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>