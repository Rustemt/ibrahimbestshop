<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.user" CodeBehind="user.ascx.vb" %>
<div id="user" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1 inputFull">
        <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "UserMsg1")%></div>
        <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "UserMsg2")%></div>
        <label class="title2"><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
        <asp:Label id="lbluserid" CssClass="title3" runat="server" />
        <div class="moduleContentCol1 clearFix">
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "LoginName")%></label>
                <asp:TextBox ID="txtLoginName" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "NameAndSureName")%></label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:RequiredFieldValidator>
            </div>
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "Email")%></label>
                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
            </div>
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "PhoneHome")%></label>
                <ew:MaskedTextBox ID="txtTel1" runat="server" ErrorMessage="geçersiz giriþ" ErrorText="*" Mask="9999999999999"></ew:MaskedTextBox>
                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg13%>" ControlToValidate="txtTel1">*</asp:RequiredFieldValidator>
            </div>
            <div class="moduleContentCol2">
                <label><%=GetGlobalResourceObject("lang", "PhoneWork")%></label>
                <ew:MaskedTextBox ID="txtTel2" runat="server" ErrorMessage="geçersiz giriþ" ErrorText="*" Mask="9999999999999"></ew:MaskedTextBox>
            </div>
            <div class="moduleContentCol2">
                <label><%=GetGlobalResourceObject("lang", "FaxNo")%></label>
                <ew:MaskedTextBox ID="txtFaxNo" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*"></ew:MaskedTextBox>
            </div>
            <div class="moduleContentCol2">
                <label><%=GetGlobalResourceObject("lang", "GsmNo")%></label>
                <ew:MaskedTextBox ID="txtGsm" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" ErrorText="*"></ew:MaskedTextBox>
            </div>
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "City")%></label>
                <asp:DropDownList ID="ddlSehir" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" ControlToValidate="ddlSehir" InitialValue="0">*</asp:RequiredFieldValidator>
            </div>
            <div class="moduleContentCol2">
                <label>* <%=GetGlobalResourceObject("lang", "Address")%></label>
                <asp:TextBox ID="txtAddress" runat="server" MaxLength="150" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>">*</asp:RequiredFieldValidator>
            </div>
            <div class="moduleContentCol2">
                <label><asp:LinkButton ID="btnSave" runat="server" CssClass="button" Text="<%$ Resources:lang, Save%>"></asp:LinkButton></label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            </div>
        </div>
    </div>
</div>
