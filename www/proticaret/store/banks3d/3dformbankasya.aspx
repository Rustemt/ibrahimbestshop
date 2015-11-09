<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>3D Ödeme Sayfası</title>

    <script type="text/javascript"> 
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 }
 function GetInnovaDataCs()
{
var e = document.getElementById("cardType");
var cardTypeVal = e.options[e.selectedIndex].text;
ASPNetPortal.Service3d.GetInnovaData(document.getElementById('pan').value,document.getElementById('Ecom_Payment_Card_ExpDate_Year').value,document.getElementById('Ecom_Payment_Card_ExpDate_Month').value,cardTypeVal,OnRequestComplete2);
}
function OnRequestComplete2(result)
{
var res='';
res =String(result);
if (res.indexOf('|')>0)
{
var rar=res.split('|');
document.getElementById('PaReq').value=rar[1]
document.forms[0].action = rar[2]
document.getElementById('TermUrl').value=rar[3]
document.getElementById('MD').value=rar[4]

document.forms[0].submit();
}
else
{
document.getElementById('PaReq').value=0
document.forms[0].action = "/store/banks3d/3dodemebankasya.aspx"
document.getElementById('TermUrl').value=0
document.getElementById('MD').value=0
document.forms[0].submit();
}
}
    </script>

</head>
<body>
    <form id="Form1" runat="server" method="post" action="">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
            <Services>
                <asp:ServiceReference Path="~/services/Service3d.asmx" />
            </Services>
        </asp:ScriptManager>
        <asp:Label ID="lbl" runat="server"></asp:Label>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px;
            vertical-align: middle; text-align: center; background-color: White;">
            Bankaya Bağlanıyor...
            <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz...
        </div>
        <div style="visibility: hidden;">
            <input runat="server" type="text" id="pan" name="pan" value="" size="20" />
            <input runat="server" type="text" id="cv2" name="cv2" size="4" value="" />
            <input runat="server" type="text" id="Ecom_Payment_Card_ExpDate_Year" name="Ecom_Payment_Card_ExpDate_Year"
                value="" />
            <input runat="server" type="text" id="Ecom_Payment_Card_ExpDate_Month" name="Ecom_Payment_Card_ExpDate_Month"
                value="" />
            <select name="cardType" id="cardType">
                <option value="1">VISA</option>
                <option value="2">MASTERCARD</option>
            </select>
            <input type="submit" value="Ödemeyi Tamamla" />
            <%-- banka parmetreleri--%>
           	<input type="hidden" name="PaReq" id="PaReq" value="" />
		    <input type="hidden" name="TermUrl" id="TermUrl" value="" />
		    <input type="hidden" name="MD" id="MD" value="" />
            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
        </div>
         
    </form>
</body>
</html>
