<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformpayuapi.aspx.vb" Inherits="._3dformpayuapi" %>

<%@ Import Namespace="System.Collections" %>

<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PayU Ödemde Sistemi </title>

    <script src="https://secure.payu.com.tr/openpayu/v2/client/jquery-1.7.2.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/json2.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/openpayu-2.0.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/plugin-payment-2.0.js"></script>
    <script src="https://secure.payu.com.tr/openpayu/v2/client/plugin-installment-2.0.js"></script>

    <link rel="stylesheet" type="text/css" href="https://secure.payu.com.tr/openpayu/v2/client/openpayu-builder-2.0.css" />
    
</head>
<body>

    <%      
        
        Dim tmpOrder As TempOrder = Session("TempOrder")
        Dim b_FName, b_LName, b_Phone, b_Country, b_District, b_City As String
        Dim b_FAddress As String = turkce(tmpOrder.BillingInfo.Address)
        Dim s_Faddress As String = turkce(tmpOrder.ShippingInfo.Address)
        Dim mail As String = turkce(tmpOrder.ShippingInfo.Mail)
        
        b_Country = "TR"
        If mail = "" Then
            mail="admin@siteniz.com"
        End If
        
        'urun1adi (Urun1Kodu) , urun2adi (Urun2Kodu), urun3adi(Urun2Kodu)… 
        Dim productinfo As String = ""
        If tmpOrder.OrderItems.Count > 0 Then 
            For m As Integer = 0 To tmpOrder.OrderItems.Count - 1
                productinfo &= DirectCast(tmpOrder.OrderItems(m), ASPNetPortal.OrderItem).Name & "(" & DirectCast(tmpOrder.OrderItems(m), ASPNetPortal.OrderItem).Id & "),"
            Next
        Else
            productinfo = "-"
        End If
        If productinfo.Length > 155 Then
            productinfo = productinfo.Substring(0, 154)
        End If
      

        If tmpOrder.BillingInfo.CompanyName <> "" Then
            If tmpOrder.BillingInfo.CompanyName.Contains(" ") Then
                b_FName = turkce(tmpOrder.BillingInfo.CompanyName.Split(" ")(0))
                b_LName = turkce(tmpOrder.BillingInfo.CompanyName.Split(" ")(1))
                
            Else
                b_FName = turkce(tmpOrder.BillingInfo.CompanyName)
                b_LName = turkce(tmpOrder.BillingInfo.CompanyName)
            End If
            b_Phone = tmpOrder.BillingInfo.PhoneNo
            b_District = turkce(tmpOrder.BillingInfo.DistrictName)
            b_City = turkce(tmpOrder.BillingInfo.CityName)
        Else
            If tmpOrder.ShippingInfo.RecipientName.Contains(" ") Then
                b_FName = turkce(tmpOrder.ShippingInfo.RecipientName.Split(" ")(0))
                b_LName = turkce(tmpOrder.ShippingInfo.RecipientName.Split(" ")(1))
            Else
                b_FName = turkce(tmpOrder.ShippingInfo.RecipientName)
                b_LName = turkce(tmpOrder.ShippingInfo.RecipientName)
     
            End If
            b_Phone = tmpOrder.ShippingInfo.PhoneNo
            b_District = turkce(tmpOrder.BillingInfo.DistrictName)
            b_City = turkce(tmpOrder.BillingInfo.CityName)
        End If
   
        Dim clientId As String = Session("GetwayUserName")
        Dim oid As String = GetRandomOrderCode()
        Dim odate As String = Date.UtcNow.ToString("yyyy-MM-dd HH:mm:ss")
        Dim currency As String = "TRY"
        'Dim amount As String = Format(Session("amount"), "0.00").Replace(",", ".")
        Dim amount As String = Format(Session("PayuApiAmount"), "0.00").Replace(",", ".")
    
      
    
        Dim back_url As String = BaseUrl & "/store/banks3d/3dodemepayuapi.aspx?oid=" & oid
        
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            back_url = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemepayuapi.aspx?oid=" & oid
        End If
        
        Dim ip As String = HttpContext.Current.Request.UserHostAddress
        
    
        Dim storekey As String = Session("GetwayPassword")
    
        Dim hashstr As New StringBuilder()

        'vars = 'MERCHANT,ORDER_REF,ORDER_DATE,ORDER_PNAME[],ORDER_PCODE[],ORDER_PINFO[],
        'ORDER_PRICE[],ORDER_QTY[],ORDER_VAT[],ORDER_SHIPPING,PRICES_CURRENCY,
        'DISCOUNT,DESTINATION_CITY,DESTINATION_STATE,DESTINATION_COUNTRY,PAY_METHOD,
        'ORDER_PRICE_TYPE[],INSTALLMENT_OPTIONS';
        
        
        'BACK_REF
        hashstr.Append(Encoding.UTF8.GetByteCount(back_url) & back_url)
        'BILL_ADDRESS
        hashstr.Append(Encoding.UTF8.GetByteCount(b_FAddress) & b_FAddress)
        'BILL_ADDRESS2
        hashstr.Append(Encoding.UTF8.GetByteCount(s_Faddress) & s_Faddress)
        'BILL_CITY
        hashstr.Append(Encoding.UTF8.GetByteCount(b_District) & b_District)
        'BILL_COUNTRYCODE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_Country) & b_Country)
        'BILL_EMAIL
        hashstr.Append(Encoding.UTF8.GetByteCount(mail) & mail)
        'BILL_FAX
        hashstr.Append(Encoding.UTF8.GetByteCount("-") & "-")
        'BILL_FNAME
        hashstr.Append(Encoding.UTF8.GetByteCount(b_FName) & b_FName)
        'BILL_LNAME
        hashstr.Append(Encoding.UTF8.GetByteCount(b_LName) & b_LName)
        'BILL_PHONE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_Phone) & b_Phone)
        'BILL_STATE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_City) & b_City)
        'BILL_ZIPCODE
        hashstr.Append(Encoding.UTF8.GetByteCount("-") & "-")
        'CC_CVV
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("CvcNumber")) & Session("CvcNumber"))
        'CC_NUMBER
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("CardNumber")) & Session("CardNumber"))
        'CC_OWNER
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("CardHolderName")) & Session("CardHolderName"))
        
        
        'CLIENT_IP
        hashstr.Append(Encoding.UTF8.GetByteCount(ip) & ip)
        
        'DELIVERY_ADDRESS
        hashstr.Append(Encoding.UTF8.GetByteCount(b_FAddress) & b_FAddress)
        'DELIVERY_ADDRESS2
        hashstr.Append(Encoding.UTF8.GetByteCount(s_Faddress) & s_Faddress)
        'DELIVERY_CITY
        hashstr.Append(Encoding.UTF8.GetByteCount(b_District) & b_District)
        'DELIVERY_COMPANY
        hashstr.Append(Encoding.UTF8.GetByteCount("-") & "-")
        'DELIVERY_COUNTRYCODE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_Country) & b_Country)
        'DELIVERY_EMAIL
        hashstr.Append(Encoding.UTF8.GetByteCount(mail) & mail)
        'DELIVERY_FNAME
        hashstr.Append(Encoding.UTF8.GetByteCount(b_FName) & b_FName)
        'DELIVERY_LNAME
        hashstr.Append(Encoding.UTF8.GetByteCount(b_LName) & b_LName)
        'DELIVERY_PHONE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_Phone) & b_Phone)
        'DELIVERY_STATE
        hashstr.Append(Encoding.UTF8.GetByteCount(b_City) & b_City)
        'DELIVERY_ZIPCODE
        hashstr.Append(Encoding.UTF8.GetByteCount("-") & "-")
        
        'EXP_MONTH
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("ExpMonthPayuApi")) & Session("ExpMonthPayuApi"))
        'EXP_YEAR
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("ExpYearPayuApi")) & Session("ExpYearPayuApi"))
        
        'MERCHANT
        hashstr.Append(Encoding.UTF8.GetByteCount(clientId) & clientId)
        
        
        'ORDER_DATE
        hashstr.Append(Encoding.UTF8.GetByteCount(odate) & odate)
        'ORDER_PCODE
        hashstr.Append(Encoding.UTF8.GetByteCount(oid) & oid)
        'ORDER_PINFO
        hashstr.Append(Encoding.UTF8.GetByteCount(productinfo) & productinfo)
        'ORDER_PNAME
        hashstr.Append(Encoding.UTF8.GetByteCount("Siparis Kodu : " & oid) & "Siparis Kodu : " & oid)
        'ORDER_PRICE
        hashstr.Append(Encoding.UTF8.GetByteCount(amount) & amount)
        'ORDER_QTY
        hashstr.Append(Encoding.UTF8.GetByteCount("1") & "1") ' adet
        'ORDER_REF
        hashstr.Append(Encoding.UTF8.GetByteCount(oid) & oid)
        'PAY_METHOD
        hashstr.Append(Encoding.UTF8.GetByteCount("CCVISAMC") & "CCVISAMC")
        'PRICES_CURRENCY
        hashstr.Append(Encoding.UTF8.GetByteCount(currency) & currency)
        'SELECTED_INSTALLMENTS_NUMBER 
        hashstr.Append(Encoding.UTF8.GetByteCount(Session("Taksit")) & Session("Taksit"))
        

        Dim sb As New StringBuilder()
        Dim data As Byte() = Encoding.UTF8.GetBytes(hashstr.ToString)
        Dim secretkey As Byte() = Encoding.UTF8.GetBytes(storekey)
        Dim hmacMD5 As New System.Security.Cryptography.HMACMD5(secretkey)
        Dim macSender As Byte() = hmacMD5.ComputeHash(data)
        
    
        For i As Integer = 0 To macSender.Length - 1
            sb.Append(macSender(i).ToString("x2"))
        Next
    
        hmacMD5.Clear()
    
        Dim hash As String = BitConverter.ToString(macSender).Replace("-", String.Empty).ToLowerInvariant()
        
        Dim istest As String = "0"
        If ConfigurationManager.AppSettings("PayUIsTest") = "True" Then
            istest = "1"
        End If
        
        Dim address As String = "https://secure.payu.com.tr/order/alu.php"
        Dim webClient As New WebClient()
        Dim param As New Specialized.NameValueCollection
        param.Add("BACK_REF", back_url)
        param.Add("BILL_ADDRESS", b_FAddress)
        param.Add("BILL_ADDRESS2", s_Faddress)
        param.Add("BILL_CITY", b_District)
        param.Add("BILL_COUNTRYCODE", b_Country)
        param.Add("BILL_EMAIL", mail)
        param.Add("BILL_FAX", "-")
        param.Add("BILL_FNAME", b_FName)
        param.Add("BILL_LNAME", b_LName)
        param.Add("BILL_PHONE", b_Phone)
        param.Add("BILL_STATE", b_City)
        param.Add("BILL_ZIPCODE", "-")
        param.Add("CC_CVV", Session("CvcNumber"))
        param.Add("CC_NUMBER", Session("CardNumber"))
        param.Add("CC_OWNER", Session("CardHolderName"))
        param.Add("CLIENT_IP", ip)
        param.Add("DELIVERY_ADDRESS", b_FAddress)
        param.Add("DELIVERY_ADDRESS2", s_Faddress)
        param.Add("DELIVERY_CITY", b_District)
        param.Add("DELIVERY_COMPANY", "-")
        param.Add("DELIVERY_COUNTRYCODE", b_Country)
        param.Add("DELIVERY_EMAIL", mail)
        param.Add("DELIVERY_FNAME", b_FName)
        param.Add("DELIVERY_LNAME", b_LName)
        param.Add("DELIVERY_PHONE", b_Phone)
        param.Add("DELIVERY_STATE", b_City)
        param.Add("DELIVERY_ZIPCODE", "-")
        param.Add("EXP_MONTH", Session("ExpMonthPayuApi"))
        param.Add("EXP_YEAR", Session("ExpYearPayuApi"))
        param.Add("MERCHANT", clientId)
        param.Add("ORDER_DATE", odate)
        param.Add("ORDER_HASH", hash)
        param.Add("ORDER_PCODE[0]", oid)
        param.Add("ORDER_PINFO[0]", productinfo)
        param.Add("ORDER_PNAME[0]", "Siparis Kodu : " & oid)
        param.Add("ORDER_PRICE[0]", amount)
        param.Add("ORDER_QTY[0]", "1")
        param.Add("ORDER_REF", oid)
        param.Add("PAY_METHOD", "CCVISAMC")
        param.Add("PRICES_CURRENCY", currency)
        param.Add("SELECTED_INSTALLMENTS_NUMBER", Session("Taksit"))
        
        
        Dim xml As New XmlDocument()
        Dim R As String = Encoding.UTF8.GetString(webClient.UploadValues(address, param))
       
          
        xml.LoadXml(R)
        
        Dim nodelist1 As XmlNodeList
        Dim nodelist2 As XmlNodeList
      
        nodelist1 = xml.GetElementsByTagName("URL_3DS")
        nodelist2 = xml.GetElementsByTagName("STATUS")
        
        If nodelist2(0).InnerText = "SUCCESS" Then
            Dim url As String = nodelist1(0).InnerText
            Response.Redirect(url)
            Response.End()
        Else
            Response.Redirect(back_url)
        End If
        
        
       
 
    %>
    <form id="Form1" method="post" target="_parent" accept-charset="UTF-8" action="https://secure.payu.com.tr/order/alu.php">
        <div>
            <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
                PayU Sistemine Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
                <br />
                <asp:Label id="lbl" runat="server" />
                <br />
                Lütfen Bekleyiniz... 
            </div>
            <div  style="visibility: hidden;">

                <input type="hidden" name="BACK_REF" value="<%=back_url%>" />
                <input type="hidden" name="BILL_ADDRESS" value="<%=b_FAddress%>" />
                <input type="hidden" name="BILL_ADDRESS2" value="<%=s_Faddress%>" />
                <input type="hidden" name="BILL_CITY" value="<%=b_District%>" />
                <input type="hidden" name="BILL_COUNTRYCODE" value="<%=b_Country %>" />
                <input type="hidden" name="BILL_EMAIL" value="<%=mail%>" />
                <input type="hidden" name="BILL_FAX" value="-" />
                <input type="hidden" name="BILL_FNAME" value="<%=b_FName %>" />
                <input type="hidden" name="BILL_LNAME" value="<%=b_LName %>" />
                <input type="hidden" name="BILL_PHONE" value="<%=b_Phone %>" />
                <input type="hidden" name="BILL_STATE" value="<%=b_City%>" />
                <input type="hidden" name="BILL_ZIPCODE" value="-" />
                <input type="hidden" name="CC_CVV" value="<%=Session("CvcNumber")%>" />
                <input type="hidden" name="CC_NUMBER" value="<%=Session("CardNumber")%>" />
                <input type="hidden" name="CC_OWNER" value="<%=Session("CardHolderName")%>" />
                <input type="hidden" name="CLIENT_IP" value="<%=ip%>" />

                <input type="hidden" name="DELIVERY_ADDRESS" value="<%=b_FAddress%>" />
                <input type="hidden" name="DELIVERY_ADDRESS2" value="<%=s_Faddress%>" />
                <input type="hidden" name="DELIVERY_CITY" value="<%=b_District%>" />
                <input type="hidden" name="DELIVERY_COMPANY" value="-" />
                <input type="hidden" name="DELIVERY_COUNTRYCODE" value="<%=b_Country %>" />
                <input type="hidden" name="DELIVERY_EMAIL" value="<%=mail%>" />
                <input type="hidden" name="DELIVERY_FNAME" value="<%=b_FName %>" />
                <input type="hidden" name="DELIVERY_LNAME" value="<%=b_LName %>" />
                <input type="hidden" name="DELIVERY_PHONE" value="<%=b_Phone %>" />
                <input type="hidden" name="DELIVERY_STATE" value="<%=b_City%>" />
                <input type="hidden" name="DELIVERY_ZIPCODE" value="-" />

                <input type="hidden" name="EXP_MONTH" value="<%=Session("ExpMonthPayuApi")%>" />
                <input type="hidden" name="EXP_YEAR" value="<%=Session("ExpYearPayuApi")%>" />

                <input type="hidden" name="MERCHANT" value="<%=clientId%>" />
                <input type="hidden" name="ORDER_DATE" value="<%=odate%>" />

                <input type="hidden" name="ORDER_HASH" value="<%= hash%>" />

                <input type="hidden" name="ORDER_PCODE[0]" value="<%=oid%>" />
                <input type="hidden" name="ORDER_PINFO[0]" value="-" />
                <input type="hidden" name="ORDER_PNAME[0]" value="Siparis Kodu : <%=oid%>" />
                <input type="hidden" name="ORDER_PRICE[0]" value="<%=amount %>" />
                <input type="hidden" name="ORDER_QTY[0]" value="1" />
                <input type="hidden" name="ORDER_REF" value="<%=oid%>" />
                <input type="hidden" name="PAY_METHOD" value="CCVISAMC" />
                <input type="hidden" name="PRICES_CURRENCY" value="<%=currency %>" />

                <input type="hidden" name="SELECTED_INSTALLMENTS_NUMBER" value="<%= Session("Taksit")%>" />

                <input type="submit" value="Ödemeyi Tamamla" id="ttt" />

                <script language="javascript">
                    document.getElementById("ttt").click();
                </script>
                <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
            </div>
        </div>
    </form>
</body>
</html>
