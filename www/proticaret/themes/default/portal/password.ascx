<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.password" CodeBehind="password.ascx.vb" %>
<div id="password" class="module">
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
        <div id="password_form" runat="server">
            <label><%=GetGlobalResourceObject("lang", "ChangePasswordMsg3")%></label>
            <label><%=GetGlobalResourceObject("lang", "Password") %></label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate="txtPassword" Display="Static" ErrorMessage="<%$ Resources:lang, RequiredMessage%>">*</asp:RequiredFieldValidator>
            <label><%=GetGlobalResourceObject("lang", "RepetPassword")%></label>
            <asp:TextBox ID="txtPassword2" runat="server" TextMode="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword2" Display="Static" ErrorMessage="<%$ Resources:lang, RequiredMessage%>">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" ErrorMessage="<%$ Resources:lang, CompareValidatorMessage%>">*</asp:CompareValidator>
            <label>
                <asp:LinkButton ID="btnSave" runat="server" CssClass="savebutton" Text="<%$ Resources:lang, Update%>"></asp:LinkButton>

            </label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        </div>
        <div id="password_change_form" runat="server">
            <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "ChangePasswordMsg2")%></div>
            <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "ChangePasswordMsg1")%></div>
        </div>
    </div>
</div>
