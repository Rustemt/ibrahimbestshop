<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.forgotpassword" Codebehind="forgotpassword.ascx.vb" %>
<div id="forgotpassword" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<div id="info" runat="server" class="information"><asp:Label ID="lblInfo" runat="Server" EnableViewState="False"></asp:Label></div>
<div id="alert" runat="server" class="alert"><asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
<label>
<%If _portalsettings.SmsSendForPassword Then %>
<%=GetGlobalResourceObject("lang", "ForgotPasswordMsg0")%>
<%else %>
<%=GetGlobalResourceObject("lang", "ForgotPasswordMsg1")%>
<%end if %>
</label>
<label>
<%=GetGlobalResourceObject("lang", "Email")%> : 
<asp:TextBox ID="email" runat="server" ToolTip="" ></asp:TextBox>
<asp:RequiredFieldValidator ID="emailRequired" runat="server" ControlToValidate="email" ErrorMessage="<%$ Resources:lang, RequiredMessage%>" >*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="emailValid" runat="server" ControlToValidate="email" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
<asp:Button ID="btnSend" runat="server" EnableViewState="False" Text="<%$ Resources:lang, SendEmail%>" CssClass="button"></asp:Button>
<%If _portalsettings.SmsSendForPassword Then %>
<asp:Button ID="btnSendSms" runat="server" EnableViewState="False" Text="<%$ Resources:lang, SendSms%>" CssClass="button"></asp:Button>
<%end if %>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
</div>
</div>
</div>