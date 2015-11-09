<%@ Page SmartNavigation="false" Language="vb" EnableSessionState="True" AutoEventWireup="false"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server" id="head1">
    <title>IPara Ödeme Sayfası</title>
      <script type="text/javascript"> 
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 }
 </script>
</head>
<body>
<%
    
    Dim tmpOrder As TempOrder = Session("TempOrder")
    Dim merchantOrderId As String = Session("RandomOrderId")
    Dim totalPrice As String = Format(tmpOrder.Pricess.KargoDahilIparaToplam, "0.00").Replace(",", ".")
    Dim kargo As Decimal = tmpOrder.Pricess.ToplamCargo * DefaultCurrencyRate
    Dim publicKey As String = ConfigurationManager.AppSettings("IParaPublicKey")
    Dim privateKey As String = ConfigurationManager.AppSettings("IParaPrivateKey")
    
    Dim posturl As String = ConfigurationManager.AppSettings("IParaPostUrl")
    Dim returnUrl As String = BaseUrl & "/store/banks3d/3dodemeipara.aspx?return=true"
    Dim successUrl As String = BaseUrl & "/store/banks3d/3dodemeipara.aspx"
    Dim failureUrl As String = BaseUrl & "/store/banks3d/3dodemeipara.aspx"
    'ssl 
    If ConfigurationManager.AppSettings("UseSsl") = "True" Then
        returnUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeipara.aspx?return=true"
        successUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeipara.aspx"
        failureUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeipara.aspx"
    End If
    
      
    
    
    'post data
    Dim extraServices As String = "" 'kargo
     
    If tmpOrder.Pricess.ToplamCargo > 0 Then
        extraServices = ",'extraServices':[{" & String.Format("'title':'Kargo Bedeli','price':{0}", Format(kargo, "0.00").Replace(",", ".")) & "}]"
    End If
     
    Dim itemTotalPrice As Decimal = Math.Round(kargo, 2)
    'items
    Dim orderItems As String = ""
    If tmpOrder.Coupon.IsUsed And tmpOrder.Coupon.Discount > 0 Then
        'kupon kullanıldıysa
        Dim itmtitle As String = ""
        Dim itmcount As Integer = 0
        Dim i As Integer = 0
        For Each itm As OrderItem In tmpOrder.OrderItems
            If i = 0 Then
                If itm.Name.Length > 50 Then
                    itmtitle &= itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Substring(0, 50).Trim
                Else
                    itmtitle &= itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim
                End If
            Else
                If itm.Name.Length > 50 Then
                    itmtitle &= "," & itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Substring(0, 50).Trim
                Else
                    itmtitle &= "," & itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim
                End If
            End If
            i += 1
            itmcount += itm.Count
        Next
        orderItems &= "{'itemId':" & String.Format("'{0}','title':'{1}','price':{2},'itemCount':{3},'shippingInfo':'{4}'", 1, itmtitle.Trim, Format(tmpOrder.Pricess.KdvDahilIparaToplam, "0.00").Replace(",", "."), itmcount, IIf(tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Trim = "", tmpOrder.BillingInfo.Address.Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.BillingInfo.CityName, tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.ShippingInfo.CityName)) & "}" 'Ürünler
        itemTotalPrice += Math.Round(tmpOrder.Pricess.KdvDahilIparaToplam, 2)
    Else
        'normal sipariş
        Dim i As Integer = 0
        For Each itm As OrderItem In tmpOrder.OrderItems
            If i = 0 Then
                orderItems &= "{'itemId':" & String.Format("'{0}','title':'{1}','price':{2},'itemCount':{3},'shippingInfo':'{4}'", itm.Id, itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim, Format(itm.Price, "0.00").Replace(",", "."), itm.Count, IIf(tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim = "", tmpOrder.BillingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.BillingInfo.CityName, tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.ShippingInfo.CityName)) & "}" 'Ürün
            Else
                orderItems &= ",{'itemId':" & String.Format("'{0}','title':'{1}','price':{2},'itemCount':{3},'shippingInfo':'{4}'", itm.Id, itm.Name.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim, Format(itm.Price, "0.00").Replace(",", "."), itm.Count, IIf(tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim = "", tmpOrder.BillingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.BillingInfo.CityName, tmpOrder.ShippingInfo.Address.Replace(vbCrLf, " ").Replace("""", "").Replace("'", "").Trim & "-" & tmpOrder.ShippingInfo.CityName)) & "}" 'Ürün
            End If
            i += 1
            itemTotalPrice += Math.Round(itm.Price, 2)
        Next
    End If
    
    'order
    'Dim order As String = "'order':{" & String.Format("'merchantOrderId':'{0}','totalPrice':{1},'orderItems':[{2}]{3}", merchantOrderId, totalPrice, orderItems, extraServices) & "}"
    'order
    Dim order As String = "'order':{" & String.Format("'merchantOrderId':'{0}','totalPrice':{1},'orderItems':[{2}]{3}", merchantOrderId, Format(itemTotalPrice, "0.00").Replace(",", "."), orderItems, extraServices) & "}"
    'purchaser
    Dim UserId As String = GetShoppingCartId()
    Dim UserName As String = ""
    Dim UserSurName As String = ""
    Dim UserMail As String = ""
    Dim UserGSM As String = ""
    Dim UserAdress As String = ""
    If IsNumeric(UserId) Then
        If UserId > 0 Then
            Dim ua As New UsersDB
            Dim dr As SqlDataReader
            dr = ua.GetUserIndirim(UserId)
            dr.Read()
            Dim FullName As String = ChkNullString(dr(3))
            If FullName.Contains(" ") Then
                UserName = FullName.Split(" ")(0)
                UserSurName = FullName.Split(" ")(1)
            Else
                UserName = FullName
                UserSurName = ""
            End If
            UserMail = ChkNullString(dr(4))
            UserGSM = IIf(ChkNullString(dr(6)) = "", tmpOrder.BillingInfo.MobilePhone, ChkNullString(dr(6)))
            UserAdress = IIf(ChkNullString(dr(7)) = "", tmpOrder.BillingInfo.Address, ChkNullString(dr(7)))
            dr.Close()
        End If
    Else
        If tmpOrder.BillingInfo.CompanyName.Contains(" ") Then
            UserName = tmpOrder.BillingInfo.CompanyName.Split(" ")(0)
            UserSurName = tmpOrder.BillingInfo.CompanyName.Split(" ")(1)
        Else
            UserName = tmpOrder.BillingInfo.CompanyName
        End If
        UserGSM = IIf(tmpOrder.BillingInfo.MobilePhone = "", tmpOrder.BillingInfo.PhoneNo, tmpOrder.BillingInfo.MobilePhone)
        UserAdress = tmpOrder.BillingInfo.Address
    End If
    
    
    
    Dim purchaser As String = "'purchaser':{" & String.Format("'name':'{0}','surname':'{1}','email':'{2}','gsm':'{3}','address':'{4}'", UserName, UserSurName, UserMail, UserGSM, UserAdress.Replace(vbCrLf, " ")) & "}"
    
    ' //Günvelik amaçlı oluşturulan hash
    'Dim hashstr As String = publicKey & privateKey & merchantOrderId & totalPrice & successUrl & failureUrl
    Dim hashstr As String = publicKey & privateKey & merchantOrderId & Format(itemTotalPrice, "0.00").Replace(",", ".") & successUrl & failureUrl
     
    Dim sha As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
    Dim hashbytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(hashstr)
    Dim inputbytes As Byte() = sha.ComputeHash(hashbytes)
    Dim token As String = Convert.ToBase64String(inputbytes)
    'merchant
    Dim merchant As String = "'merchant':{" & String.Format("'failureUrl':'{0}','publicKey':'{1}','returnUrl':'{2}','successUrl':'{3}','token':'{4}',{5}", failureUrl, publicKey, returnUrl, successUrl, token, Session("token2")) & "}"
    
    Dim paymentInfo As String = "{" & String.Format("{0},{1},{2}", order, purchaser, merchant) & "}"
        
            
    
    %>
   
<%--            <form id="Form1" method="post" action="<%=posturl%>" accept-charset="UTF-8">--%>
                <form id="Form1" method="post" action="<%=posturl%>" accept-charset="UTF-8">
                <div  style="font-family:Verdana, Arial, Helvetica, sans-serif;font-size:16px;vertical-align:middle;text-align:center;background-color:White;" >iPara Bağlantısı Kuruluyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
                    <br /><br />
                    Lütfen Bekleyiniz...  
               </div>
            
        <div style="visibility:hidden;" >
         <input type="hidden" id="paymentInfo"  name="paymentInfo" value="<%=paymentInfo%>" />
               
                
         <input type="submit" value="Ödemeyi Tamamla"/>
         <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> 
         </div>      
         </form>
      
</body>
</html>
