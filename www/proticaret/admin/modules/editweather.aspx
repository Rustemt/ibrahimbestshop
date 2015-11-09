<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditWeather" Codebehind="EditWeather.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Hava Durumu Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Hava Durumu Düzenle
</span> </div> 
<div>
    <table cellpadding="2">
        <tr>
            <td align="right">Þehir :</td>
            <td>
                <asp:DropDownList ID="cmbIller" runat="server">
                    <asp:ListItem Value="Adana">Adana</asp:ListItem>
                    <asp:ListItem Value="Ankara">Ankara</asp:ListItem>
                    <asp:ListItem Value="Diyarbakýr">Diyarbakýr</asp:ListItem>
                    <asp:ListItem Value="Erzurum">Erzurum</asp:ListItem>
                    <asp:ListItem Value="Hatay">Hatay</asp:ListItem>
                    <asp:ListItem Value="Istanbul">Istanbul</asp:ListItem>
                    <asp:ListItem Value="Izmir">Izmir</asp:ListItem>
                    <asp:ListItem Value="Samsun">Samsun</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>       
    </table>
<asp:LinkButton ID="updateBtn" runat="server" CssClass="button">Kaydet</asp:LinkButton>
</div>
</div>
</div>
</form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
