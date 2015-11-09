<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.billing" CodeBehind="billing.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>

<div id="billings" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlBillCountry"
            Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
        <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlBillCity"
            ParentControlID="ddlBillCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetCity" />
        <cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlBillDistrict"
            ParentControlID="ddlBillCity" Category="DistrictId" PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetDistict" />
        <div>
        	<div id="info" runat="server" class="information title2"><%=GetGlobalResourceObject("lang", "BillingMsg4")%></div>
            <label class="title2"><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
            <label><asp:Label ID="lblBillingName" runat="server"><%=GetGlobalResourceObject("lang", "BillingName")%></asp:Label></label>
            <asp:DropDownList ID="ddlBilling" runat="server" AutoPostBack="True"></asp:DropDownList>
            <label class="title4"><%=GetGlobalResourceObject("lang", "BillingMsg1")%></label>
        	<div class="moduleContentCol2">
            	<label>* <%=GetGlobalResourceObject("lang", "BillingName")%></label>
                <asp:TextBox ID="CompanyName" runat="server" MaxLength="100"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CompanyName" ErrorMessage="<%$ Resources:lang, BillingMsg2%>">*</asp:RequiredFieldValidator>
                <label><%=GetGlobalResourceObject("lang", "RegisterCompanyTaxOffice")%></label>
            	<asp:TextBox ID="taxOffice" runat="server" MaxLength="100"></asp:TextBox>
                <label><%=GetGlobalResourceObject("lang", "Country")%></label>
                <asp:DropDownList ID="ddlBillCountry" CssClass="select" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlBillCountry" ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                <label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyCity")%></label>
            	<asp:DropDownList ID="ddlBillCity" runat="server"></asp:DropDownList>
            	<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlBillCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</asp:RequiredFieldValidator>
                <label>* <%=GetGlobalResourceObject("lang", "District")%></label>
                <asp:DropDownList ID="ddlBillDistrict" CssClass="select" runat="server">
                </asp:DropDownList>
                <label><%=GetGlobalResourceObject("lang", "SetDefault")%><asp:CheckBox ID="chkBillDefault" runat="server"></asp:CheckBox></label>
            	<asp:LinkButton ID="btnSave" runat="server" CssClass="button" Text="<%$ Resources:lang, Save%>"></asp:LinkButton>
            	<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            </div>
            <div class="moduleContentCol2">
            	<label><%=GetGlobalResourceObject("lang", "Mail")%></label>
            	<asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
                <label>*<%=GetGlobalResourceObject("lang", "SocialSecurityNumberTax")%></label>
                <asp:TextBox ID="taxNo" runat="server" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ControlToValidate="taxNo" ErrorMessage="<%$ Resources:lang, BillingMsg3%>">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator CssClass="textRed" ID="rgr1" ErrorMessage="T.C. Kimlik No/Vergi No Sadece Rakam Ýçerebilir" ValidationExpression="^\d+$" ControlToValidate="taxNo" runat="server" />
                <label>* <%=GetGlobalResourceObject("lang", "Phone")%></label>
            	<ew:MaskedTextBox ID="txtBillPhoneNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
           		<asp:RequiredFieldValidator ID="RequiredFieldValidator1x" runat="server" ControlToValidate="txtBillPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</asp:RequiredFieldValidator>
                <label><%=GetGlobalResourceObject("lang", "PhoneGsm")%></label>
            	<ew:MaskedTextBox ID="txtBillGSMno" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                <label>* <%=GetGlobalResourceObject("lang", "BillingAddres")%></label>
            	<asp:TextBox ID="txtBillAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
            	<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBillAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
</div>
