<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editposter.aspx.vb" Inherits="ASPNetPortal.editposter" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Poster Sipariş Detayı</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Poster Sipariş Detayı</div>
		</div>
		<div class="toggleContent">
            <div id="div_print">
                <asp:Repeater ID="rptContent" runat="server">
                <HeaderTemplate><div class="dataForm"></HeaderTemplate>
                <ItemTemplate>
                <div class="row">
                	<div class="col1-1">
                        <table border="0" align="center" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td valign="bottom"><img id="img1" runat="server"></td>
                                    <td id="td1" runat="server"></td>
                                    <td valign="bottom"><img id="img2" runat="server"></td>
                                </tr>
                                <tr>
                                    <td id="td2" runat="server"></td>
                                    <td id="td3" runat="server" align="center"><img id="img3" runat="server" /></td>
                                    <td id="td4" runat="server"></td>
                                </tr>
                                <tr>
                                    <td><img id="img4" runat="server"></td>
                                    <td id="td5" runat="server"></td>
                                    <td><img id="img5" runat="server"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col1-3">
                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                            <tbody>
                                <tr>
                                    <td><asp:Label runat="server" ID="lblProductKod" Font-Bold="true"> </asp:Label></td>
                                </tr>
                                <tr>
                                    <td><asp:Label runat="server" ID="lblProductPrice" Font-Bold="true"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><asp:Label runat="server" ID="lbladet" Font-Bold="true"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><asp:Label runat="server" ID="txtDetail"></asp:Label></td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
                </ItemTemplate>
                <FooterTemplate></div></FooterTemplate>
                </asp:Repeater>
                <div class="buttonGroup">
                    <asp:Button runat="server" ID="btnClose" Text="Kapat" CssClass="btnDefault" />
                </div>
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>