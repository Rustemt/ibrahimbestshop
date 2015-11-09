<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="bookingproducts.ascx.vb" Inherits="ASPNetPortal.bookingproducts" %>
<div id="addcoupon" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <div class="alert alert-info">
            <label>
                Rezervayon Talep Süreniz <%= IIf(ConfigurationManager.AppSettings("ProductBookedDay") Is Nothing, "-1", ConfigurationManager.AppSettings("ProductBookedDay"))%> Gündür.<br />
                <asp:Label CssClass="textRed" runat="server" ID="lblDate"></asp:Label>
                Tarihine Kadar Ödeme Yapmadığınız Taktirde Rezervasyonunuz İptal Olacaktır.</label>
        </div>

        <div runat="server" id="chkAlert" style="display: none" class="alert alert-error">
            <label>
                <asp:Label ID="lblchkMsg" runat="server"></asp:Label></label>
        </div>

        <div>
            <label class="labelInput"><asp:CheckBox runat="server" ID="chkConfirm"></asp:CheckBox>Onaylıyorum.</label>
        </div>
        <label>
            <asp:Button ID="btnAdd" OnClientClick="javascript:return CheckBox();" runat="server" CssClass="button" Text="Onayla" />
        </label>
        <asp:Label ID="lblClose" Text="" runat="server"></asp:Label>
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
<script type="text/javascript">

    function CheckBox() {

        if (document.getElementById('<%= chkConfirm.ClientID%>').checked == false) {

            document.getElementById('<%= chkAlert.ClientID%>').style.display = 'block'; // Show
            document.getElementById('<%= lblchkMsg.ClientId%>').innerText = 'Lütfen Onayladıktan Sonra Rezervasyon Talebinde Bulununuz.';
            return false;
        }
        else {
            return true;
        }
    }

</script>
