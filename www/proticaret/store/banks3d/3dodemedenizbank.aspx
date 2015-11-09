<%@ Page Language="VB" AutoEventWireup="true"  EnableEventValidation="false" EnableViewStateMac="false" ValidateRequest="false" %>

<%@ Import Namespace="System.Collections" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>Ödeme Sayfası</title>
     <script type="text/javascript">

         var eci;
         var cavv;
         var md;
         var xid; 

         function HideFrameOk() {
             window.parent.$find('ModalPopupExtender1').hide();


             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 1;
             window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_oid").value = 1;


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
            
            
            Dim ToSendMail As String = _portalsettings.Email
            If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
                ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
            End If
            
            Dim odemeparametreleri As [String]() = New [String]() {"AuthCode", "Response", "HostRefNum", "ProcReturnCode", "TransId", "ErrMsg"}
            Dim e As IEnumerator = Request.Form.GetEnumerator()
            
            While e.MoveNext()
                Dim xkey As [String] = DirectCast(e.Current, [String])
                Dim xval As [String] = Request.Form.Get(xkey)
                Dim ok As Boolean = True
                For i As Integer = 0 To odemeparametreleri.Length - 1
                    If xkey.Equals(odemeparametreleri(i)) Then
                        ok = False
                        Exit For
                    End If
                Next
                If ok Then
                    Response.Write("<tr><td>" + xkey + "</td><td>" + xval + "</td></tr>")
                End If
            End While
             
            Dim hashparams As [String] = Request.Form.[Get]("HASHPARAMS")
            Dim hashparamsval As [String] = Request.Form.[Get]("HASHPARAMSVAL")

            Dim storekey As [String] = Session("Key3D")
            Dim paramsval As [String] = ""
            Dim index1 As Integer = 0, index2 As Integer = 0
            ' hash hesaplamada kullanılacak değerler ayrıştırılıp değerleri birleştiriliyor.
            Dim val As [String] = ""
            Do
                index2 = hashparams.IndexOf(":", index1)
                If index2 < 0 Then
                    ' son parametere
                    val = Request.Form.[Get](hashparams.Substring(index1))
                    index2 = hashparams.Length
                Else
                    val = Request.Form.[Get](hashparams.Substring(index1, index2 - index1))
                End If

                paramsval += val
                index1 = index2 + 1
            Loop While index1 < hashparams.Length
            
            
            Dim hashval As [String] = paramsval + storekey
            'elde edilecek hash değeri için paramsval e store key ekleniyor. (işyeri anahtarı)
            Dim hashparam As [String] = Request.Form.[Get]("HASH")

            Dim sha As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
            Dim hashbytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(hashval)
            Dim inputbytes As Byte() = sha.ComputeHash(hashbytes)

            Dim hash As [String] = Convert.ToBase64String(inputbytes)
            'Güvenlik ve kontrol amaçlı oluşturulan hash
            If Not paramsval.Equals(hashparamsval) OrElse Not hash.Equals(hashparam) Then
                'oluşturulan hash ile gelen hash ve hash parametreleri değerleri ile ayrıştırılıp edilen edilen aynı olmalı.
                Response.Write("<h4>Güvenlik Uyarısı. Sayısal İmza Geçerli Değil</h4>")
                Response.Write("<h4>" + paramsval + "  ==  " + hashparamsval + "</h4>")
                Response.Write("<h4>" + hash + "</h4>")
            End If

            For i As Integer = 0 To odemeparametreleri.Length - 1
                Dim paramname As [String] = odemeparametreleri(i)
                Dim paramval As [String] = Request.Form.[Get](paramname)
                Response.Write("<tr><td>" + paramname + "</td><td>" + paramval + "</td></tr>")
            Next
            
            Dim mdstatus As String
            Dim res As String = Request.Form.Get("ErrorMessage")
            
            
            Session("SonucAciklamasi") = res
            Session("SonucKodu") = ""
            
            If Request.Form.Get("ProcReturnCode") <> "" Then
                Session("SonucKodu") = Request.Form.Get("ProcReturnCode")
                mdstatus = Request.Form.Get("ProcReturnCode")
                
               
                If mdstatus = "00" Then
                    Dim sb As New StringBuilder()
                
                    sb.AppendLine("<script type=""text/javascript"">")
                    sb.AppendLine("xid='" & Request.Form.Get("xid") & "';")
                    sb.AppendLine("eci='" & Request.Form.Get("eci") & "';")
                    sb.AppendLine("cavv='" & Request.Form.Get("cavv") & "';")
                    sb.AppendLine("md='" & Request.Form.Get("md") & "';")
                    sb.AppendLine("oid='" & Request.Form.Get("oid") & "';")
                    sb.AppendLine("HideFrameOk();")
                    sb.AppendLine("</script>")
                    Response.Write(sb.ToString())
                
                Else
               
                    Response.Write("<div class='Global_HataMesaji'> <h5>3D Doğrulama İşlemi Başarısız</h5><br/>")
                    Response.Write("Hata Kodu:" & Request.Form.Get("ProcReturnCode") & "<br/>")
                    Response.Write("Hata Mesajı:" & Request.Form.Get("ErrorMessage") & "<br/></div>")
                
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
                        py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                
                        If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                            mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & mdstatus & "<br/>İşlem Sonucu : " & Request.Form.Get("ProcReturnCode") & "<br/>Banka:" & tmpOrder.BankInfo.BankName & "<br/>Taksit:" & tmpOrder.BankInfo.Taksit & "UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/> Banka 3D mesajı :" & res)
                        End If
                    Catch
                        ' log error
                        Dim py As New PaymentsDB
                        py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                
                        If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                            mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & mdstatus & "<br/>İşlem Sonucu : " & Request.Form.Get("ProcReturnCode") & "<br/>Banka 3D mesajı :" & res)
                        End If
                    End Try
            
                
                    Dim sb As New StringBuilder()
                    sb.AppendLine("<script type=""text/javascript"">")
                    sb.AppendLine("HideFrameErr();")
                    sb.AppendLine("</script>")
                    Response.Write(sb.ToString())
                End If
            Else
                
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
                    py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                
                    If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(Bağlantı hatası 3D)", "Banka:" & tmpOrder.BankInfo.BankName & "<br/>UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Hata:Sistem Hatası<br/>Hata Açıklaması:Banka ile bağlanı kurulamıyor(3D), Lütfen banka bilgilerini kontrol ediniz<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/> Banka 3D mesajı :" & res)
                    End If
                Catch
                    ' log error
                    Dim py As New PaymentsDB
                    py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                
                    If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(Bağlantı hatası 3D)", " Banka ile bağlanı kurulamıyor(3D), Lütfen banka bilgilerini kontrol ediniz " & "<br/> Banka 3D mesajı :" & res)
                    End If
                End Try
                 
                Response.Write("<div class='Global_HataMesaji'> <h5>Sistem Hatası</h5><br/>")
                Response.Write("Banka ile bağlantı kurulamıyor")
            
                Dim sb As New StringBuilder()
                sb.AppendLine("<script type=""text/javascript"">")
                sb.AppendLine("HideFrameErr();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
            
            End If
           
    
        %>
     
</body>
</html>
