<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editcart" Codebehind="editcart.ascx.vb" %>
<div id="editcart" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div>
<label>
<%=GetGlobalResourceObject("lang", "CartName")%> : 
<asp:TextBox ID="txtCartName" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCartName" ErrorMessage="<%$ Resources:lang, CartMsg19%>">*</asp:RequiredFieldValidator>
<asp:Button ID="btnAdd" runat="server" CssClass="button" Text="<%$ Resources:lang, Save%>" />
</label>
<label>
<asp:Label ID="lblErr" runat="server"></asp:Label>
</label>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</div>
</div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function (){
 jQuery(window).bind("load", function () {
 var frameWidth = jQuery(document).width();
 var frameHeight = jQuery(document).height()
 parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
 });
});
</script>