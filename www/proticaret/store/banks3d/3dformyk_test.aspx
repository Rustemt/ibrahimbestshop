<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%--<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Web.Script.Services" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="System.Web.Services.Protocols" %>
<%@ Import Namespace="System.Xml" %>--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title>3D Ödeme Sayfasý</title>

    <script type="text/javascript"> 
  function HideFrameErr()
 { 
 window.parent.$find('ModalPopupExtender1').hide();
 }
 function GetPosnetDataCs()
{
ASPNetPortal.Service3d.GetPosnetData(document.getElementById('pan').value,document.getElementById('Ecom_Payment_Card_ExpDate_Year').value,document.getElementById('Ecom_Payment_Card_ExpDate_Month').value,document.getElementById('cv2').value,OnRequestComplete2);
}
function OnRequestComplete2(result)
{
alert(result);
var res='';
res =String(result);
if (res.indexOf('|')>0)
{
var rar=res.split('|');
document.getElementById('posnetData').value=rar[1]
document.getElementById('posnetData2').value=rar[2]
document.getElementById('digest').value=rar[3]
document.Form1.action= '<%=Session("Bank3dGetWayAddress")%>'
//"https://www.posnet.ykb.com/3DSWebService/YKBPaymentService"
//document.Form1.action="http://setmpos.ykb.com/3DSWebService/YKBPaymentService"

var t = document.getElementById('useJokerVadaa');
if (t.value == 0)
{
t.parentNode.removeChild(t);
}
//document.Form1.submit();
}
else
{
document.getElementById('posnetData').value=0
document.getElementById('posnetData2').value=0
document.getElementById('digest').value=0
document.Form1.action='<%=Session("Bank3dGetWayAddress")%>' 
//"https://www.posnet.ykb.com/3DSWebService/YKBPaymentService"
//document.Form1.action="http://setmpos.ykb.com/3DSWebService/YKBPaymentService"
//document.Form1.submit();
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
            Bankaya Baðlanýyor...
            <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
            <br />
            <br />
            Lütfen Bekleyiniz...
        </div>
        <div >
            <input runat="server" type="text" id="pan" name="pan" value="" size="20" />
            <input runat="server" type="text" id="cv2" name="cv2" size="4" value="" />
            <input runat="server" type="text" id="Ecom_Payment_Card_ExpDate_Year" name="Ecom_Payment_Card_ExpDate_Year"
                value="" />
            <input runat="server" type="text" id="Ecom_Payment_Card_ExpDate_Month" name="Ecom_Payment_Card_ExpDate_Month"
                value="" />
            <select name="cardType">
                <option value="1">Visa</option>
                <option value="2">MasterCard</option>
            </select>
            <input type="submit" value="Ödemeyi Tamamla" />
            <%-- YKB parmetreleri--%>
            <input name="mid" type="hidden" id="mid" value="<%=Session("GetwayUserName")%>" />
            <input name="posnetID" type="hidden" id="posnetID" value="<%=Session("GetwayId") %>" />
            <input name="posnetData" type="hidden" id="posnetData" value="" />
            <input name="posnetData2" type="hidden" id="posnetData2" value="" />
            <input name="digest" type="hidden" id="digest" value="" />
            <input name="vftCode" type="hidden" id="vftCode" value="" />
            <input name="useJokerVadaa" type="hidden" id="useJokerVadaa" value="0" />
            <%--<input name="merchantReturnURL" type="hidden" id="merchantReturnURL" value="<%=BaseUrl & "/store/banks3d/3dodemeyk.aspx"%>" />--%>
            <input name="merchantReturnURL" type="hidden" id="merchantReturnURL" value="<%= iif(Request.IsSecureConnection, BaseUrl.Replace("http://", "https://") & "/store/banks3d/3dodemeyk.aspx", BaseUrl & "/store/banks3d/3dodemeyk.aspx")%>" />
            <input name="lang" type="hidden" id="lang" value="tr" />
            <input name="lang" type="hidden" id="serviceresult" value="" />
            <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1">Kapat</a>
        </div>
         
    </form>
</body>
</html>
