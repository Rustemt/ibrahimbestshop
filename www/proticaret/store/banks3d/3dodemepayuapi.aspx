<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dodemepayuapi.aspx.vb" Inherits="._3dodemepayuapi" %>

<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Ödeme Sayfası</title>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/jquery-1.7.2.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/json2.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/openpayu-2.0.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/plugin-payment-2.0.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/plugin-installment-2.0.js"></script>


    <!--  Style class for preloader -->
    <link rel="stylesheet" type="text/css" href="https://secure.payu.com.tr/openpayu/v2/client/openpayu-builder-2.0.css" />


    <script type="text/javascript">

        var eci;
        var cavv;
        var md;
        var xid;

        function HideFrameOk() {
            window.parent.$find('ModalPopupExtender1').hide();
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = eci;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = cavv;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = md;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = xid;
            window.parent.ConfirmPayment();
        }
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = 0;
            window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 0;
            window.parent.CancelPayment();
        }
    </script>
</head>
<body>
    <h1>3D Ödeme Sayfası</h1>
    <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
        PayU Sistemine Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
        <br />
        <asp:Label ID="lbl" runat="server" />
        <br />
        Lütfen Bekleyiniz... 
    </div>
    <%
        
        
        Dim ORDERSTATUS As String = Request.Form("ORDERSTATUS")
        Dim oid_ipn As String = Request.Form("REFNOEXT")
        
        Dim status As String = Request.Form("STATUS")
        Dim sonuckodu As String = Request.Form("RETURN_CODE")
        Dim errormsg As String = Request.Form("RETURN_MESSAGE")
        If errormsg = "" Then
            errormsg = "Lütfen Bilgilerinizi Kontrol Edip Tekrar Deneyiniz."
        End If
        Dim oid As String = Request.QueryString("oid")
         
        Dim ToSendMail As String = _portalsettings.Email
        If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
            ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
        End If
        Session("SonucAciklamasi") = errormsg
         
        If status = "SUCCESS" Then
            
            Session("SonucKodu") = status
            Response.Write("TEBRİKLER ! </br> ")
            Response.Write("Ödemeniz tamamlandı. </br> ")
            Response.Write("Sipariş No : " & oid & " ")
                
            Dim sb As New StringBuilder()

            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
            sb.AppendLine(" window.parent.ConfirmPayment(); ")

            sb.AppendLine("</script>")
            Response.Write(sb.ToString())

        Else
            If status = "" Then
                Session("SonucKodu") = "Bilgilerinizin Doğruluğunu Kontrol Ediniz."
            Else
                Session("SonucKodu") = status
            End If
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
            Catch
                ' log error
                Dim py As New PaymentsDB
                py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & errormsg)

                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & sonuckodu & "<br/>Banka 3D mesajı :" & errormsg)
                End If
            End Try


            Dim sb As New StringBuilder()

            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("  window.parent.$find('ModalPopupExtender1').hide();")
            sb.AppendLine(" window.parent.CancelPayment(); ")

            sb.AppendLine("</script>")
            Response.Write(sb.ToString())
   
        End If
        
        'End If
        
    %>

     <div style=" text-align:center"><a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="LinkButton1" >Kapat Ok</a> </div>  
</body>
</html>
