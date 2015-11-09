<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dodemepaymec.aspx.vb" Inherits="._3dodemepaymec" %>
<%@ Import   Namespace="ASPNetPortal" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ödeme Sayfası</title>
    <script type="text/javascript">

        var eci;
        var cavv;
        var md;
        var xid;
        var oid;

        function HideFrameOk() {

            window.parent.$find('ModalPopupExtender1').hide();
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = eci;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = cavv;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = md;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = xid;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_oid").value = oid;
            window.parent.ConfirmPayment();

        }
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_oid").value = 0;
            window.parent.CancelPayment();
        }
    </script>
</head>
<body>
    <h1>3D Ödeme Sayfası</h1>
    <%

        ' Pop-up nasıl açılıp kapanacağını elvan biliyi :)) onları yazmadim
      
        Dim anahtar As String = Session("Key3D")  ' 3d Secure Key olacak güvenlik anahtarı
        Dim siteno As String = Session("GetwayUserName")    ' MerchantId kullandik. 
        Dim banka As String = Session("GetwayId")    ' İşlem yapılan banka numarası
        Dim siparisno As String = Request.Form("SiparisNo")    ' İşlem sipariş numarası
        Dim tutar As String = Request.Form("Tutar") ' Ödeme tutarı
        Dim taksit As String = Request.Form("Taksit")    ' Taksit adeti ( Tek çekim ise sadece 0 yazılır )
        Dim sonuckodu As String = Request.Form("SonucKodu")    ' Ödeme Sonuç Kodu
        Dim errormsg As String = Request.Form("ErrorMsg")    ' Hata Mesajı
        Dim PaymecSecureKeyBack As String = Request.Form("PaymecSecureKey")    ' SHA1 HASH imzası
        Session("SonucKodu") = errormsg
        Session("SonucAciklamasi") = errormsg

        ' Hash leme yapacağız.
        Dim PaymecSecureKey As String = vpos2.EncryptSHA1(siteno + banka + siparisno + tutar + taksit)
 
        'Dim PaymecSecureKey As String = b64_sha1(anahtar & siteno & banka & siparisno & tutar & taksit)
        
        Dim ToSendMail As String = _portalsettings.Email
        If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
            ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
        End If
        
        'If PaymecSecureKeyBack = PaymecSecureKey Then

        If sonuckodu = "1" Then
            Session("SonucKodu") = sonuckodu
            Response.Write("TEBRİKLER ! </br> ")
            Response.Write("Ödemeniz tamamlandı. </br> ")
            Response.Write("Sipariş No : " & siparisno & " ")
                
            Dim sb As New StringBuilder()

            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
            sb.AppendLine(" window.parent.ConfirmPayment(); ")

            sb.AppendLine("</script>")
            Response.Write(sb.ToString())

        Else
            Session("SonucKodu") = errormsg
            Response.Write("HATA ! </br> ")
            Response.Write("Ödeme tamamlanamadı. </br> ")
            Response.Write("Hata Mesajı : " & errormsg & " ")
                
            Dim OkStatus As String = "1234"
            If Not ConfigurationManager.AppSettings("Pay3dOkStatus") Is Nothing Then
                OkStatus = ConfigurationManager.AppSettings("Pay3dOkStatus")
            End If

            Dim _portalSettings As PortalSettings
            _portalSettings = CType(HttpContext.Current.Items("PortalSettings"), PortalSettings)

            Dim tmpOrder As ASPNetPortal.TempOrder
            Dim UserId As String = ""
            Dim UserName As String = ""
            Dim mail As New webmail

            If Session("TempOrder") Is Nothing Then
                tmpOrder = New ASPNetPortal.TempOrder
            Else
                tmpOrder = Session("TempOrder")
            End If
            Try


                If HttpContext.Current.User.Identity.IsAuthenticated() Then
                    UserId = Context.User.Identity.Name.Split("|")(0)
                    If IsNumeric(UserId) Then
                        Dim ua As New ASPNetPortal.UsersDB
                        Dim dr As SqlDataReader
                        dr = ua.GetUserIndirim(UserId)
                        dr.Read()
                        UserName = ChkNullString(dr(3))
                        dr.Close()
                    End If
                End If

                ' log error
                Dim py As New PaymentsDB
                py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & errormsg)

                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & sonuckodu & "<br/>Banka:" & tmpOrder.BankInfo.BankName & "<br/>Taksit:" & tmpOrder.BankInfo.Taksit & "UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/> Banka 3D mesajı :" & errormsg)
                End If
                

                Dim sb2 As New StringBuilder()

                sb2.AppendLine("<script type=""text/javascript"">")
                sb2.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
                sb2.AppendLine(" window.parent.CancelPayment(); ")

                sb2.AppendLine("</script>")
                Response.Write(sb2.ToString())
                
            Catch
                ' log error
                Dim py As New PaymentsDB
                py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & errormsg)

                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & sonuckodu & "<br/>Banka 3D mesajı :" & errormsg)
                End If
                

                Dim sb2 As New StringBuilder()

                sb2.AppendLine("<script type=""text/javascript"">")
                sb2.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
                sb2.AppendLine(" window.parent.CancelPayment(); ")

                sb2.AppendLine("</script>")
                Response.Write(sb2.ToString())
                
            End Try


            Dim sb As New StringBuilder()

            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
            sb.AppendLine(" window.parent.CancelPayment(); ")

            sb.AppendLine("</script>")
            Response.Write(sb.ToString())

        End If   
        
    %>

    <div style="text-align: center"><a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a> </div>

</body>
</html>
