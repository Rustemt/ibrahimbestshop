<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="MultiAdmin.ascx.vb" Inherits="MultiAdmin" %>
<script language="javascript" type="text/javascript">
    function funcbSelect(Rch, Hcb, RowsCount) {
        var i = 0;
        for (i = 0; i <= RowsCount - 1; i++) {
            document.getElementById(Rch.concat('' + i + '')).checked = document.getElementById(Hcb).checked;
        }
    }
</script>
<div class="dataForm">
    <div class="row">
        <div class="colTwo">
            <label class="labelInput"><asp:CheckBox Text="Tümü" runat="server" ID="cbAll" /></label>
        </div>
        <div class="colTwo">
            <label class="labelInput"><asp:CheckBoxList runat="server" ID="cblSites"></asp:CheckBoxList></label>
        </div>
    </div>
</div>

