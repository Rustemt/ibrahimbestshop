<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformgenpa.aspx.vb" Inherits="._3dformgenpa" %>

<%@ Import Namespace="genpa.vpos" %>

<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="System.Text" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Xml" %>

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
        Dim taksit As String = IIf(Session("Taksit") = 0, 1, Session("Taksit"))
     
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
        Dim strSuccessURL As String = BaseUrl & "/store/banks3d/3dodemeGenpa.aspx"
        Dim strErrorURL As String = BaseUrl & "/store/banks3d/3dodemeGenpa.aspx"
     
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            strSuccessURL = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeGenpa.aspx"
            strErrorURL = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeGenpa.aspx"
        End If
        
        Dim SecurityData As String = UCase(vpos2.GetSHA1(strProvisionPassword + _strTerminalID))
        Dim HashData As String = UCase(vpos2.GetSHA1(strTerminalID + strOrderID + strAmount + strSuccessURL + strErrorURL + strType + taksit + strStoreKey + SecurityData))
 
        Dim posturl As String = Session("Bank3dGetWayAddress")
        Dim dte As DateTime
        dte = Now
        Dim siparisno As String = Right("0" & Year(dte), 1) & Right("0" & Month(dte), 1) & Right("0" & Day(dte), 1) & Right("0" & Hour(dte), 1) & Right("0" & Minute(dte), 1) & Right("0" & Second(dte), 1)
        siparisno = Right("000000" & siparisno, 6)

        Session("siparisno") = siparisno
        
        Dim param As String = "cardType=" & IIf(Session("CardNumber").Trim.StartsWith(5), "MasterCard", "Visa") & ",serviceId=" & Session("Key3D") & ",token=" & _
        Session("GetwayPassword") & "-" & Session("GetwayUserName") & ",accountId=" & Session("Xcip").ToString() & ",storeId=" & Session("GetwayId").ToString() & ",type=2," & _
        "cardNumber=" & Session("CardNumber").ToString() & "," & "cvv2=" & Session("CvcNumber").ToString() & "," & "amount=" & Format(Session("Tutar"), "0.00").Replace(",", ".") & _
        ",currencyCode=try,orderId=" & siparisno & ",installment=" & taksit & ",expiresMonth=" & Session("ExpMonth").ToString() & _
        "," & "expiresYear=" & Session("ExpYear").ToString() & ",ip=" & HttpContext.Current.Request.UserHostAddress & ",cardHolderName=" & Session("CardHolderName").ToString() & _
        ",bankName=" & Session("PosNo").ToString() & "," & "prePostOkUrl=" & strSuccessURL & "," & _
        "prePostFailUrl=" & strErrorURL & "," & "prePostAutoSubmit=1"



        Dim servis As New Kartaca_Pos_ServiceService()
        Dim r As Kartaca_Pos_Service_Response = servis.sendAsCsv(param, "", "")
        Response.Write(r.message)

    
    %>

    <form id="Form1">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
        </div>

        <div style="visibility: hidden;">

            <input type="text" name="cardname" />
            <input type="text" name="cardnumber" />
            <input type="text" name="cardexpiredatemonth" />
            <input type="text" name="cardexpiredateyear" />
            <input type="text" name="cardcvv2" />

            <input type="text" name="mode" value="<%=strMode%>" />
            <%--session 3d aktif--%>

            <select name="cardType">
                <option value="1">Visa</option>
                <option value="2">MasterCard</option>
            </select>

            <input type="submit" value="Ödemeyi Tamamla" />

            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>

        </div>
    </form>

</body>
</html>
