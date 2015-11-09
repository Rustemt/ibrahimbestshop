<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dodemegenpa.aspx.vb" Inherits="._3dodemegenpa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        var eci;
        var cavv;
        var md;
        var xid;
        var oid;

        function HideFrameOk() {
            window.parent.$find('ModalPopupExtender1').hide();
            window.parent.ConfirmPayment();
        }
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
            Page_BlockSubmit = false;
        }
    </script>
</head>
<body>
    <h1>3D Ödeme Sayfası</h1>

    <div style="text-align: center"><a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="LinkButton1">Kapat kapat</a> </div>
</body>
</html>