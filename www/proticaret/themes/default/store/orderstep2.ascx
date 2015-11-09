<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderstep2" CodeBehind="orderstep2.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc2" %>
<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>


<div id="orderstep2" class="module">
    <div id="module_content">
        <div id="module_title">
            <img src="<%=getThemePath() %>/images/adim_2.png" />
        </div>
        <div>
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
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td valign="top" width="50%">
                                <div class="module_box">
                                    <label class="subtitle"><%=GetGlobalResourceObject("lang", "BillingAddres")%></label>

                                    <table cellspacing="0" cellpadding="3" border="0">
                                        <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "SavedBillingName")%> :</td>
                                            <td>
                                                <asp:DropDownList ID="ddlBilling" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                                        </tr>
                                        <% End If%>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "BillingName")%> :</td>
                                            <td>
                                                <asp:TextBox ID="CompanyName" runat="server" MaxLength="100"></asp:TextBox>
                                                <cc1:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="CompanyName" ErrorMessage="<%$ Resources:lang, BillingMsg2%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "Mail")%> </td>
                                            <td>
                                                <asp:TextBox ID="txtMail" runat="server" MaxLength="100"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli bir mail adresi giriniz." ControlToValidate="txtMail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "TaxOffice")%>:</td>
                                            <td>
                                                <asp:TextBox ID="taxOffice" runat="server" MaxLength="100"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "SocialSecurityNumberTax")%> :</td>
                                            <td> 
                                                <ew:MaskedTextBox ID="taxNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                                <cc1:RequiredFieldValidator ID="rq2" runat="server" ControlToValidate="taxNo" ErrorMessage="<%$ Resources:lang, BillingMsg3%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "Phone")%> :</td>
                                            <td>
                                                <ew:MaskedTextBox ID="txtBillPhoneNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                                <cc1:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBillPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "PhoneGsm")%> :</td>
                                            <td>
                                                <ew:MaskedTextBox ID="txtBillGSMno" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox></td>
                                        </tr>


                                        <tr>

                                            <td align="right">* <%=GetGlobalResourceObject("lang", "Country")%> :</td>
                                            <td>
                                                <asp:DropDownList ID="ddlBillCountry" CssClass="select" runat="server">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlBillCountry"
                                                    ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "City")%> :</td>
                                            <td>
                                                <asp:DropDownList CssClass="billCity" ID="ddlBillCity" runat="server"></asp:DropDownList>
                                                <cc1:RequiredFieldValidator ID="rq3" runat="server" ControlToValidate="ddlBillCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "District")%></td>
                                            <td>
                                                <asp:DropDownList ID="ddlBillDistrict" CssClass="select" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right" valign="top">* <%=GetGlobalResourceObject("lang", "BillingAddres")%> :</td>
                                            <td>
                                                <asp:TextBox ID="txtBillAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                                                <cc1:RequiredFieldValidator ID="rq4" runat="server" ControlToValidate="txtBillAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                        <tr runat="server" visible="false">
                                            <td align="right"><%=GetGlobalResourceObject("lang", "SetAsDefault")%> :</td>
                                            <td>
                                                <asp:CheckBox ID="chkBillDefault" runat="server"></asp:CheckBox></td>
                                        </tr>
                                        <% End If%>
                                    </table>
                                </div>
                            </td>
                            <td valign="top" width="50%">
                                <div class="module_box">
                                    <label class="subtitle"><%=GetGlobalResourceObject("lang", "ShippingAddres")%></label>
                                    <label>
                                        <asp:CheckBox onclick="ShippingChecked();" ID="chkUseBillingOnShipping" runat="server" Checked="true"></asp:CheckBox><%=GetGlobalResourceObject("lang", "UseBillingForShipping")%></label>
                                    <table id="tblShipping" cellspacing="0" cellpadding="3" border="0" style="display: none;">
                                        <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "SavedShippingName")%> :</td>
                                            <td>
                                                <asp:DropDownList ID="ddlShipping" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                                        </tr>
                                        <% End If%>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "ShippingName")%> :</td>
                                            <td>
                                                <asp:TextBox ID="txtRecipientName" runat="server" MaxLength="100"></asp:TextBox>
                                                <cc1:RequiredFieldValidator ID="rqs1" runat="server" ControlToValidate="txtRecipientName" ErrorMessage="<%$ Resources:lang, ShippingMsg2%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "Phone")%> :</td>
                                            <td>
                                                <ew:MaskedTextBox ID="txtPhoneNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox>
                                                <cc1:RequiredFieldValidator ID="rqs2" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "PhoneGsm")%> :</td>
                                            <td>
                                                <ew:MaskedTextBox ID="txtGSMno" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*" MaxLength="14"></ew:MaskedTextBox></td>
                                        </tr>
                                        <tr>
                                            <td align="right">* Ülke :</td>
                                            <td>
                                                <asp:DropDownList ID="ddlShipCountry" CssClass="select" runat="server">
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="rqs5" runat="server" ControlToValidate="ddlShipCountry"
                                                    ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right">* <%=GetGlobalResourceObject("lang", "City")%> :</td>
                                            <td>
                                                <asp:DropDownList ID="ddlShipCity" runat="server"></asp:DropDownList>
                                                <cc1:RequiredFieldValidator ID="rqs3" runat="server" ControlToValidate="ddlShipCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right"><%=GetGlobalResourceObject("lang", "District")%></td>
                                            <td>
                                                <asp:DropDownList ID="ddlShipDistrict" CssClass="select" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="right" valign="top">* <%=GetGlobalResourceObject("lang", "ShippingAddres")%> :</td>
                                            <td>
                                                <asp:TextBox ID="txtShipAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                                                <cc1:RequiredFieldValidator ID="rqs4" runat="server" ControlToValidate="txtShipAddress" ErrorMessage="<%$ Resources:lang, ShippingMsg3%>">*</cc1:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" valign="top"><%=GetGlobalResourceObject("lang", "ShippingAddresDesc")%> :</td>
                                            <td>
                                                <asp:TextBox ID="txtShipDescription" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox></td>
                                        </tr>
                                        <%  If HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                        <tr runat="server" visible="false">
                                            <td align="right"><%=GetGlobalResourceObject("lang", "SetAsDefault")%> :</td>
                                            <td>
                                                <asp:CheckBox ID="chkShipDefault" runat="server"></asp:CheckBox></td>
                                        </tr>
                                        <% End If%>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label>
                                    <asp:LinkButton ID="btnPay" runat="server" CssClass="buybutton"><%=GetGlobalResourceObject("lang", "Buy2")%></asp:LinkButton>
                                </label>
                            </td>
                        </tr>
                    </table>
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
