<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
        }

    </script>
</head>
<body>
    <%
          
        Dim strMode As String = "PROD"
        Dim strApiVersion As String = "v0.01"
        Dim strTerminalProvUserId As String = Session("GetwayUserName")
    
        Dim strType As String = Session("PayType")
        Dim strAmount As String = Format(Session("amount"), "0.00").Replace(",", "") 'İşlem Tutarı 
        Dim strCurrencyCode As String = "949"
        Dim strInstallmentCount As String = IIf(Session("Taksit") > 0, Session("Taksit"), "") 'Taksit Sayısı. Boş gönderilirse taksit yapılmaz 
        Dim strTerminalUserId As String = Session("GetwayUserName")
        Dim strOrderID As String = Session("NextOrderId")
        Dim strCustomeripaddress As String = "127.0.0.1"
     
        Try
            strCustomeripaddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
            If strCustomeripaddress = "" Then
                strCustomeripaddress = Request.ServerVariables("REMOTE_ADDR")
            End If
        Catch ex As Exception
            strCustomeripaddress = "127.0.0.1"
        End Try

        Dim strTerminalID As String = Session("GetwayPosNo")
    
        Dim _strTerminalID As String = strTerminalID
        While _strTerminalID.Length < 9
            _strTerminalID = "0" & _strTerminalID
        End While
        Dim strTerminalMerchantID As String = Session("GetwayId") 'MerchantID 
        Dim strStoreKey As String = Session("Key3D") '3D Secure şifreniz 
        Dim strProvisionPassword As String = Session("GetwayPassword") 'SanalPos şifreniz 
        Dim strSuccessURL As String = BaseUrl & "/store/banks3d/3dodemegaranti.aspx"
        Dim strErrorURL As String = BaseUrl & "/store/banks3d/3dodemegaranti.aspx"
    
        'Test
        'Dim strSuccessURL As String = "http://www.pro20.com/store/banks3d/3dodemegaranti.aspx"
        'Dim strErrorURL As String = "http://www.pro20.com/store/banks3d/3dodemegaranti.aspx"
    
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            strSuccessURL = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemegaranti.aspx"
            strErrorURL = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemegaranti.aspx"
        End If
        
        Dim SecurityData As String = UCase(vpos2.GetSHA1(strProvisionPassword + _strTerminalID))
        Dim HashData As String = UCase(vpos2.GetSHA1(strTerminalID + strOrderID + strAmount + strSuccessURL + strErrorURL + strType + strInstallmentCount + strStoreKey + SecurityData))
 
        Dim posturl As String = Session("Bank3dGetWayAddress")
    
    %>

    <form id="Form1" method="post" action="<%=posturl%>">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
        </div>

        <div style="visibility: hidden;">
            
            <select name="secure3dsecuritylevel">
                <option value="3D" selected="selected">3D</option>
                <option value="3D_PAY">3D_PAY</option>
                <option value="3D_FULL">3D_FULL</option>
                <option value="3D_HALF">3D_HALF</option>
                <option value="3D_OOS_PAY">3D_OOS_PAY</option>
                <option value="3D_OOS_FULL">3D_OOS_FULL</option>
                <option value="3D_OOS_HALF">3D_OOS_HALF</option>
                <option value="OOS_PAY">OOS_PAY</option>
            </select>
            <input type="text" name="cardnumber" />
            <input type="text" name="cardexpiredatemonth" />
            <input type="text" name="cardexpiredateyear" />
            <input type="text" name="cardcvv2" />

            <input type="text" name="mode" value="<%=strMode%>" />
            <input type="text" name="apiversion" value="<%=strApiVersion%>" />
            <input type="text" name="terminalprovuserid" value="<%=strTerminalProvUserId%>" />
            <input type="text" name="terminaluserid" value="<%=strTerminalUserId%>" />
            <input type="text" name="terminalmerchantid" value="<%=strTerminalMerchantID%>" />
            <input type="text" name="txntype" value="<%=strType%>" />
            <input type="text" name="txnamount" value="<%=strAmount%>" />
            <input type="text" name="txncurrencycode" value="<%=strCurrencyCode%>" />
            <input type="text" name="txninstallmentcount" value="<%=strInstallmentCount%>" />
            <input type="text" name="customeripaddress" value="<%=strCustomeripaddress%>" />
            <input type="text" name="orderid" value="<%=strOrderID%>" />
            <input type="text" name="terminalid" value="<%=strTerminalID%>" />
            <input type="text" name="successurl" value="<%=strSuccessURL%>" />
            <input type="text" name="errorurl" value="<%=strErrorURL%>" />

            <input type="text" name="secure3dhash" value="<%=HashData%>" />


            <input type="submit" value="Ödemeyi Tamamla" />

            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>

        </div>
    </form>

</body>
</html>
