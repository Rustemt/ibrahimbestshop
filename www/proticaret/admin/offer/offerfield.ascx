<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="offerfield.ascx.vb" Inherits="offerfield1" %>

<div id="suppliers" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span>Teklif İstek Alanları</span>
        </div>
        <div>
            <asp:Label runat="server" ID="lblerror"></asp:Label>
            <table cellpadding="10" cellspacing="10" border="1" border-color="#000000">
                <tr>
                    <td>İskonto 1</td>
                    <td>İskonto 2</td>
                    <td>İskonto 3</td>
                    <td>İskonto 4</td>
                    <td>İskonto 5</td>
                    <td>İskonto 1</td>
                    <td>İskonto 2</td>
                    <td>İskonto Tutar 1</td>
                    <td>İskonto Toplam 1</td>
                    <td>İskonto Kdv 1</td>
                    <td>İskonto Tutar 2</td>
                    <td>İskonto Toplam 2</td>
                    <td>İskonto Kdv 2</td>
                    <td>En</td>
                    <td>Boy</td>
                </tr>
                <tr>
                    <td><asp:CheckBox ID="cbField11" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField12" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField13" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField14" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField15" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField20" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField21" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField22" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField23" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField24" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField25" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField26" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField27" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField28" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField29" runat="server" EnableViewState="False" /></td>
                </tr>
                <tr>
                    <td>Yükseklik</td>
                    <td>Ağırlık</td>
                    <td>Hacim</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:CheckBox ID="cbField30" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField31" runat="server" EnableViewState="False" /></td>
                    <td><asp:CheckBox ID="cbField32" runat="server" EnableViewState="False" /></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />

            <asp:Button ID="btnSaveAndUpdate" runat="server" Text="Kaydet/Güncelle" EnableViewState="False" />

        </div>
    </div>
</div>

<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>