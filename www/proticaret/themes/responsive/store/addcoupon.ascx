<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.addcoupon" CodeBehind="addcoupon.ascx.vb" %>
<div id="addcoupon" class="module">
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
            <%= GetGlobalResourceObject("lang", "CouponNo")%> : 
               <br />
            <asp:TextBox ID="txtCoupon" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCoupon" ErrorMessage="Kupon No Giriniz">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnAdd" runat="server" CssClass="button" Text="Ekle" />
        </label>
        <label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            <asp:Label ID="lblCouponError" runat="server" EnableViewState="False"></asp:Label>
        </label>
    </div>
</div>
<asp:Label Text="" runat="server" ID="lbl" Visible="false" />
<script type="text/javascript" src="<%=getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height()
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
