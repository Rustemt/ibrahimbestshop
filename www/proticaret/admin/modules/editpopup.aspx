<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditPopUp" Codebehind="EditPopUp.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Popup Düzenle</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
</head>
<body>
<form id="Form1" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Popup Düzenle
</span> </div> 
<div>
    <table cellpadding="2">
        <tr>
            <td align="right" valign="top">Html Ýçeriði :</td>
            <td>
            <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Width="700px" Height="350px" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
            </td>
        </tr>
        <tr>
            <td align="right">Gösterim Þekli :</td>
            <td>
            <asp:DropDownList ID="ddlShowType" runat="server">
            <asp:ListItem Value="0">Herzaman G&#246;ster</asp:ListItem>
            <asp:ListItem Value="1">Her Ziyaretinde Bir Defa G&#246;ster</asp:ListItem>
            <asp:ListItem Value="2">Sadece Bir Defa G&#246;ster(30 g&#252;n)</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>        
    </table>
    <asp:LinkButton ID="updateButton" runat="server" CssClass="button"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
</div>
</div>
</div>
</form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>