<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editcurtain.aspx.vb" Inherits="ASPNetPortal.editcurtain" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Yemek Sipariş Detayı</title>
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
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Yemek Sipariş Detayı</div>
		</div>
		<div class="toggleContent">
        	<asp:Label ID="lbl" runat="server"></asp:Label>
            <div id="div_print">
                <asp:Repeater ID="rtCurtain" runat="server">
                <HeaderTemplate><div class="dataForm"></HeaderTemplate>
                <ItemTemplate>
                <div class="row">
                    <div class="col1-1">
                        <asp:Image ID="imge" runat="server"></asp:Image>
                    </div>
                    <div class="col1-3">
                        <table width="100%" cellpadding="5" cellspacing="0" border="0">
                            <tbody>
                                <tr>
                                    <td><asp:Label runat="server" ID="lblProductKod" Font-Bold="true"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><asp:Label runat="server" ID="lblProductPrice" Font-Bold="true"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><asp:Label runat="server" ID="lbladet" Font-Bold="true"></asp:Label></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="colOne">
                        <label><asp:Label runat="server" ID="lblDetay" Text="Detay:"></asp:Label></label>
                        <asp:Label runat="server" ID="txtDetay"></asp:Label>
                    </div>
                </div>
                </ItemTemplate>
                <FooterTemplate></div></FooterTemplate>
                </asp:Repeater>
                <div class="buttonGroup">
                    <asp:HyperLink ID="btnPrint" runat="server" CssClass="btnDefault" NavigateUrl="javascript:void(printdiv('div_print'));" ToolTip="Sayfayı Yazdır">Yazdır</asp:HyperLink>
                    <asp:Button ID="btnClose" runat="server" Text="Kapat" CssClass="btnDefault" />
                </div>
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>