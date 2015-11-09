<%@ Page SmartNavigation="false" Language="vb" AutoEventWireup="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">    
    <title>Paypal Ödeme Sayfası</title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
        }
        function redirect() {
            ASPNetPortal.Paypal.PaypalRedirect(OnRequestComplete);
        }
        function OnRequestComplete(result) {
            if (result.indexOf("error") > 0) {
                document.getElementById('divError').style.display = "block";
                document.getElementById('divPaypal').style.display = "none";
                document.getElementById('<%=lblError.ClientID %>').innerHTML = result;
                
            }
            else {
                window.parent.location = result;
            }
        }
//        $(document).ready(function () {
//            redirect();
//        });
    </script>
</head>
<body>
    <form id="Form1" runat="server" method="post" action="">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
        <Services>
            <asp:ServiceReference Path="~/services/Paypal.asmx" />
        </Services>
    </asp:ScriptManager>
    <div id="divPaypal" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px;
        vertical-align: middle; text-align: center; background-color: White;">
        Paypal sitesine Bağlanıyor...
        <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
        <br />
        <br />
        Lütfen Bekleyiniz...
    </div>
    <div id="divError" style="display:none">
        <h2>Bir Hata Oluştu</h2>
        <br />
        <asp:Label runat="server" ID="lblError"></asp:Label>
        <br />
        <br />
                <a href="javascript:HideFrameErr()" class="Global_Normal_Link" id="LinkButton1" >Kapat</a> 
    </div>
  
    </form>
</body>
</html>
