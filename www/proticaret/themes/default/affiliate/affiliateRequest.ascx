<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateRequest" Codebehind="AffiliateRequest.ascx.vb" %>
<div id="affiliateorders" class="module">
<div id="module_content">
  <% if HeaderVisible then %>
  <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
    <% if IsEditable then %>
    <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
    <% end if %>
    </span> </div>
  <% end if %>
<div>
<div id="tblRequestPanel" runat="server">
<label><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
<label><%=GetGlobalResourceObject("lang", "RegisterType")%></label>
<asp:RadioButtonList ID="rblUyeType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
<asp:ListItem Value="0" Selected="True" Text="<%$ Resources:lang, RegisterPersonal%>"></asp:ListItem>
<asp:ListItem Value="1" Text="<%$ Resources:lang, RegisterCommercial%>"></asp:ListItem>
</asp:RadioButtonList>
<label><%=GetGlobalResourceObject("lang", "UserInformation")%></label>
<label>* <%=GetGlobalResourceObject("lang", "LoginName")%></label>
<asp:TextBox ID="txtLoginName" runat="server"></asp:TextBox><asp:Label ID="lblName" runat="server"></asp:Label>
<asp:RequiredFieldValidator ID="rqname" runat="server" ControlToValidate="txtLoginName" ErrorMessage="<%$ Resources:lang, RegisterMsg3%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "Email")%></label>
<asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox><asp:Label ID="lblemail" runat="server"></asp:Label>
<asp:RequiredFieldValidator ID="rqmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
<label><asp:Label ID="lblPass" runat="server" >* <%=GetGlobalResourceObject("lang", "Password")%></asp:Label></label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox><input id="txtPasswordhid" runat="server" type="hidden" />
<asp:RequiredFieldValidator ID="rqpass" runat="server" ControlToValidate="txtPassword" ErrorMessage="<%$ Resources:lang, RegisterMsg2%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "Name")%></label>
<asp:TextBox ID="txtUserName" runat="server" MaxLength="50"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister21" runat="server" ControlToValidate="txtUserName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:RequiredFieldValidator>
<label><%=GetGlobalResourceObject("lang", "SocialSecurityNumber")%></label>
<asp:TextBox id="txtTCKNo" runat="server" MaxLength="11" Visible="True"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister101" runat="server" ControlToValidate="txtTCKNo" ErrorMessage="<%$ Resources:lang, RegisterMsg7%>" Visible="False">*</asp:RequiredFieldValidator>
<label><%=GetGlobalResourceObject("lang", "PhoneWork")%></label>
<ew:MaskedTextBox ID="txtUserIsTel" runat="server" Width="100px" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
<asp:RequiredFieldValidator ID="rqRegister107" runat="server" ControlToValidate="txtUserIsTel" ErrorMessage="<%$ Resources:lang, RegisterMsg14%>" Visible="False">*</asp:RequiredFieldValidator>
<label></label>

<label>* <%=GetGlobalResourceObject("lang", "GsmNo")%></label>
<ew:MaskedTextBox ID="txtUserGsm" runat="server"  Width="100px" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
<asp:RequiredFieldValidator ID="rqRegister108" runat="server" ControlToValidate="txtUserGSM"  ErrorMessage="<%$ Resources:lang, RegisterMsg15%>" >*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "City")%></label>
<asp:DropDownList ID="ddlUserSehir" runat="server" ></asp:DropDownList>
<asp:RequiredFieldValidator ID="rqRegister109" runat="server" ControlToValidate="ddlUserSehir"  ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="0">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "Address")%></label>
<asp:TextBox ID="txtUserAddress" runat="server"  MaxLength="300" TextMode="MultiLine"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister110" runat="server" ControlToValidate="txtUserAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</asp:RequiredFieldValidator>
<label><%=GetGlobalResourceObject("lang", "RegisterCompanyWeb")%></label>
<asp:TextBox ID="txtWeb" runat="server"  MaxLength="100"></asp:TextBox>

 <label><%=GetGlobalResourceObject("lang", "BankInformation")%></label>
<label>* <%=GetGlobalResourceObject("lang", "BankName")%></label>
<asp:TextBox ID="txtBankName" runat="server"  MaxLength="100"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBankName"  ErrorMessage="<%$ Resources:lang, RegisterMsg25%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "BankOffice")%></label>
<asp:TextBox ID="txtBankSube" runat="server"  MaxLength="100"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBankSube" ErrorMessage="<%$ Resources:lang, RegisterMsg26%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "BankAccountNumber")%></label>
<asp:TextBox ID="txtBankNumber" runat="server"  MaxLength="100"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBankNumber" ErrorMessage="<%$ Resources:lang, RegisterMsg27%>">*</asp:RequiredFieldValidator>

<div id="tblFirmaPanel" runat="server">
<label><%=GetGlobalResourceObject("lang", "RegisterCompanyInfo")%></label>
<label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyName")%></label>
<asp:TextBox ID="txtFirmaUnvan" runat="server" MaxLength="100"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister111x" runat="server" ControlToValidate="txtFirmaUnvan" ErrorMessage="<%$ Resources:lang, RegisterMsg20%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyTaxOffice")%></label>
<asp:TextBox ID="txtVergiD" runat="server" MaxLength="100" ></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister111vd" runat="server" ControlToValidate="txtVergiD" ErrorMessage="<%$ Resources:lang, RegisterMsg21%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyTaxNo")%></label>
<asp:TextBox ID="txtVergiNo" runat="server" MaxLength="15"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister111vno" runat="server" ControlToValidate="txtVergiNo" ErrorMessage="<%$ Resources:lang, RegisterMsg22%>">*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyPhone")%></label>
<ew:MaskedTextBox ID="txtFirmaTel" runat="server" Width="100px" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
<asp:RequiredFieldValidator ID="rqRegister111" runat="server" ControlToValidate="txtFirmaTel" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>" >*</asp:RequiredFieldValidator>
<label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyCity")%></label>
<asp:DropDownList ID="ddlFirmaSehir" runat="server" Width="136px"></asp:DropDownList>
<asp:RequiredFieldValidator ID="rqRegister114" runat="server" ControlToValidate="ddlFirmaSehir" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="0" >*</asp:RequiredFieldValidator>
<label><%=GetGlobalResourceObject("lang", "RegisterCompanyAddress")%></label>
<asp:TextBox ID="txtFirmaAdres" runat="server" Width="200px" MaxLength="300" TextMode="MultiLine" ></asp:TextBox>
<asp:RequiredFieldValidator ID="rqRegister115" runat="server" ControlToValidate="txtFirmaAdres" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>" >*</asp:RequiredFieldValidator>
</div>
<label>
* <asp:CheckBox ID="chkContract" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "AffiliateMsg22")%>
<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateTandCs"  ErrorMessage="<%$ Resources:lang, RegisterMsg28%>" >*</asp:CustomValidator>
<asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" CssClass="lightbox" NavigateUrl='../documents/AffiliateContract_temp.htm'><%=GetGlobalResourceObject("lang", "AffiliateContract")%></asp:HyperLink>
</label>
<label><asp:Label ID="lblMsg" runat="server"></asp:Label></label>
<asp:LinkButton ID="RegisterBtn" runat="server" CssClass="button" ><%=GetGlobalResourceObject("lang", "RequestAffiliate1")%></asp:LinkButton>
</div>
<div id="tblResult" runat="server">
<label>
    <%=GetGlobalResourceObject("lang", "AffiliateMsg23")%>
</label>
</div>
 <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
</div>
</div>
</div>
<script language="javascript" type="text/javascript">
    function ValidateTandCs(source, args)
    {
        args.IsValid = document.getElementById('<%= chkContract.ClientID %>').checked;
    } 
</script>