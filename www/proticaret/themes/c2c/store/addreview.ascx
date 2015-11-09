<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="addreview.ascx.vb" Inherits="ASPNetPortal.c2caddreview" %>

<div id="addreview" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <label><%=GetGlobalResourceObject("lang", "ReviewPoint")%></label>
        <label>
            <asp:RadioButton ID="rt5" Checked="true" GroupName="review" runat="server"></asp:RadioButton><img onclick alt="" src="<%=getThemePath() %>/images/rating_5.gif" />
        </label>
        <label>
            <asp:RadioButton ID="rt4" GroupName="review" runat="server"></asp:RadioButton><img onclick alt="" src="<%=getThemePath() %>/images/rating_4.gif" />
        </label>
        <label>
            <asp:RadioButton ID="rt3" GroupName="review" runat="server"></asp:RadioButton><img onclick alt="" src="<%=getThemePath() %>/images/rating_3.gif" />
        </label>
        <label>
            <asp:RadioButton ID="rt2" GroupName="review" runat="server"></asp:RadioButton><img onclick alt="" src="<%=getThemePath() %>/images/rating_2.gif" />
        </label>
        <label>
            <asp:RadioButton ID="rt1" GroupName="review" runat="server"></asp:RadioButton><img onclick alt="" src="<%=getThemePath() %>/images/rating_1.gif" />
        </label>

        <label>
            <asp:Label ID="txtusername" runat="server"></asp:Label></label>
        <label><%=GetGlobalResourceObject("lang", "ReviewText")%></label>
        <asp:TextBox ID="txtComment" runat="server" EnableViewState="False" TextMode="multiline"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComment" Display="Dynamic" ErrorMessage="<%$ Resources:lang, ReviewMsg2%>">*</asp:RequiredFieldValidator>
        <label><%=GetGlobalResourceObject("lang", "ReviewMsg1")%></label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        <asp:Label ID="lblErr" runat="server"></asp:Label>
        <asp:Button ID="btnAdd" CssClass="button" runat="server" Text="<%$ Resources:lang, AddReview%>" />
        <script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery(window).bind("load", function () {
                    var frameWidth = jQuery(document).width();
                    var frameHeight = jQuery(document).height()
                    parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
                });
            });
        </script>
    </div>
</div>
