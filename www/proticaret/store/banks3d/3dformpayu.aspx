<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>PayU Ödeme Sayfası</title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
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
    
        Dim tmpOrder As TempOrder = Session("TempOrder")
        Dim b_FName, b_LName, b_Phone, b_Country, b_District, b_City As String
        Dim b_FAddress As String = turkce(tmpOrder.BillingInfo.Address)
        Dim s_Faddress As String = turkce(tmpOrder.ShippingInfo.Address)
        Dim mail As String = turkce(tmpOrder.ShippingInfo.Mail)
        
        
        b_Country = "TR"
        
        If mail = "" Then
            
            mail = "-"
            
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
   
        Dim clientId As String = ConfigurationManager.AppSettings("PayUCode")
        Dim oid As String = GetRandomOrderCode()
        Dim odate As String = Date.Now.ToString("yyyy-MM-dd HH:mm:ss")
        Dim currency As String = "TRY"
        Dim amount As String = Format(Session("amount"), "0.00").Replace(",", ".")
        'Dim amount As String = Format(tmpOrder.Pricess.KargoDahilPayUToplam, "0.00").Replace(",", ".")
    
        Dim okUrl As String = BaseUrl & "/store/orderstep3d.aspx?oid=" & oid
    
        'ssl 
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            okUrl = BaseUrl.Replace("http://", "https://") & "/store/orderstep3d.aspx?oid=" & oid
        End If
    
    
        Dim storekey As String = ConfigurationManager.AppSettings("PayUSecret")
    
        Dim hashstr As New StringBuilder()

        'vars = 'MERCHANT,ORDER_REF,ORDER_DATE,ORDER_PNAME[],ORDER_PCODE[],ORDER_PINFO[],
        'ORDER_PRICE[],ORDER_QTY[],ORDER_VAT[],ORDER_SHIPPING,PRICES_CURRENCY,
        'DISCOUNT,DESTINATION_CITY,DESTINATION_STATE,DESTINATION_COUNTRY,PAY_METHOD,
        'ORDER_PRICE_TYPE[],INSTALLMENT_OPTIONS';
        'MERCHANT
        hashstr.Append(Encoding.Default.GetBytes(clientId).Length & clientId)
        'ORDER_REF
        hashstr.Append(Encoding.Default.GetBytes(oid).Length & oid)
        'ORDER_DATE
        hashstr.Append(Encoding.Default.GetBytes(odate).Length & odate)
        'ORDER_PNAME
        hashstr.Append(Encoding.Default.GetBytes("Siparis Kodu : " & oid).Length & "Siparis Kodu : " & oid)
        'ORDER_PCODE
        hashstr.Append(Encoding.Default.GetBytes(oid).Length & oid)
        'ORDER_PINFO
        hashstr.Append(Encoding.Default.GetBytes("").Length & "")
        'ORDER_PRICE
        hashstr.Append(Encoding.Default.GetBytes(amount).Length & amount)
        'ORDER_QTY
        hashstr.Append(Encoding.Default.GetBytes("1").Length & "1") ' adet
        'ORDER_VAT
        hashstr.Append(Encoding.Default.GetBytes("0").Length & "0") ' kdv
        'ORDER_SHIPPING
        hashstr.Append(Encoding.Default.GetBytes("0").Length & "0") ' kargo
        'PRICES_CURRENCY
        hashstr.Append(Encoding.Default.GetBytes(currency).Length & currency)
        'DISCOUNT
        hashstr.Append(Encoding.Default.GetBytes("0").Length & "0")
        'DESTINATION_CITY
        hashstr.Append(Encoding.Default.GetBytes("").Length & "")
        'DESTINATION_STATE
        hashstr.Append(Encoding.Default.GetBytes("").Length & "")
        'DESTINATION_COUNTRY
        hashstr.Append(Encoding.Default.GetBytes("").Length & "")
        'PAY_METHOD
        hashstr.Append(Encoding.Default.GetBytes("CCVISAMC").Length & "CCVISAMC")
        'ORDER_PRICE_TYPE
        hashstr.Append(Encoding.Default.GetBytes("GROSS").Length & "GROSS")
        'INSTALLMENT_OPTIONS
        hashstr.Append(Encoding.Default.GetBytes("").Length & "")
        
    
       
        'Hash
        Dim sb As New StringBuilder()
        Dim data As Byte() = Encoding.Default.GetBytes(hashstr.ToString)
        Dim secretkey As Byte() = Encoding.Default.GetBytes(storekey)
        Dim hmacMD5 As New System.Security.Cryptography.HMACMD5(secretkey)
        Dim macSender As Byte() = hmacMD5.ComputeHash(data)
    
        For i As Integer = 0 To macSender.Length - 1
            sb.Append(macSender(i).ToString("x2"))
        Next
    
        hmacMD5.Clear()
    
        Dim hash As String = sb.ToString()
        
        Dim istest As String = "0"
        If ConfigurationManager.AppSettings("PayUIsTest") = "True" Then
            istest = "1"
        End If
    
        '/******************          GEREKLİ PARAMETRELER             *********************/

  
        

    
    %>

    <form id="Form1" method="post" target="_parent" accept-charset="UTF-8" action="https://secure.payu.com.tr/order/lu.php">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            PayU Sistemine Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
        </div>
        <div style="visibility: hidden;">

            <input type="hidden" name="MERCHANT" value="<%=clientId%>" />
            <input type="hidden" name="ORDER_HASH" value="<%=hash %>" />
            <input type="hidden" name="BACK_REF" value="<%=okUrl %>" />
            <input type="hidden" name="ORDER_REF" value="<%=oid%>" />
            <input type="hidden" name="ORDER_DATE" value="<%=odate%>" />

            

            <input type="hidden" name="DESTINATION_CITY" value="" />
            <input type="hidden" name="DESTINATION_STATE" value="" />
            <input type="hidden" name="DESTINATION_COUNTRY" value="" />

            <input type="hidden" name="ORDER_PNAME[]" value="Siparis Kodu : <%=oid%>" />
            <input type="hidden" name="ORDER_PCODE[]" value="<%=oid%>" />
            <input type="hidden" name="ORDER_PINFO[]" value="" />
            <input type="hidden" name="ORDER_PRICE[]" value="<%=amount %>" />
            <input type="hidden" name="ORDER_PRICE_TYPE[]" value="GROSS" />
            <input type="hidden" name="ORDER_QTY[]" value="1" />
            <input type="hidden" name="ORDER_VAT[]" value="0" />

            <input type="hidden" name="ORDER_SHIPPING" value="0" />
            <input type="hidden" name="PRICES_CURRENCY" value="<%=currency %>" />
            <input type="hidden" name="BILL_FNAME" value="<%=b_FName %>" />
            <input type="hidden" name="BILL_LNAME" value="<%=b_LName %>" />
            <input type="hidden" name="BILL_EMAIL" value="<%=mail%>" />
            <input type="hidden" name="BILL_PHONE" value="<%=b_Phone %>" />
            <input type="hidden" name="BILL_COUNTRYCODE" value="<%=b_Country %>" />
            <input type="hidden" name="BILL_ADDRESS" value="<%=b_FAddress%>" />
            <input type="hidden" name="BILL_ADDRESS2" value="<%=s_Faddress%>" />
            <input type="hidden" name="BILL_CITY" value="<%=b_District%>" />
            <input type="hidden" name="BILL_STATE" value="<%=b_City%>" />

            <input type="hidden" name="PAY_METHOD" value="CCVISAMC" />
            <input type="hidden" name="INSTALLMENT_OPTIONS" value="" />

            <input type="hidden" name="DISCOUNT" value="0" />

            <input type="hidden" name="AUTOMODE" value="1" />
            <input type="hidden" name="TESTORDER" value="<%=istest %>" />
            
            
            
            <input type="hidden" name="HASHSTR" value="<%=hashstr.ToString() %>" />


            
            <input type="submit" value="Ödemeyi Tamamla" />
            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
        </div>

    </form>

</body>
</html>
