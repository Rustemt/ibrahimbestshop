<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Cargo.aspx.vb" Inherits=".Cargo" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Yazdır</title>
<script type="text/JavaScript">
	function printdiv(printpage) {
		var headstr = "<html><head></head><body>";
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
</head>
<body>
<style>
body{
font-size:12px;
font-family:Tahoma;
color:#000;
}
</style>
    <form id="form1" runat="server">
    <div id="divCargo">
        <asp:Repeater runat="server" ID="rptCargo">
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
            <ItemTemplate>
                <table border="1" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td width="50%" align="left" valign="top">
                            <table width="100%" border="0" cellpadding="2" cellspacing="0">
                                <tr>
                                    <td colspan="2">
                                        <img src="<% =getThemePath() %>/images/logo.png" border="0" alt="logo" height="75"  />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100">
                                        <b>Gönderici</b>
                                    </td>
                                    <td>
                                        <%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyName")) %> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Adres</b>
                                    </td>
                                    <td>
                                        <%=Server.HtmlDecode(ConfigurationManager.AppSettings("CompanyAddress")) %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Telefon</b>
                                    </td>
                                    <td>
                                        <%# Eval("GöndericiTelefon") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Web Adres</b>
                                    </td>
                                    <td>
                                        <%= ConfigurationManager.AppSettings("SiteUrl").ToString().Replace("http://","") %>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="50%" align="left" valign="top">
                            <table width="100%" cellpadding="2" cellspacing="0" border="0">
                                <tr>
                                    <td width="60">
                                        <b>Alıcı</b>
                                    </td>
                                    <td>
                                        <%# Eval("Alıcı") %>
                                    </td>
                                    <td>
                                        <b>SN:</b>
                                        <%# Eval("SiparisKodu") %>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Adres</b>
                                    </td>
                                    <td>
                                        <%# Eval("AlıcıAdres") %>
                                        /
                                        <%# Eval("AlıcıIl")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Telefon</b>
                                    </td>
                                    <td>
                                        <%# Eval("AlıcıTelefon") %>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <p><asp:HyperLink ID="btnPrint" runat="server" CssClass="button" style=" background:#000; color:#FFF; padding:5px; text-decoration:none;" NavigateUrl="javascript:void(printdiv('divCargo'));" ToolTip="Sayfayı Yazdır">Yazdır</asp:HyperLink></p>
    </form>
</body>
</html>