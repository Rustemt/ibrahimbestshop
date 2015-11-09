<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editcart" Codebehind="editcart.ascx.vb" %>
<div id="editcart" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
    <label>
		<%=GetGlobalResourceObject("lang", "CartName")%> : 
        <asp:TextBox ID="txtCartName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCartName" ErrorMessage="<%$ Resources:lang, CartMsg19%>">*</asp:RequiredFieldValidator>
        <asp:Button ID="btnAdd" runat="server" CssClass="button" Text="<%$ Resources:lang, Save%>" />
    </label>
    <label><asp:Label ID="lblErr" runat="server"></asp:Label></label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
	</div>
</div>
<script type="text/javascript">
	jQuery(document).ready(function (){
	 jQuery(window).bind("load", function () {
	 var frameWidth = jQuery(document).width();
	 var frameHeight = jQuery(document).height()
	 parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
	 });
	});
</script>