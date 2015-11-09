<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformpaymec.aspx.vb" Inherits="._3dformpaymec" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
        }

    </script>

</head>
<body>
    <%  
        
        Dim strAmount As String = Format(Session("Tutar"), ConfigurationManager.AppSettings("CurrencyFormatString")).Replace(".", ",") 'İşlem Tutarı  Burada çevirme işlemi yapmayacağız
        Dim taksit As String = Session("Taksit")
        Dim strInstallmentCount As String
        If taksit.Length = 1 Then
            strInstallmentCount = IIf(Session("Taksit") > 0, "0" & Session("Taksit"), "0") 'Taksit Sayısı. Boş gönderilirse taksit yapılmaz
        Else
            strInstallmentCount = IIf(Session("Taksit") > 0, Session("Taksit"), "0") 'Taksit Sayısı. Boş gönderilirse taksit yapılmaz
        End If
         
      
        Dim siteno As String = Session("GetwayUserName")
            
        Dim banka As String = Session("GetwayId") ' Site Numarasi olarak kullanılabilir.
        Dim anahtar As String = Session("Key3D") '3D Secure şifreniz 
        ' Dim strProvisionPassword As String = Session("GetwayPassword") 'SanalPos şifreniz    
        Dim cardname As String = Session("CardHolderName")
        Dim cardnumber As String = Session("CardNumber")
        Dim cardexpiredatemonth As String = Session("ExpMonth")
        Dim cardexpiredateyear As String = Session("ExpYear")
        Dim cardcvv2 As String = Session("CvcNumber")
        Dim strSuccessURL As String = BaseUrl & "/store/banks3d/3dodemepaymec.aspx"
        If ConfigurationManager.AppSettings("UseSsl") = "True" Then
            strSuccessURL = BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemepaymec.aspx"
        End If
       
        Dim strStoreKey As String = vpos2.EncryptSHA1(anahtar & siteno & banka & strAmount & strInstallmentCount)
 
        
        ' Aşağıda bizim yapmış olduğumuz hashleme yapılmakta paymec için lazım olabilir
        'Dim SecurityData As String = UCase(vpos2.GetSHA1(strProvisionPassword + _strTerminalID))
        'Dim HashData As String = UCase(vpos2.GetSHA1(strTerminalID + strOrderID + strAmount + strSuccessURL + strErrorURL + strType + strInstallmentCount + strStoreKey + SecurityData))
 
        Dim posturl As String = Session("Bank3dGetWayAddress") ' Değeri = "https://www.paymec.com/paymecodeme/paymec.asp"
    
    %>

    <form id="Form1" method="post" action="<%=posturl%>">

        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz... 
        </div>

        <div style="visibility: visible;">

            <input type="hidden" name="siteno" value="<%=siteno%>"/>
            <%--Paymec in verdiği site no gönderilecek--%>
            <input type="hidden" name="banka" value="<%=banka%>"/>
            <%--Banka idsi gönderilecek "1"--%>
            <input type="hidden" name="PSKey" value="<%=strStoreKey%>"/>
            <%--3d Secure Key olacak--%>
            <input type="hidden" name="tutar" value="<%=strAmount%>"/>
            <%-- tutar , ile ayrılacak "276,78"--%>
            <input type="hidden" name="taksit" value="<%=strInstallmentCount%>"/>
            <%-- taksit tek çekimse sadece "0" , değilse"05"--%>
            <input type="hidden" name="kartisim" value="<%=cardname %>"/>
            <%--Kart üzerinde yazan isim--%>
            <input type="hidden" name="kartno" value="<%=cardnumber %>"/>
            <%--Kart Numarasi--%>
            <input type="hidden" name="kartay" value="<%=cardexpiredatemonth%>"/>
            <%--Kart Son kullanma ay--%>
            <input type="hidden" name="kartyil" value="<%=cardexpiredateyear%>"/>
            <%--Kart Son kullanma yıl--%>
            <input type="hidden" name="kartcvv" value="<%=cardcvv2%>"/>
            <%--3 Haneli güvenlik şifresi--%>


            <input type="submit" id="ttt" value="Ödemeyi Tamamla" />
            
            <script language="javascript">
                document.getElementById("ttt").click();
            </script>
            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>

        </div>
    </form>
</body>
</html>
