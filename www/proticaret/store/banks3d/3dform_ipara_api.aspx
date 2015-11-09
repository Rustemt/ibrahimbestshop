<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dform_ipara_api.aspx.vb" Inherits="._3dform_ipara_api" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="Form1">
        <div style="visibility: hidden;">
            <input type="text" runat="server" id="cardname" name="cardname" />
            <input type="text" runat="server" id="cardnumber" name="cardnumber" />
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
