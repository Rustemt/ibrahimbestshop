<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dodemekvk.aspx.vb" Inherits="._3dodemekvk" %>

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
    <form id="kvk" runat="server">
        <div runat="server">
            Dönen Sonuçlar: Referans No :
        <asp:TextBox runat="server" ID="KvkReferansNo"></asp:TextBox>
            İslem Sonucu :<asp:TextBox runat="server" ID="IslemSonucu"></asp:TextBox>
            Sonuc Kodu :
        <asp:TextBox runat="server" ID="SonucKodu"></asp:TextBox>
            Sonuc Aciklamasi :
        <asp:TextBox runat="server" ID="SonucAciklamasi"></asp:TextBox>
            <asp:Label ID="lbl" runat="server" />
        </div>
    </form>
    <a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="A1">Kapat</a>
</body>
</html>
