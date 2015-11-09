<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformkuveyt.aspx.vb" Inherits="._3dformkuveyt" %>

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

        
        Dim sha As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
        Dim hashbytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(password)
        Dim inputbytes As Byte() = sha.ComputeHash(hashbytes)
        Dim hashstr As [String] = Convert.ToBase64String(inputbytes)

        Dim has_string As String = PosNo & oid & amount & okUrl & failUrl & GUserName & hashstr

        Dim sha2 As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
        Dim hashbytes2 As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(has_string)
        Dim inputbytes2 As Byte() = sha2.ComputeHash(hashbytes2)
        Dim hash As [String] = Convert.ToBase64String(inputbytes2)
        
        Dim uri As New Uri("http://www.proticaret.org/whatismyip.aspx")

        Dim req As System.Net.HttpWebRequest = System.Net.HttpWebRequest.Create(uri)
        req.Method = System.Net.WebRequestMethods.Http.Get
        Dim res As System.Net.HttpWebResponse = req.GetResponse()
        Dim reader As New System.IO.StreamReader(res.GetResponseStream())
        Dim ip As String = reader.ReadToEnd()
        res.Close() 
        
        Dim DataToSend As String = "<?xml version=""1.0"" encoding=""ISO-8859-1""?>" & _
                                   "<KuveytTurkVPosMessage>" & _
                                   "<APIVersion>1.0.0</APIVersion>" & _
                                   "<OkUrl>" & okUrl & "</OkUrl>" & _
                                   "<FailUrl>" & failUrl & "</FailUrl>" & _
                                   "<HashData>" & hash & "</HashData>" & _
                                   "<MerchantId>" & PosNo & "</MerchantId>" & _
                                   "<CustomerId>" & clientId & "</CustomerId>" & _
                                   "<UserName>" & GUserName & "</UserName>" & _
                                   "<CustomerIPAddress>" & ip & "</CustomerIPAddress>" & _
                                   "<CardNumber>" & number.Trim & "</CardNumber>" & _
                                   "<CardExpireDateYear>" & year & "</CardExpireDateYear>" & _
                                   "<CardExpireDateMonth>" & month & "</CardExpireDateMonth>" & _
                                   "<CardCVV2>" & cvv2.Trim & "</CardCVV2>" & _
                                   "<CardHolderName>" & name.Trim & "</CardHolderName>" & _
                                   "<CardType>" & IIf(number.Trim.StartsWith(5), "1", "0") & "</CardType>" & _
                                   "<BatchID>0</BatchID>" & _
                                   "<TransactionType>Sale</TransactionType>" & _
                                   "<InstallmentCount>" & installementCount & "</InstallmentCount>" & _
                                   "<Amount>" & amount & "</Amount>" & _
                                   "<DisplayAmount>" & amount & "</DisplayAmount>" & _
                                   "<CurrencyCode>0949</CurrencyCode>" & _
                                   "<MerchantOrderId>" & oid & "</MerchantOrderId>" & _
                                   "<TransactionSecurity>3</TransactionSecurity>" & _
                                   "</KuveytTurkVPosMessage>"
 
        
       
        Dim proxyValue As String = ""
        'Eğer proxy değeri girilmemiş ise proxy=null değilse proxy=gönderilen proxy
        Dim buffer As Byte() = Encoding.UTF8.GetBytes(DataToSend)
        ' Tried ASCII...same result
        Dim WebReq As HttpWebRequest = DirectCast(WebRequest.Create("https://boa.kuveytturk.com.tr/sanalposservice"), HttpWebRequest)
        ' Tried WebRequest ... same result
        WebReq.Timeout = 5 * 60 * 1000

        'WebReq.Proxy = new WebProxy("proxyws03", 8080);

        WebReq.Method = "POST"

        WebReq.ContentType = "text/xml"
        ' tried "text/xml"... same result
        WebReq.ContentLength = buffer.Length


        WebReq.CookieContainer = New CookieContainer()
        Dim ReqStream As Stream = WebReq.GetRequestStream()
        ReqStream.Write(buffer, 0, buffer.Length)

        ReqStream.Close()

        Dim WebRes As WebResponse = WebReq.GetResponse()
        Dim ResStream As Stream = WebRes.GetResponseStream()
        Dim ResReader As New StreamReader(ResStream)
        Dim responseString As String = ResReader.ReadToEnd()
        Response.Write(responseString)
      
        
    %>
</body>
</html>
