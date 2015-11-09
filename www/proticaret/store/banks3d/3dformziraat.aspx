<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformziraat.aspx.vb" Inherits="._3dformziraat" %>

<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="Form1">

        <a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
         <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="lnk2">Kapat</a>
        </div>
    </form>

    <%
        
        Dim GUserName As String = Session("GetwayUserName")
        Dim password As String = Session("GetwayPassword")
        Dim PosNo As String = Session("GetwayPosNo")
        Dim clientId As String = Session("GetwayId")

        Dim number As String = Session("CardNumber")
        Dim name As String = Session("CardHolderName")
        Dim year As String = Session("ExpYear")
        Dim month As String = Session("ExpMonth")
        Dim cvv2 As String = Session("Cvv2")

        Dim amount As String = Format(Session("amount"), "0.00").Replace(",", "")

        Dim posturl As String = Session("Bank3dGetWayAddress")

        'Banka tarafından mağazaya verilen iş yeri numarası

        Dim oid As String = Session("NextOrderId").ToString.Substring(0, 6)

        Dim installementCount As String = Session("Taksit")

        Dim okUrl As String = BaseUrl & "/store/banks3d/3dodemekuveyt.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
        Dim failUrl As String = BaseUrl & "/store/banks3d/3dodemekuveyt.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)

        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            okUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemekuveyt.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
            failUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemekuveyt.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)    
        End If

        
        Dim webRequest__1 As WebRequest = WebRequest.Create("https://yonetim.ziraatbank.com.tr/IPOSMerchant_UserInterface/save_transaction.aspx")
        webRequest__1.ContentType = "application/x-www-form-urlencoded"
        webRequest__1.Method = "POST"

        'POST edilecek parametreler
        Dim parameters As String = "AmountMerchant=100&AmountCode=949&MerchantID=" + clientId + "&UserName=" + HttpUtility.UrlEncode(GUserName) + "&Password=" + HttpUtility.UrlEncode(password) + "&MerchantGUID=df76cda1-d47e-4464-bf7f-ba4fff1762cc&AmountBank=100&InstalmentCount=" + installementCount

        Dim bytes As Byte() = Encoding.ASCII.GetBytes(parameters)

        'Request Hazırlama
        Dim wbStream As Stream = Nothing
        Try
            webRequest__1.ContentLength = bytes.Length
            wbStream = webRequest__1.GetRequestStream()
            wbStream.Write(bytes, 0, bytes.Length)
        Finally
            If wbStream IsNot Nothing Then
                wbStream.Close()
            End If
        End Try

        'Request gönderip Cevap alma
        Dim webResponse As WebResponse = webRequest__1.GetResponse()
        If webResponse IsNot Nothing Then
            Dim sr As New StreamReader(webResponse.GetResponseStream())
            Dim responseString As String = sr.ReadToEnd().Trim()
            Response.Write(responseString)
        End If
       
        ' Response.Redirect("https://yonetim-test.ziraatbank.com.tr/IposMerchant_UserInterface/SendTransaction.aspx" + "?" + "TransactionID" + "=" + responseString + "&" + "IsSecure" + "=1")
        
    %>
</body>
</html>
