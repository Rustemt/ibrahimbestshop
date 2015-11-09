<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.paymentconfirmPage" EnableViewState="False" Codebehind="paymentconfirm.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">  
    <title>
        <%=GetGlobalResourceObject("lang", "PaymentConfirmation")%>
    </title> 
      <script type="text/JavaScript">
 
javascript:window.history.forward(-1);

function printdiv(printpage)
{
var headstr = "<html><head></head><body>";
var footstr = "</body>";


if (document.getElementById != null)
{
var newstr = document.getElementById(printpage).innerHTML;
var oldstr = document.body.innerHTML;
document.body.innerHTML = headstr+newstr+footstr;
window.print(); 
document.body.innerHTML = oldstr;
}
else
{
//document.all.item(printpage).innerHTML;
var newstr = document.all.item(printpage).innerHTML
var oldstr = document.body.innerHTML;
document.body.innerHTML = headstr+newstr+footstr;
window.print(); 
document.body.innerHTML = oldstr;
}
return false;
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div id="container">
    <form id="Form1" runat="server">
 <div id="header" runat="server"></div>
<div id="main">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td id="left" runat="server" visible="false" valign="top"><a class="middleLeftButton"></a></td>
		<td id="center" valign="top">
		<div id="center_top">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td id="top_left" runat="server" visible="false" valign="top"></td>
					<td id="top_center" runat="server" visible="false" valign="top"></td>
					<td id="top_right" runat="server" visible="false" valign="top"></td>
				</tr>
			</table>
		</div>
		<div id="center_middle">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td id="middle_left" runat="server" visible="false" valign="top"><a class="middleLeftButton"></a></td>
					<td id="middle_center" runat="server" valign="top"></td>
					<td id="middle_right" runat="server" visible="false" valign="top"></td>
				</tr>
			</table>
		</div>
		<div id="center_bottom">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td id="bottom_left" runat="server" visible="false" valign="top"></td>
					<td id="bottom_center" runat="server" visible="false" valign="top"></td>
					<td id="bottom_right" runat="server" visible="false" valign="top"></td>
				</tr>
			</table>
		</div>
		</td>
		<td id="right" runat="server" visible="false" valign="top"></td>
	</tr>
</table>
</div>
<div id="footer" runat="server"></div>
    </form>
</div>
</body>
</html>
