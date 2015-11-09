<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.shipping" CodeBehind="shipping.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>

<div id="shipping" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlShipCountry"
            Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
        <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlShipCity"
            ParentControlID="ddlShipCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetCity" />
        <cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlShipDistrict"
            ParentControlID="ddlShipCity" Category="DistrictId" PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx"
            ServiceMethod="GetDistict" />
        <div>
            <div id="info" runat="server" class="information title2"><%=GetGlobalResourceObject("lang", "ShippingMsg4")%></div>
            <label class="title2"><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
            <label><asp:Label ID="lblShiping" runat="server"><%=GetGlobalResourceObject("lang", "BillingName")%></asp:Label></label>
            <label><asp:DropDownList ID="ddlShipping" runat="server" AutoPostBack="True"></asp:DropDownList></label>
            <label class="title4"><%=GetGlobalResourceObject("lang", "ShippingMsg1")%></label>
            
            <div class="moduleContentCol2 clearFix">
            	<label>* <%=GetGlobalResourceObject("lang", "ShippingName")%></label>
                <label>
                    <asp:TextBox ID="txtRecipientName" runat="server" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" ControlToValidate="txtRecipientName" ErrorMessage="<%$ Resources:lang, ShippingMsg2%>">*</asp:RequiredFieldValidator>
                </label>
                <label>* <%=GetGlobalResourceObject("lang", "PhoneGsm")%></label>
                <label>
                    <ew:MaskedTextBox ID="txtGSMNo" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg15%>" ErrorText="*" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" runat="server" ControlToValidate="txtGSMNo" ErrorMessage="<%$ Resources:lang, RegisterMsg15%>">*</asp:RequiredFieldValidator>
                </label>
               
                <label>* <%=GetGlobalResourceObject("lang", "ShippingAddres")%></label>
                <label>
                    <asp:TextBox ID="txtShipAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server" ControlToValidate="txtShipAddress" ErrorMessage="<%$ Resources:lang, ShippingMsg3%>">*</asp:RequiredFieldValidator>
                </label>
                <label><%=GetGlobalResourceObject("lang", "ShippingAddresDesc")%></label>
                <label><asp:TextBox ID="txtShipDescription" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox></label>
                <label><asp:LinkButton ID="btnSave" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "Save")%></asp:LinkButton></label>
            	<label><asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="280px" Height="58px" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary></label>
            </div>
            <div class="moduleContentCol2 clearFix">
            	<label>* <%=GetGlobalResourceObject("lang", "Phone")%></label>
                <label>
                    <ew:MaskedTextBox ID="txtPhoneNo" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>" ErrorText="*" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                    <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</asp:RequiredFieldValidator>
                </label>
                <label>* <%=GetGlobalResourceObject("lang", "Country")%></label>
                <label>
                    <asp:DropDownList ID="ddlShipCountry" CssClass="select" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlShipCountry"
                        ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                </label>
                <label>* <%=GetGlobalResourceObject("lang", "City")%></label>
                <label>
                    <asp:DropDownList ID="ddlShipCity" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlShipCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</asp:RequiredFieldValidator>
                </label>
                <label>* <%=GetGlobalResourceObject("lang", "District")%></label>
                <label><asp:DropDownList ID="ddlShipDistrict" CssClass="select" runat="server"></asp:DropDownList></label>
                
                <label><%=GetGlobalResourceObject("lang", "SetDefault")%><asp:CheckBox ID="chkShipDefault" runat="server"></asp:CheckBox></label>
            </div>
        </div>
    </div>
</div>
