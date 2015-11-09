<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.UOrderList" CodeBehind="OrderList.aspx.vb" %>
<%@ Register src="corderlist.ascx" tagname="corderlist" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "Orders")%></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "UserOrders")%></div>
		</div>
		<div class="toggleContent">
			<uc1:corderlist ID="COrderList1" runat="server"></uc1:corderlist>
 
		</div>
	</div>
</div>
</form>
</body>
</html>