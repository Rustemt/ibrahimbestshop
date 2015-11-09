<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformkvk.aspx.vb" Inherits="._3dformkvk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">

         var eci;
         var cavv;
         var md;
         var xid;
         //var mdstatus;
         //var mdErrorMsg;

         //var maskedpan;

         function HideFrameOk() {
             window.parent.$find('ModalPopupExtender1').hide();
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 1;
             window.parent.ConfirmPayment();

         }
 </script>
</head>
<body>

    <form id="Form1">
        <div style="visibility: hidden;">
            <input type="text" runat="server" id="cardname"  name="cardname" />
            <input type="text" runat="server" id="cardnumber"  name="cardnumber" />
            <input type="text" runat="server" id="cardexpiredatemonth" name="cardexpiredatemonth" />
            <input type="text" runat="server" id="cardexpiredateyear" name="cardexpiredateyear" />
            <input type="text" runat="server" id="cardcvv2" name="cardcvv2" />
        </div>

        <a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
        <%= html %>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
         <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="lnk2">Kapat</a>
        </div>



    </form>

</body>
</html>
