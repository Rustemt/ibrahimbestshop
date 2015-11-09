<%@ page language="VB" AutoEventWireup="true" %>
<%@ Import Namespace="System.Collections" %>

<%@ Import Namespace="System.Web.UI.WebControls" %>

<%@ Import Namespace="System.Web.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>Ödeme Sayfası</title>
    
     <script type="text/javascript"> 
     
     //var eci;
     //var cavv; 
     var md;
     var bankdata;
      //var xid;
    //var mdstatus;
    //var mdErrorMsg;
       
    //var maskedpan;
    
 function HideFrameOk()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
  
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=md;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_bankdata").value=bankdata;
  window.parent.ConfirmPayment(); 
 //window.parent.document.getElementById("OrderStep3d1_eci").value=eci;
 // window.parent.document.getElementById("OrderStep3d1_cavv").value=cavv;
 //window.parent.document.getElementById("OrderStep3d1_xid").value=xid;
 
//  var panel = window.parent.document.getElementById('OrderStep3d1_Panel1');
//  var frm = window.parent.document.getElementById("frame3d");
//  var btnOk = window.parent.document.getElementById("OrderStep3d1_btnOk");
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
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_bankdata").value=0;
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
        
        'Dim mdstatus As String
       
        Dim ToSendMail As String = _portalsettings.Email
        If ConfigurationManager.AppSettings("SmtpMailOrders") <> "" Then
            ToSendMail = ConfigurationManager.AppSettings("SmtpMailOrders")
        End If
        
        If Request.Form.Get("MerchantPacket") <> "" Then
            'dönen data
            Dim MerchantPacket As String = Request.Form.Get("MerchantPacket")
            Dim BankPacket As String = Request.Form.Get("BankPacket")
            Dim sign As String = Request.Form.Get("sign")
            
            'işlem sonucunu doğrula
            Dim data As New StringBuilder
            data.Append("xmldata=<?xml version=""1.0"" encoding=""ISO-8859-9""?>")
            data.Append("<posnetRequest>")
            data.Append("<mid>" & Session("GetwayUserName") & "</mid>")
            data.Append("<tid>" & Session("GetwayPassword") & "</tid>")
            data.Append("<oosResolveMerchantData>")
            data.Append("<bankData>" & BankPacket & "</bankData>")
            data.Append("<merchantData>" & MerchantPacket & "</merchantData>")
            data.Append("<sign>" & sign & "</sign>")
            data.Append("</oosResolveMerchantData>")
            data.Append("</posnetRequest>")
            
            Dim encoding1 As New ASCIIEncoding
            Dim buffer1 As Byte() = encoding1.GetBytes(data.ToString)

            Dim request1 As System.Net.HttpWebRequest = CType(System.Net.WebRequest.Create(Session("BankGetwayAddress")), System.Net.HttpWebRequest)
            request1.Method = "POST"
            request1.ContentType = "application/x-www-form-urlencoded"
            request1.ContentLength = buffer1.Length
            request1.KeepAlive = True
            Dim stream1 As IO.Stream = request1.GetRequestStream
            stream1.Write(buffer1, 0, buffer1.Length)
            stream1.Close()

            Dim reader3 As New IO.StreamReader(request1.GetResponse.GetResponseStream)
            Dim resx As String = reader3.ReadToEnd
            reader3.Close()
            
            Dim OkStatus As String = "1234"
            If Not ConfigurationManager.AppSettings("Pay3dOkStatus") Is Nothing Then
                OkStatus = ConfigurationManager.AppSettings("Pay3dOkStatus")
            End If
             
            Dim mdstatus As String = ""
            Dim mderror As String = ""
            Dim mail As New webmail
            If (Not resx Is Nothing) Then
                Dim document1 As New XmlDocument
                document1.InnerXml = resx
                Dim node1 As XmlNode = document1.SelectSingleNode("/posnetResponse")

                If (Not node1.Item("approved") Is Nothing) Then
                   
                    mdstatus = node1.Item("oosResolveMerchantDataResponse").Item("mdStatus").InnerText
                    mderror = node1.Item("oosResolveMerchantDataResponse").Item("mdErrorMessage").InnerText
                    If node1.Item("approved").InnerText = "1" And OkStatus.Contains(mdstatus) Then
                        Dim sb As New StringBuilder()
                        'sb.AppendLine("<script type=""text/javascript"">")
                        'sb.AppendLine("md='" & mdstatus & "';")
                        'sb.AppendLine("bankdata='" & BankPacket & "';")
                        'sb.AppendLine("HideFrameOk();")
                        'sb.AppendLine("</script>")
                        Response.Write(sb.ToString())
                    Else
                        
                        Response.Write("<div class='Global_HataMesaji'> <h5>3D Doğrulama İşlemi Başarısız</h5><br/>")
                        Response.Write("Hata Kodu:" & mdstatus & "<br/>")
                        Response.Write("Hata Mesajı:" & mderror & "<br/></div>")
                
                        Dim _portalSettings As PortalSettings
                        _portalSettings = CType(HttpContext.Current.Items("PortalSettings"), PortalSettings)

                        Dim tmpOrder As ASPNetPortal.TempOrder
                        Dim UserId As String = ""
                        Dim UserName As String = ""
                        
                         
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
                            mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & mdstatus & "<br/>Banka:" & tmpOrder.BankInfo.BankName & "<br/>Taksit:" & tmpOrder.BankInfo.Taksit & "UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName & "<br/> Banka 3D XML mesajı :" & resx)
                        Catch
                            mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & mdstatus & "<br/>Banka 3D XML Mesajı :" & resx)
                        End Try
                
                        Dim sb As New StringBuilder()
                        'sb.AppendLine("<script type=""text/javascript"">")
                        'sb.AppendLine("HideFrameErr();")
                        'sb.AppendLine("</script>")
                        Response.Write(sb.ToString())
                        
                    End If
                Else
                    mail.SendMail(_portalsettings.Email, ToSendMail, "Ödeme Onayı Alınamadı(3D)", "Kabul Edilecek işlem sonuçları(3D): " & OkStatus & "<br/>İşlem Sonucu : " & mdstatus & "<br/>Banka 3D XML Mesajı :" & resx)
                End If

            End If
            
         
            
           
        Else
            'Bağlantı Hatası
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
                mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(Bağlantı hatası 3D)", "Banka:" & tmpOrder.BankInfo.BankName & "<br/>UserId:" & UserId & "<br/> UserName:" & UserName & "Toplam:" & tmpOrder.Pricess.KargoDahilCreditCardToplamTL & " TL<br/>Hata:Sistem Hatası<br/>Hata Açıklaması:Banka ile bağlanı kurulamıyor(3D), Lütfen banka bilgilerini kontrol ediniz<br/>Teslimat Adı: " & tmpOrder.ShippingInfo.RecipientName & "<br/>Teslimat Tel: " & tmpOrder.ShippingInfo.PhoneNo & "<br/>Teslmat Gsm: " & tmpOrder.ShippingInfo.MobilePhone & "<br/>Fatura Adı:" & tmpOrder.BillingInfo.CompanyName)
            Catch
                mail.SendMail(_portalSettings.Email, ToSendMail, "Ödeme Alınamadı(Bağlantı hatası 3D)", " Banka ile bağlanı kurulamıyor(3D), Lütfen banka bilgilerini kontrol ediniz ")
            End Try
           
            
            Response.Write("<div class='Global_HataMesaji'> <h5>Sistem Hatası</h5><br/>")
            Response.Write("Banka ile bağlantı kurulamıyor")
            
            
        End If
        
        
  %>         
     <%
            Dim e As IEnumerator = Request.Form.GetEnumerator()
            While e.MoveNext
                Dim xkey As String = e.Current
                Dim xval As String = Request.Form.Get(xkey)
             Response.Write(xkey & " : " + xval + "<br/>")
            End While
          
         %>
         
      <div style=" text-align:center"><a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> </div>          
   
</body>
</html>
