<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.user" CodeBehind="user.ascx.vb" %>
<div id="user" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "UserMsg1")%></div>
            <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "UserMsg2")%></div>
            <label><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
            <hr />
            <asp:Label id="lbluserid" runat="server" />
            <hr />
            <label>* <%=GetGlobalResourceObject("lang", "LoginName")%></label>
            <asp:TextBox ID="txtLoginName" runat="server" Enabled="False"></asp:TextBox>
            <label>* <%=GetGlobalResourceObject("lang", "NameAndSureName")%></label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:RequiredFieldValidator>
            <label>* <%=GetGlobalResourceObject("lang", "Email")%></label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
            <label>* <%=GetGlobalResourceObject("lang", "PhoneHome")%></label>
            <ew:MaskedTextBox ID="txtTel1" runat="server" ErrorMessage="geçersiz giriþ" ErrorText="*" Mask="9999999999999"></ew:MaskedTextBox>
            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg13%>" ControlToValidate="txtTel1">*</asp:RequiredFieldValidator>
            <label><%=GetGlobalResourceObject("lang", "PhoneWork")%></label>
            <ew:MaskedTextBox ID="txtTel2" runat="server" ErrorMessage="geçersiz giriþ" ErrorText="*" Mask="9999999999999"></ew:MaskedTextBox>
            <label><%=GetGlobalResourceObject("lang", "FaxNo")%></label>
            <ew:MaskedTextBox ID="txtFaxNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*"></ew:MaskedTextBox>
            <label><%=GetGlobalResourceObject("lang", "GsmNo")%></label>
            <ew:MaskedTextBox ID="txtGsm" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*"></ew:MaskedTextBox>
            <label>* <%=GetGlobalResourceObject("lang", "City")%></label>
            <asp:DropDownList ID="ddlSehir" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" ControlToValidate="ddlSehir" InitialValue="0">*</asp:RequiredFieldValidator>
            <label>* <%=GetGlobalResourceObject("lang", "Address")%></label>
            <asp:TextBox ID="txtAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</asp:RequiredFieldValidator>
            <label>
                <asp:LinkButton ID="btnSave" runat="server" CssClass="savebutton" Text="<%$ Resources:lang, Save%>"></asp:LinkButton></label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        </div>
    </div>
</div>
