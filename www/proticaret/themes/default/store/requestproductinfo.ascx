<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.requestproductinfo" CodeBehind="requestproductinfo.ascx.vb" %>
<div id="requestproductinfo" class="module">
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
        <div>
            <div id="pnlCont" runat="server">
                <label><%=GetGlobalResourceObject("lang", "Name")%></label>
                <label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>"></asp:RequiredFieldValidator>
                </label>
                <label><%=GetGlobalResourceObject("lang", "Email")%></label>
                <label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="((\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)*([;])*)*"></asp:RegularExpressionValidator>
                </label>
                <label><%=GetGlobalResourceObject("lang", "PhoneGsm")%></label>
                <label>
                    <asp:TextBox ID="txtGsm" runat="server" MaxLength="200"></asp:TextBox></label>
                <label><%=GetGlobalResourceObject("lang", "Phone")%></label>
                <label>
                    <asp:TextBox ID="txtPhone" runat="server" MaxLength="200"></asp:TextBox></label>
                <label><%=GetGlobalResourceObject("lang", "Note")%></label>
                <label>
                    <asp:TextBox ID="txtNot" runat="server" TextMode="multiline" MaxLength="400"></asp:TextBox></label>
                <label><%=GetGlobalResourceObject("lang", "Captha")%></label>
                <label>
                    <img runat="server" id="imgCaptha" src="/services/captha.aspx" border="0" alt="" width="132" height="30" /></label>
                <label>
                    <asp:TextBox ID="txtCaptha" runat="server"></asp:TextBox></label>
                <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "CapthaError")%></div>
                <label>
                    <asp:Button ID="btnAdd" runat="server" CssClass="button" Text="<%$ Resources:lang, Send%>" /></label>
                <label>
                    <asp:Label ID="lblErr" runat="server"></asp:Label></label>
            </div>
            <div id="pnlMsg" runat="server">
                <div id="info" runat="server" class="information">
                    <asp:Label ID="msg" runat="server"></asp:Label></div>

                <label>
                    <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="button" Text="<%$ Resources:lang, Close%>" /></label>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
