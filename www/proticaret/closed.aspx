<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ClosedPage" Codebehind="Closed.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">  
    <title><%=GetGlobalResourceObject("lang", "ClosedPage")%> : <%= ConfigurationManager.AppSettings("SiteName") %></title>    
    <META name="ROBOTS" content="NOINDEX, NOFOLLOW">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<form id="Form1" runat="server">
<center>
  <div id="middle_center" style="width:400px; height:400px; text-align:left;"  runat="server"></div>
 </center>
  </form>
</body>
</html>
