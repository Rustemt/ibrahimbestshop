<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dodeme_ipara_api.aspx.vb" Inherits="._3dodeme_ipara_api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
        }

    </script>
</head>
<body>
    <h1>3D Ödeme Sayfası</h1>
    <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="lnk">Kapat</a>
    <form id="ipara" runat="server">

        <asp:Label ID="lbl" runat="server" />

    </form>
    <a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="A1">Kapat</a>
</body>
</html>
