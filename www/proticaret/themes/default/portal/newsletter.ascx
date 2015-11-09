<%@ Control Language="vb" Inherits="ASPNetPortal.newsletter" AutoEventWireup="false" Codebehind="newsletter.ascx.vb" EnableViewState="False" %>
<div id="newsletter" class="module">
  <div id="module_content">
    <% if HeaderVisible then %>
    <div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
      <% if IsEditable then %>
      <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
      <% end if %>
      </span> </div>
    <% end if %>
    <div>
    <div id="info" runat="server" class="information"><asp:Label ID="lblInfo" runat="Server"></asp:Label></div>
      <label>
      <asp:textbox id="txtEbultenMail" runat="server"></asp:textbox>
      <asp:RequiredFieldValidator validationgroup="bulten" ID="rqRegister1" runat="server" ControlToValidate="txtEbultenMail" ErrorMessage="<%$ Resources:lang, RequiredMessage%>">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator validationgroup="bulten" ID="rqRegister2" runat="server" ControlToValidate="txtEbultenMail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
      <asp:Button ID="btnEbultenEkle" runat="server" OnClick="btnEbultenEkle_Click" Text="<%$ Resources:lang, NewsletterAddMeToList%>" ValidationGroup="bulten" CssClass="button" />
      </label>      
      <asp:ValidationSummary validationgroup="bulten" ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
    </div>
  </div>
</div>