<%@ page language="VB" EnableEventValidation="false" EnableViewStateMac="false" ValidateRequest="false" ViewStateEncryptionMode="Never" %>
<%@ Import Namespace="System.Collections" %>

<%@ Import Namespace="System.Web.UI.WebControls" %>

<%@ Import Namespace="System.Web.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>Ödeme Sayfası</title>
    
     <script type="text/javascript"> 
     
     var eci;
     var cavv; 
     var md;
      var xid;
    //var mdstatus;
    //var mdErrorMsg;
       
    //var maskedpan;
    
 function HideFrameOk()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
  window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value=eci;
  window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value=cavv;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=md;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=xid;
  window.parent.ConfirmPayment(); 
//  var panel = window.parent.document.getElementById('OrderStep3d1_Panel1');
//  var frm = window.parent.document.getElementById("frame3d");
//  var btnOk = window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_btnOk");
// frm.width = 0;
// frm.height = 0;
// panel.style.visibility = 'hidden';
// panel.style.width = '0px';
// panel.style.height = '0px'; 
// btnOk.click(); 
 //window.parent.ConfirmPayment();
 
//window.parent.document.write(document.getElementById('pan').value);
 }
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=0;
 window.parent.CancelPayment();
//  var panel = window.parent.document.getElementById('OrderStep3d1_Panel1'); 
 
//*  var btnClose = window.parent.document.getElementById("OrderStep3d1_btnClose");
// 
//  window.parent.document.getElementById("OrderStep3d1_mdstatus").value = mdstatus;  
//  window.parent.document.getElementById("OrderStep3d1_mdErrorMsg").value=mdErrorMsg;
//  window.parent.document.getElementById("OrderStep3d1_xid").value=xid;
//  window.parent.document.getElementById("OrderStep3d1_eci").value=eci;
//  window.parent.document.getElementById("OrderStep3d1_cavv").value=cavv;
//  window.parent.document.getElementById("OrderStep3d1_md").value=md;
//* window.parent.document.getElementById("OrderStep3d1_maskedpan").value=maskedpan;
  
  
  //   hmdstatus.value ;
//    hmdErrorMsg.value ;
//    hxid.value ;
//    heci.value ;
//    hcavv.value ;
//    hmd.value ;
//    hmaskedpan.value ;
// 
// frm.width = 0;
// frm.height = 0;
// panel.style.visibility = 'hidden';
// panel.style.width = '0px';
// panel.style.height = '0px'; 
// btnClose.click(); 
 
 }
 </script>
</head>
<body>
<h1>3D Ödeme Sayfası</h1>
    <%
      
        If Not Me.FindControl("head1") Is Nothing Then
            Dim head As Control = Me.FindControl("head1")
            Dim l As New Literal
            l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
            head.Controls.Add(l)
        End If
        
        Dim mdstatus As String
       
        Dim ToSendMail As String = _portalsettings.Email
        If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
            ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
        End If
        
        Dim res As String = ""
        Dim e As IEnumerator = Request.Form.GetEnumerator()
        While e.MoveNext
            Dim xkey As String = e.Current
            Dim xval As String = Request.Form.Get(xkey)
            res &= xkey & " : " & xval & "<br/>"
        End While
        
        If Request.Form.Get("Status") <> "" Then
            mdstatus = Request.Form.Get("Status")
            
            'Y = Doğrulama başarılı
            'N = Doğrulama başarısız, işlem reddedildi
            'U = Doğrulama tamamlanamadı
            'A = Doğrulama tamamlanamadı ancak doğrulama denemesini kanıtlayan CAVV üretildi. Çekim yapılabilir

            Dim OkStatus As String = "Y"
            If Not ConfigurationManager.AppSettings("Pay3dOkStatusBankAsya") Is Nothing Then
                OkStatus = ConfigurationManager.AppSettings("Pay3dOkStatusBankAsya")
            End If
            
            If OkStatus.Contains(mdstatus) Then
                Dim sb As New StringBuilder()
                
                sb.AppendLine("<script type=""text/javascript"">")
                'sb.AppendLine("mdstatus='" & Request.Form.Get("mdStatus") & "';")
                'sb.AppendLine("mdErrorMsg='" & Request.Form.Get("mdErrorMsg") & "';")
                sb.AppendLine("xid='" & Request.Form.Get("XID").Split(",")(0) & "';")
                sb.AppendLine("eci='" & Request.Form.Get("ECI") & "';")
                sb.AppendLine("cavv='" & Request.Form.Get("CAVV") & "';")
                sb.AppendLine("md='" & 1 & "';")
                sb.AppendLine("HideFrameOk();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
                
            Else
               
                Response.Write("<div class='Global_HataMesaji'> <h5>3D Doğrulama İşlemi Başarısız</h5><br/>")
                Response.Write("Hata Kodu:" & Request.Form.Get("Status") & "<br/>")
                
                
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
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & Request.Form.Get("Status") & "<br/>Banka:" & tmpOrder.BankInfo.BankName & "<br/>Taksit:" & tmpOrder.BankInfo.Taksit & "UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/> Banka 3D mesajı :" & res)
                    End If
                Catch
                    ' log error
                    Dim py As New PaymentsDB
                    py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                    
                    If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & Request.Form.Get("Status") & "<br/>Banka 3D Mesajı :" & res)
                    End If
                End Try
                 
                Dim sb As New StringBuilder()
                sb.AppendLine("<script type=""text/javascript"">")
                sb.AppendLine("HideFrameErr();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
            End If
        ElseIf Request.Form.Get("pan") <> "" Then
            
            Response.Write("<div class='Global_HataMesaji'> <h5>3D Doğrulama İşlemi Başarısız</h5><br/>")
            Response.Write("Hata Kodu:" & Request.Form.Get("Status") & "<br/>")
                
                
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
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kart 3d sistemine kayıtlı değil.<br/>Banka:" & tmpOrder.BankInfo.BankName & "<br/>Taksit:" & tmpOrder.BankInfo.Taksit & "UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/>Banka 3D mesajı :" & res)
                End If
            Catch
                ' log error
                Dim py As New PaymentsDB
                py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & res)
                 
                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kart 3d sistemine kayıtlı değil.<br/>Banka 3D mesajı : " & res)
                End If
            End Try
                 
            Dim sb As New StringBuilder()
            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("HideFrameErr();")
            sb.AppendLine("</script>")
            Response.Write(sb.ToString())
        Else
            'Dim sb As New StringBuilder()
            'sb.AppendLine("<script type=""text/javascript"">")
            'sb.AppendLine("mdstatus='0';")
            'sb.AppendLine("mdErrorMsg='Bağlantı Hatası';")
            'sb.AppendLine("HideFrameErr();")
            'sb.AppendLine("</script>")
            'Response.Write(sb.ToString())
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
            
            
        End If
        
        
  %>         
<%--     <%
            Dim e As IEnumerator = Request.Form.GetEnumerator()
            While e.MoveNext
                Dim xkey As String = e.Current
                Dim xval As String = Request.Form.Get(xkey)
             Response.Write(xkey & " : " + xval + "<br/>")
            End While
          
         %>--%>
         
      <div style=" text-align:center"><a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> </div>          
   
</body>
</html>
