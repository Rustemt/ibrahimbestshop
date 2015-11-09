<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>
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


 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value = 1;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value = 1;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value = 1;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 1;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_oid").value = 1;


  window.parent.ConfirmPayment(); 

 }
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_eci").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_cavv").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_md").value=0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_xid").value = 0;
 window.parent.document.getElementById(window.parent.window['ParentClientId'] + "_oid").value = 0;
 window.parent.CancelPayment();

 
 }
 </script>
</head>
<body>
<%
    
    'If Not Me.FindControl("head1") Is Nothing Then
    '    Dim head As Control = Me.FindControl("head1")
    '    Dim l As New Literal
    '    l.Text = "<link rel=""Stylesheet"" type=""text/css"" href=""" & getcss() & """ />"
    '    head.Controls.Add(l)
    'End If
    
    'Dim bnkId As String = Session("bankId")
    
    'tmpOrder.BankInfo.Bank3dGetWayAddress = ChkNullString(dr("Bank3dGetWayAddress"))
    'tmpOrder.BankInfo.Key3D = ChkNullString(dr("Key3D"))
    'tmpOrder.BankInfo.GetwayId = ChkNullString(dr("GetwayId"))
    Dim currency As String = "949" ' 949 - test için 792
    Dim amount As String = Format(Session("amount"), "0.00").Replace(",", ".")
    Dim clientId As String = Session("GetwayId")
    Dim posturl As String = Session("Bank3dGetWayAddress")
    'Banka tarafından mağazaya verilen iş yeri numarası
    
    Dim oid As String = Session("NextOrderId")       '     //Sipariş numarası 81.215.218.117        
    'Dim okUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'Dim failUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'ssl olmadan
    Dim okUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    Dim failUrl As String = BaseUrl & "/store/banks3d/3dodeme.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
    'ssl 
    If ConfigurationManager.AppSettings("UseSsl") = "True" Then
        okUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodeme.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
        failUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodeme.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)    
    End If
    
    Dim rnd As String = DateTime.Now.ToString()       ' //Güvenlik ve kontrol amaçlı tarih yada sürekli değişen bir değer


    Dim storekey As String = Session("Key3D")                '  //işyeri anahtarı
    Dim storetype As String = "3d"
    Dim hashstr As String = clientId & oid & amount & okUrl & failUrl & rnd & storekey
    Dim sha As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
    Dim hashbytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(hashstr)
    Dim inputbytes As Byte() = sha.ComputeHash(hashbytes)
    
    Dim hash As String = Convert.ToBase64String(inputbytes)  ' //Günvelik amaçlı oluşturulan hash
        
    '/******************          GEREKLİ PARAMETRELER             *********************/

    '/***************       ISTEĞE BAĞLI ALANLAR    *********************************/
    Dim description As String = "" '//Açıklama
    Dim xid As String = ""    '//İşlem takip numarası 3D için XID i mağaza üretirse o kullanir, yoksa sistem üretiyor. (3D secure işlemleri için işlem takip numarası 20 bytelik bilgi 28 karaktere base64 olarak kodlanmalı, geçersiz yada boş ise sistem tarafından üretilir.)
    Dim lang As String = ""    ' //gösterim dili boş ise Türkçe (tr), İngilizce için (en)
    Dim email As String = ""   ' //email adresi
    Dim userid As String = ""   '//Kullanıcı takibi için id
    '/***************       ISTEĞE BAĞLI ALANLAR     ********************************/
        
            
    
    %>
   
            <form id="Form1" method="post" action="">
                <div  style="font-family:Verdana, Arial, Helvetica, sans-serif;font-size:16px;vertical-align:middle;text-align:center;background-color:White;" >Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
                    <br />
                    <br />
                    Lütfen Bekleyiniz...  </div>
            
        <div  >
                <input type="text" name="pan" value="" size="20"/>
                <input type="text" name="cv2" size="4" value=""/>
                <input type="text" name="Ecom_Payment_Card_ExpDate_Year" value=""/>
                <input type="text" name="Ecom_Payment_Card_ExpDate_Month" value=""/>
                <select name="cardType">
                            <option value="1">Visa</option>
                            <option value="2">MasterCard</option>
               </select> 
                    <input type="submit" value="Ödemeyi Tamamla"/>               
               
                      
               <input type="hidden"  name="clientid" value="<%=clientId%>" />
                <input type="hidden" name="amount" value="<%=amount%>" />
                <input type="hidden" name="oid" value="<%=oid%>" />	
                <input type="hidden" name="okUrl" value="<%=okUrl%>" />
                <input type="hidden" name="failUrl" value="<%=failUrl%>" />
                <input type="hidden" name="rnd" value="<%=rnd%>" />
                <input type="hidden" name="hash" value="<%=hash%>" />
                
                <input type="hidden" name="storetype" value="<%=storetype%>" />		
                <input type="hidden" name="lang" value="tr" />
                 <input type="hidden" name="currency" value="<%=currency%>" />
<%--                <input  name="clientid" value="<%=clientId%>" />
                <input  name="amount" value="<%=amount%>" />
                <input  name="oid" value="<%=oid%>" />	
                <input  name="okUrl" value="<%=okUrl%>" />
                <input  name="failUrl" value="<%=failUrl%>" />
                <input  name="rnd" value="<%=rnd%>" />
                <input  name="hash" value="<%=hash%>" />
                
                <input  name="storetype" value="<%=storetype%>" />		
                <input  name="lang" value="tr" />--%>
                <a href="javascript:HideFrameOk()" class="Global_Normal_Link" id="LinkButton1" >Kapat(Başarılı)</a> 
                <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton2" >Kapat(Başarısız)</a> 
               
          </div>      
            </form>
      
</body>
</html>
