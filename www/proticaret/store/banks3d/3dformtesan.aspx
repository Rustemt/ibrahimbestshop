<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="3dformtesan.aspx.vb" Inherits="._3dformtesan" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript">
        function HideFrameErr() {
            window.parent.$find('ModalPopupExtender1').hide();
        }

    </script>
</head>
<body>
    <%=html%>
    <div  style="font-family:Verdana, Arial, Helvetica, sans-serif;font-size:16px;vertical-align:middle;text-align:center;background-color:White;" >Bankaya Bağlanıyor...
                    <img alt="Yükleniyor" src="<%=getThemePath() %>/images/loading.gif" />
                    <br />
                    <br />
                    Lütfen Bekleyiniz...  </div>       
</body>
</html>
