<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="cancelorderdetail.aspx.vb" Inherits="ASPNetPortal.cancelorderdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">  
    <title>
       Ürün İade-Değişim Listesi
    </title>  
        <script type="text/JavaScript">

            function printdiv(printpage) {
                var headstr = "<html><head ></head><body>";
                var footstr = "</body>";


                if (document.getElementById != null) {
                    var newstr = document.getElementById(printpage).innerHTML;
                    var oldstr = document.body.innerHTML;
                    document.body.innerHTML = headstr + newstr + footstr;
                    window.print();
                    document.body.innerHTML = oldstr;
                }
                else {
                    //document.all.item(printpage).innerHTML;
                    var newstr = document.all.item(printpage).innerHTML
                    var oldstr = document.body.innerHTML;
                    document.body.innerHTML = headstr + newstr + footstr;
                    window.print();
                    document.body.innerHTML = oldstr;
                }
                return false;
            }
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head> 
<body>
<form runat="server" id="form1">
<div id="middle_center"  runat="server"></div>
</form>
</body>
</html>
