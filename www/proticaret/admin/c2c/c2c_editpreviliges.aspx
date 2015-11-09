<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_editpreviliges.aspx.vb" Inherits="ASPNetPortal.c2c_editpreviliges" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="/admin/css/reset.css" />
    <link rel="Stylesheet" type="text/css" href="/admin/css/Portal.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><span>Yetkiler </span></div>
                </div>
                <div class="toggleContent">
                    <label id="lblMessage" runat="server" />
                    <asp:Panel ID="pnlPreviliges" runat="server">
                        <div class="dataTable">
                            <table width="100%" cellspacing="0" cellpadding="5" border="0">
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td>Mağaza Yetkileri
                                            <asp:CheckBox ID="chkAdd" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" AutoPostBack="true" /></td>

                                    </tr>
                                    <tr class="textRed">
                                        <td><b><%=GetGlobalResourceObject("admin", "PropertyName")%></b></td>
                                        <td align="left"><b><%=GetGlobalResourceObject("admin", "AddProductPermission")%></b></td>

                                    </tr>
                                    <tr>
                                        <td>Farklı Stok Tipinde Ürün Ekleme</td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkICat" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td>Tekstil Formatında Tanımlama</td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIBrand" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td>Ürün Resmi </td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIImage" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "ProductVideo")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIVideo" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "Unit")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIUnit" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "ColorOrSize")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIColorAndSize" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "Variant2")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIVariant" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "Alternative")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkIAlternative" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td><%=GetGlobalResourceObject("admin", "ConsumablesMaterial")%></td>
                                        <td align="left">
                                            <asp:CheckBox ID="chkISupplies" runat="server" Text="<%$ Resources:admin,StatusYesOrNo %>" /></td>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td align="left">
                                            <label id="lblMessage2" runat="server" />
                                            <label id="lblMessage3" runat="server" />
                                            <asp:CheckBox ID="cball1" runat="server" AutoPostBack="True" Text="<%$ Resources:admin,All2 %>" /></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </asp:Panel>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
                        <asp:Button ID="btnClose" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $('#txtSPhone').keyup(
            function () {
                if (this.value.match(/[^0-9]/g)) {
                    this.value = this.value.replace(/[^0-9]/g, '');
                }
            }
        );

        $('#txtSFax').keyup(
            function () {
                if (this.value.match(/[^0-9]/g)) {
                    this.value = this.value.replace(/[^0-9]/g, '');
                }
            }
        );

        $('#txtSMobile').keyup(
            function () {
                if (this.value.match(/[^0-9]/g)) {
                    this.value = this.value.replace(/[^0-9]/g, '');
                }
            }
        );

        var newwindow;
        function popup(url) {
            newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
            if (window.focus) { newwindow.focus() }
        }
    </script>
</body>
</html>
