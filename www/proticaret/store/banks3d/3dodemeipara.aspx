<%@ page language="VB" AutoEventWireup="true" ValidateRequest="false" %>

<%@ Import Namespace="System.Web.UI" %>

<%@ Import Namespace="System.Web.UI.WebControls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>Ödeme Sayfası</title>
    
     <script type="text/javascript"> 
     
     var eci;
     var cavv; 
     var md;
      var xid;
    
 function HideFrameOk()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=md;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=xid;
 window.parent.ConfirmPayment(); 

 }
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value=0;
 window.parent.CancelPayment(); 
 }
 
   function HideFrameReturn()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.location.href="/store/orderstep3d.aspx"
 }
 </script>
</head>
<body>
<h1>iPara Ödeme Sayfası</h1>
    <%
      
        If Not Me.FindControl("head1") Is Nothing Then
            Dim head As Control = Me.FindControl("head1")
            Dim l As New Literal
            l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
            head.Controls.Add(l)
        End If
        
        Dim result As String = ""
       
        Dim ToSendMail As String = _portalsettings.Email
        If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
            ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
        End If
        
        If Request.QueryString("return") = "true" Then
            Session("RandomOrderId") = ""
            Dim sb As New StringBuilder()
            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("xid='0';")
            sb.AppendLine("md='0';")
            sb.AppendLine("HideFrameReturn();")
            sb.AppendLine("</script>")
            Response.Write(sb.ToString())
            
        ElseIf Request.Form.Get("iparaResponse") <> "" Then
            result = Request.Form.Get("iparaResponse")
             
            
            If result.Contains("&quot;result&quot;:1") And result.Contains("&quot;statusCode&quot;:1") Then
                Dim sb As New StringBuilder()
                
                sb.AppendLine("<script type=""text/javascript"">")
                sb.AppendLine("xid='1';")
                sb.AppendLine("md='1';")
                sb.AppendLine("HideFrameOk();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
            ElseIf result.Contains("&quot;result&quot;:1") And result.Contains("&quot;statusCode&quot;:2") Then
                Dim sb As New StringBuilder()
                
                sb.AppendLine("<script type=""text/javascript"">")
                sb.AppendLine("xid='2';")
                sb.AppendLine("md='1';")
                sb.AppendLine("HideFrameOk();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
            Else
                Session("RandomOrderId") = ""
                Response.Write("<div class='Global_HataMesaji'> <h5>Ödeme İşlemi Başarısız</h5><br/>")
                               
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
                    py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & result)
                    
                    If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(ipara)", "Dönen Cevap : " & result & "<br/>UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.BankaToplamTutar & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName)
                    End If
                Catch
                    ' log error
                    Dim py As New PaymentsDB
                    py.AddPayment(tmpOrder, UserId, "<br/> Banka 3D mesajı :" & result)
                    
                    If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                        mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(ipara)", "Dönen Cevap :" & result)
                    End If
                End Try
            
                
                Dim sb As New StringBuilder()
                sb.AppendLine("<script type=""text/javascript"">")
                sb.AppendLine("HideFrameErr();")
                sb.AppendLine("</script>")
                Response.Write(sb.ToString())
            End If
        Else
            Session("RandomOrderId") = ""
            Dim sb As New StringBuilder()
            sb.AppendLine("<script type=""text/javascript"">")
            sb.AppendLine("HideFrameErr();")
            sb.AppendLine("</script>")
            Response.Write(sb.ToString())
            Dim _portalSettings As PortalSettings
            _portalSettings = CType(HttpContext.Current.Items("PortalSettings"), PortalSettings)

            Dim tmpOrder As ASPNetPortal.TempOrder
            Dim UserId As String = ""
            Dim UserName As String = ""
            Dim mail As New webmail
                 
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
                If Session("TempOrder") Is Nothing Then
                    tmpOrder = New ASPNetPortal.TempOrder
                Else
                    tmpOrder = Session("TempOrder")
                End If
                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(ipara)", " Bağlantı kurulamıyor, <br/> UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.BankaToplamTutar & " TL, Lütfen bilgileri kontrol ediniz<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName)
                End If
            Catch
                If Not ConfigurationManager.AppSettings("SendFailedPayments") = "False" Then
                    mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(ipara)", " Bağlantı kurulamıyor, Lütfen Bilgilerini kontrol ediniz ")
                End If
            End Try
            
            Response.Write("<div class='Global_HataMesaji'> <h5>Sistem Hatası</h5><br/>")
            Response.Write("Bağlantı kurulamıyor <br/>")
            
            
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
