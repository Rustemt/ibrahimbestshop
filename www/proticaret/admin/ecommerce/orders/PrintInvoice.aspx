<%@ Page Language="vb" AutoEventWireup="false"  %>
<%@ Register src="ucPrintInvoice.ascx" tagname="ucPrintInvoice" tagprefix="uc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Fatura Yazdır</title>
</head>
<body>
<form id="form1" runat="server">
<uc1:ucPrintInvoice ID="ucPrintInvoice1" runat="server" />
</form>
</body>
</html>