<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.suggesttofriend" Codebehind="suggesttofriend.ascx.vb" %>
<div id="suggesttofriend" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <div id="pnlContent" runat="server">
            <div class="moduleContentCol2">
            	<label><%=GetGlobalResourceObject("lang", "Name")%></label>
            	<label>
                    <asp:textbox id="txtName" runat="server"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:requiredfieldvalidator>
                </label>
            </div>
            <div class="moduleContentCol2">
            	<label><%=GetGlobalResourceObject("lang", "Email")%></label>
                <label>
                    <asp:textbox id="Email" runat="server" maxlength="200"></asp:textbox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:requiredfieldvalidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="((\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)*([;])*)*">*</asp:regularexpressionvalidator>
                </label>
            </div>
            <div class="moduleContentCol2">
            	<label><%=GetGlobalResourceObject("lang", "SuggestToFriendNote")%></label>
                <label><asp:textbox id="Comment" runat="server" textmode="multiline" maxlength="400"></asp:textbox></label>
            </div>
            <div class="moduleContentCol2"><label><%=GetGlobalResourceObject("lang", "SuggestToFriendMsg1")%></label></div>
            <div class="clear"></div>
            <div class="moduleCol1">
            	<label><%=GetGlobalResourceObject("lang", "Captha")%></label>
                <label><img runat="server" id="imgCaptha" src="/services/captha.aspx" border="0" alt=""  width="132" height="30" /></label>
                <label><asp:TextBox ID="txtCaptha" runat="server" ></asp:TextBox></label>
                <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "CapthaError")%></div>
                <label><asp:label id="lblErr" runat="server"></asp:label></label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                <label><asp:Button ID="btnAdd" runat="server" CssClass="button" Text="<%$ Resources:lang, Send%>" /></label>
            </div>
            <div id="pnlMessage" runat="server">
                <label><asp:label id="msg" runat="server"></asp:label></label>
            </div>  
        </div>
    </div>
</div>
<script type="text/javascript">
	jQuery(document).ready(function (){
	jQuery(window).bind("load", function () {
	var frameWidth = jQuery(document).width();
	var frameHeight = jQuery(document).height() + 20;
	parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
	});
	});
</script>    