<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.addcoupon" CodeBehind="addcoupon.ascx.vb" %>
<div id="addcoupon" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
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
