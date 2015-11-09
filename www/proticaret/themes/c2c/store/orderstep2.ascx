<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderstep2" CodeBehind="orderstep2.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>


<div id="orderstep2" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlBillCountry"
                        Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
                    <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlBillCity"
                        ParentControlID="ddlBillCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx"
                        ServiceMethod="GetCity" />
                    <cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlBillDistrict"
                        ParentControlID="ddlBillCity" Category="DistrictId" PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx"
                        ServiceMethod="GetDistict" />
                    <cc3:CascadingDropDown ID="CascadingDropDown4" runat="server" TargetControlID="ddlShipCountry"
                        Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
                    <cc3:CascadingDropDown ID="CascadingDropDown5" runat="server" TargetControlID="ddlShipCity"
                        ParentControlID="ddlShipCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx"
                        ServiceMethod="GetCity" />
                    <cc3:CascadingDropDown ID="CascadingDropDown6" runat="server" TargetControlID="ddlShipDistrict"
                        ParentControlID="ddlShipCity" Category="DistrictId" PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx"
                        ServiceMethod="GetDistict" />
                        <div class="moduleContentCol2 radius5">
                            <label class="title4"><%=GetGlobalResourceObject("lang", "BillingAddres")%></label>
                            <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "SavedBillingName")%> :</label>
                                <asp:DropDownList ID="ddlBilling" runat="server" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <% End If%>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "BillingName")%> :</label>
                                <asp:TextBox ID="CompanyName" runat="server" MaxLength="100"></asp:TextBox>
                                <cc1:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="CompanyName" ErrorMessage="<%$ Resources:lang, BillingMsg2%>">*</cc1:RequiredFieldValidator>                                    
                            </div>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "Mail")%></label>
                                <asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli bir mail adresi giriniz." ControlToValidate="txtMail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                            </div>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "TaxOffice")%>:</label>
                                <asp:TextBox ID="taxOffice" runat="server" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "SocialSecurityNumberTax")%> :</label>
                                <ew:MaskedTextBox ID="taxNo" runat="server" ErrorMessage="geçersiz giri?" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                <cc1:RequiredFieldValidator ID="rq2" runat="server" ControlToValidate="taxNo" ErrorMessage="<%$ Resources:lang, BillingMsg3%>">*</cc1:RequiredFieldValidator>
                            </div>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "Phone")%> :</label>
                                <ew:MaskedTextBox ID="txtBillPhoneNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                <cc1:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBillPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</cc1:RequiredFieldValidator>
                            </div>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "PhoneGsm")%> :</label>
                                <ew:MaskedTextBox ID="txtBillGSMno" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                            </div>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "Country")%> :</label>
                                <asp:DropDownList ID="ddlBillCountry" CssClass="select" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlBillCountry" ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "City")%> :</label>
                                <asp:DropDownList CssClass="billCity" ID="ddlBillCity" runat="server"></asp:DropDownList>
                                <cc1:RequiredFieldValidator ID="rq3" runat="server" ControlToValidate="ddlBillCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</cc1:RequiredFieldValidator>
                            </div>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "District")%></label>
                                <asp:DropDownList ID="ddlBillDistrict" CssClass="select" runat="server"></asp:DropDownList>
                            </div>
                            <div class="moduleCol1">
                                <label>* <%=GetGlobalResourceObject("lang", "BillingAddres")%> :</label>
                                <asp:TextBox ID="txtBillAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                                <cc1:RequiredFieldValidator ID="rq4" runat="server" ControlToValidate="txtBillAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</cc1:RequiredFieldValidator>
                            </div>
                            <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                            <div class="moduleCol1">
                                <label><%=GetGlobalResourceObject("lang", "SetAsDefault")%> :</label>
                                <asp:CheckBox ID="chkBillDefault" runat="server"></asp:CheckBox>
                            </div>
                             <% End If%>
                        </div>
                        <div class="moduleContentCol2 radius5">
                        	<label class="title4"><%=GetGlobalResourceObject("lang", "ShippingAddres")%></label>
                            <label><asp:CheckBox onclick="ShippingChecked();" ID="chkUseBillingOnShipping" runat="server" Checked="true"></asp:CheckBox><%=GetGlobalResourceObject("lang", "UseBillingForShipping")%></label>
                            <div id="tblShipping" style="display:none;">
                            	<%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                <div class="moduleCol1">
                                    <label><%=GetGlobalResourceObject("lang", "SavedShippingName")%> :</label>
                                    <asp:DropDownList ID="ddlShipping" runat="server" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <% End If%>
                                <div class="moduleCol1">
                                    <label>* <%=GetGlobalResourceObject("lang", "ShippingName")%> :</label>
                                    <asp:TextBox ID="txtRecipientName" runat="server" MaxLength="100"></asp:TextBox>
                                    <cc1:RequiredFieldValidator ID="rqs1" runat="server" ControlToValidate="txtRecipientName" ErrorMessage="<%$ Resources:lang, ShippingMsg2%>">*</cc1:RequiredFieldValidator>
                                </div>
                                <div class="moduleCol1">
                                    <label>* <%=GetGlobalResourceObject("lang", "Phone")%> :</label>
                                    <ew:MaskedTextBox ID="txtPhoneNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                    <cc1:RequiredFieldValidator ID="rqs2" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</cc1:RequiredFieldValidator>
                                </div>
                                <div class="moduleCol1">
                                    <label><%=GetGlobalResourceObject("lang", "PhoneGsm")%> :</label>
                                    <ew:MaskedTextBox ID="txtGSMno" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                </div>
                                <div class="moduleCol1">
                                    <label>* Ülke :</label>
                                    <asp:DropDownList ID="ddlShipCountry" CssClass="select" runat="server"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rqs5" runat="server" ControlToValidate="ddlShipCountry" ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="moduleCol1">
                                    <label>* <%=GetGlobalResourceObject("lang", "City")%> :</label>
                                    <asp:DropDownList ID="ddlShipCity" runat="server"></asp:DropDownList>
                                    <cc1:RequiredFieldValidator ID="rqs3" runat="server" ControlToValidate="ddlShipCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</cc1:RequiredFieldValidator>
                                </div>
                                <div class="moduleCol1">
                                    <label><%=GetGlobalResourceObject("lang", "District")%></label>
                                    <asp:DropDownList ID="ddlShipDistrict" CssClass="select" runat="server"></asp:DropDownList>
                                </div>
                                <div class="moduleCol1">
                                    <label>* <%=GetGlobalResourceObject("lang", "ShippingAddres")%> :</label>
                                     <asp:TextBox ID="txtShipAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                                     <cc1:RequiredFieldValidator ID="rqs4" runat="server" ControlToValidate="txtShipAddress" ErrorMessage="<%$ Resources:lang, ShippingMsg3%>">*</cc1:RequiredFieldValidator>
                                </div>
                                <div class="moduleCol1">
                                    <label><%=GetGlobalResourceObject("lang", "ShippingAddresDesc")%> :</label>
                                    <asp:TextBox ID="txtShipDescription" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                <div class="moduleCol1" runat="server" visible="false">
                                	<label><%=GetGlobalResourceObject("lang", "SetAsDefault")%> :</label>
                                    <asp:CheckBox ID="chkShipDefault" runat="server"></asp:CheckBox>
                                </div>
                                <% End If%>
                            </div>
                        </div>
                        <div class="moduleContentCol2">
                        	 <label><asp:LinkButton ID="btnPay" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "Buy2")%></asp:LinkButton></label>
                        </div>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnPay" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0" BackgroundCssClass="modalBackground">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p>
                            <%=GetGlobalResourceObject("lang", "Loading")%>
                            <img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" />
                        </p>
                        <p>
                            <%=GetGlobalResourceObject("lang", "PleaseWait")%>
                        </p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    </div>
</div>
<script type="text/javascript">
    $(function () {
        ShippingChecked();
    });
    function pageLoad(sender, args) {
        if (args.get_isPartialLoad())
        { ShippingChecked(); }
    }
    function ShippingChecked() {
        var chkShipping = document.getElementById('<%=chkUseBillingOnShipping.ClientID%>');
        if (chkShipping.checked) {
            $("#tblShipping").fadeOut();
            ValidatorEnable(document.getElementById('<%=rqs1.ClientID%>'), false);
            ValidatorEnable(document.getElementById('<%=rqs2.ClientID%>'), false);
            ValidatorEnable(document.getElementById('<%=rqs3.ClientID%>'), false);
            ValidatorEnable(document.getElementById('<%=rqs4.ClientID%>'), false);
            ValidatorEnable(document.getElementById('<%=rqs5.ClientID%>'), false);
        }
        else {
            $("#tblShipping").fadeIn();
            ValidatorEnable(document.getElementById('<%=rqs1.ClientID%>'), true);
            ValidatorEnable(document.getElementById('<%=rqs2.ClientID%>'), true);
            ValidatorEnable(document.getElementById('<%=rqs3.ClientID%>'), true);
            ValidatorEnable(document.getElementById('<%=rqs4.ClientID%>'), true);
            ValidatorEnable(document.getElementById('<%=rqs5.ClientID%>'), true);

        }
    }
</script>
