<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" Debug="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>

</head>
<body>
    <%
        Dim currency As String = "949" ' 949 - test için 792
        Dim amount As String = Format(Session("amount"), "0.00").Replace(",", ".")
    
        Dim clientId As String = Session("GetwayId")
        Dim posturl As String = Session("Bank3dGetWayAddress")
        
        'Banka tarafından mağazaya verilen iş yeri numarası
    
        Dim oid As String = Session("NextOrderId").ToString.Substring(0,7)   '     //Sipariş numarası 81.215.218.117        
        'ssl olmadan
        Dim okUrl As String = BaseUrl & "/store/banks3d/3dodemedenizbank.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
        Dim failUrl As String = BaseUrl & "/store/banks3d/3dodemedenizbank.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
        
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            okUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemedenizbank.aspx" '   //İşlem başarılıysa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)
            failUrl = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemedenizbank.aspx" ' //İşlem başarısızsa dönülecek işyeri sayfası  (3D işleminin sonucu ödeme işleminin değil)    
        End If
    
    
        Dim rnd As String = DateTime.Now.ToString()       ' //Güvenlik ve kontrol amaçlı tarih yada sürekli değişen bir değer


        Dim storekey As String = Session("Key3D")             '  //işyeri anahtarı
        Dim storetype As String = "3d"
        Dim txnType As String = "Auth"
        Dim installementCount As String = Session("Taksit")
         
    
        Dim hashstr As String = clientId & oid & amount & okUrl & failUrl & txnType & installementCount & rnd & storekey
   
        
        
        Dim sha As System.Security.Cryptography.SHA1 = New System.Security.Cryptography.SHA1CryptoServiceProvider()
        Dim bytes As Byte() = System.Text.Encoding.GetEncoding("ISO-8859-9").GetBytes(hashstr)
        Dim hashingbytes As Byte() = sha.ComputeHash(bytes)

        Dim hash As [String] = Convert.ToBase64String(hashingbytes)

    %>

    <form id="Form2" method="post" action="<%=posturl%>">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />

            Lütfen Bekleyiniz...  
        </div>
        <div style="visibility:hidden;">
            <input type="text" name="Pan" />
            <input type="text" name="PurchAmount" value="<%=amount%>" />
            <input type="text" name="Cvv2" />
            <input type="text" name="Expiry" />
            <select name="CardType">
                <option value="0">Visa</option>
                <option value="1">MasterCard</option>
            </select>
            <input type="hidden" name="ShopCode" value="<%=clientId%>" />
            <input type="hidden" name="Currency" value="<%=currency%>" />
            <input type="hidden" name="OrderId" value="<%=oid%>" />
            <input type="hidden" name="OkUrl" value="<%=okUrl%>" />
            <input type="hidden" name="FailUrl" value="<%=failUrl%>" />
            <input type="hidden" name="Rnd" value="<%=rnd%>" />
            <input type="hidden" name="Hash" value="<%=hash%>" />
            <input type="hidden" name="TxnType" value="<%=txnType %>" />
            <input type="hidden" name="BonusAmount" value="" />
            <input type="hidden" name="InstallmentCount" value="<%=installementCount%>" />
            <input type="hidden" name="SecureType" value="3DPay" />
            <input type="hidden" name="Lang" value="tr" />
            <input type="submit" value="Gönder" />
        </div>
    </form>

</body>
</html>
