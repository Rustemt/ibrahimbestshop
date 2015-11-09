<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editflowerproduct.aspx.vb" Inherits="ASPNetPortal.editflowerproduct" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Çiçek Sipariş Detayı</title>
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
<div class="pagePopup" id="flowerProducts">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Çiçek Sipariş Detayı</div>
		</div>
		<div class="toggleContent">
        	<asp:Label id="lbl" runat="server" ></asp:Label>
        	<div id="div_print">
            <asp:Repeater ID="rptContent" runat="server">
            <HeaderTemplate>
            	<div class="dataForm">
            </HeaderTemplate>
            <ItemTemplate>
            <div class="row">
                <div class="col1-1">
                	<asp:Image ID="imge" runat="server"></asp:Image>
                </div>
                <div class="col1-3">
                    <table width="100%" cellpadding="5" cellspacing="0" border="0">
                        <tbody>
                            <tr>
                                <td>: <asp:Label runat="server" ID="lblProductKod" Font-Bold="true"> </asp:Label></td>
                            </tr>
                            <tr>
                                <td>: <asp:Label runat="server" ID="lblProductPrice" Font-Bold="true"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>: <asp:Label runat="server" ID="lbladet" Font-Bold="true" ></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr />
            <div class="row">
            	<div class="colTwo">
                	<label><asp:Label ID="lblll" runat="server" Text="Çiçek Bilgileri" Font-Bold="True"></asp:Label></label>
                    <table width="100%" cellpadding="5" cellspacing="0" border="0">
                        <tbody>
                            <tr>
                            <td width="150"><asp:Label ID="lblCity" runat="server"><%=GetGlobalResourceObject("lang", "City")%></asp:Label></td>
                            <td>: <asp:Label ID="txtCity" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblDistrict" runat="server"><%=GetGlobalResourceObject("lang", "District")%></asp:Label></td>
                            <td>: <asp:Label ID="txtDistrict" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblCalender" runat="server"><%=GetGlobalResourceObject("lang", "Date1")%></asp:Label></td>
                            <td>: <asp:Label ID="txtCalender" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblTime" runat="server"><%=GetGlobalResourceObject("lang", "DeliveryTime")%></asp:Label></td>
                            <td>: <asp:Label ID="txtTime" runat="server"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="colTwo">
                	<label><asp:Label ID="lbll" runat="server" Text="Alıcı Bilgileri" Font-Bold="True"></asp:Label></label>
                    <table width="100%" cellpadding="5" cellspacing="0" border="0">
                        <tbody>
                            <tr>
                            <td width="150"><asp:Label ID="lblName" runat="server" Text="Alıcının Adı Soyadı"></asp:Label></td>
                            <td>: <asp:Label ID="txtName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblTel" runat="server" Text="Alıcının Telefonu"></asp:Label></td>
                            <td>: <asp:Label ID="txtTel" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblCause" runat="server" Text="Gönderim Nedeni"></asp:Label></td>
                            <td>: <asp:Label ID="txtCause" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblPlace" runat="server" Text="Gönderilecek Yer"></asp:Label></td>
                            <td>: <asp:Label ID="txtPlace" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                            <td><asp:Label ID="lblAdres" runat="server" Text="Gönderilecek Adres"></asp:Label></td>
                            <td>: <asp:Label ID="txtAdres" runat="server"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr />
            <div class="row">
            	<div class="colOne">
                	<label><asp:Label ID="lblcartt" runat="server" Text="Kart Bilgileri" Font-Bold="true"></asp:Label></label>
                    <table width="100%" cellpadding="5" cellspacing="0" border="0">
                        <tbody>
                            <tr>
                                <td width="150"><asp:Label ID="lblCartName" runat="server" Text="Kart İsmi"></asp:Label></td>
                                <td>: <asp:Label ID="txtCartName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblIsNameActive" runat="server" Text="Kartta İsim Gözüksün mü"></asp:Label></td>
                                <td>: <asp:Label ID="txtIsNameActive" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblCartMesaj" runat="server" Text="Kart Mesajı"></asp:Label></td>
                                <td>: <asp:Label ID="txtCartMesaj" runat="server"></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr />
            <div class="row">
            	<div class="colOne">
                	<label><asp:Label ID="Label1" runat="server" Text="Kart Çeşitleri" Font-Bold="true"></asp:Label></label>
                    <asp:Repeater ID="rptCarts" runat="server" OnItemDataBound="rptCarts_ItemDataBound">
                    <HeaderTemplate><ul class="flowerList"></HeaderTemplate>
                    <ItemTemplate>
                    <li>
                        <asp:Label ID="lblImgId" runat="server" Visible="true"></asp:Label>
                        <asp:Image ID="imgCarts" runat="server" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server"></asp:Label>
                        <asp:Label ID="lblPrice" runat="server"></asp:Label>
                        <br />
                    </li>
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
            </ItemTemplate>
            <FooterTemplate>
            	</div>
            </FooterTemplate>
            </asp:Repeater>
            </div>
            <div class="buttonGroup">
                <asp:HyperLink ID="btnPrint" runat="server" CssClass="btnDefault" NavigateUrl="javascript:void(printdiv('div_print'));" ToolTip="Sayfayı Yazdır">Yazdır</asp:HyperLink>
                <asp:Button ID="btnClose" runat="server" Text="Kapat" CssClass="btnDefault" />
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>