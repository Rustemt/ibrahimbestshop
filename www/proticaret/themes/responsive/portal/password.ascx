<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.password" CodeBehind="password.ascx.vb" %>
<div id="password" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <div id="password_form" runat="server">
            <label class="title4"><%=GetGlobalResourceObject("lang", "ChangePasswordMsg3")%></label>
            <label><%=GetGlobalResourceObject("lang", "Password") %></label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate="txtPassword" Display="Static" ErrorMessage="<%$ Resources:lang, RequiredMessage%>">*</asp:RequiredFieldValidator>
            <label><%=GetGlobalResourceObject("lang", "RepetPassword")%></label>
            <asp:TextBox ID="txtPassword2" runat="server" TextMode="password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword2" Display="Static" ErrorMessage="<%$ Resources:lang, RequiredMessage%>">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" ErrorMessage="<%$ Resources:lang, CompareValidatorMessage%>">*</asp:CompareValidator>
            <label>
                <asp:LinkButton ID="btnSave" runat="server" CssClass="button" Text="<%$ Resources:lang, Update%>"></asp:LinkButton>

            </label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        </div>
        <div id="password_change_form" runat="server">
            <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "ChangePasswordMsg2")%></div>
            <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "ChangePasswordMsg1")%></div>
        </div>
    </div>
</div>
