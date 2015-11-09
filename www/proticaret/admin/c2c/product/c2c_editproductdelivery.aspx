<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_editproductdelivery.aspx.vb" Inherits="ASPNetPortal.c2c_editproductdelivery" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Ürün Teslimat Şablonu Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Ürün Teslimat Şablonu Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colOne">
                                            <asp:DropDownList ID="ddlDeliveryList" runat="server" AutoPostBack="true"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>
                                                Şablon Adı :
                                                <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txttempname" ErrorMessage="Şablon Adı Girmelisiniz">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txttempname" runat="server" Enabled="false"></asp:TextBox>

                                        </div>
                                        <div class="colTwo">
                                            <label>Birlikte Gönderim :</label>
                                            <asp:DropDownList runat="server" ID="ddlsendtype" Enabled="false">
                                                <asp:ListItem Text="Uygun" Value="1" />
                                                <asp:ListItem Text="Uygun Değil" Value="0" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>Kargo Ücreti : </label>
                                            <asp:DropDownList runat="server" ID="ddlcargotype" Enabled="false">
                                                <asp:ListItem Text="Alıcı Öder" Value="1" />
                                                <asp:ListItem Text="Mağaza Öder" Value="2" />
                                            </asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                            <label>
                                                Aktif mi :<label class="labelInput">
                                                    <asp:CheckBox ID="chkIsActive" runat="server" Text="Aktif/Pasif" Enabled="false" /></label></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label>Kargo Şirketleri :</label>
                                        <div class="dataTable" style="padding: 10px; border: 1px solid #d8d9db;">
                                            <style type="text/css">
                                                .dataTable .dataTableInput input {
                                                    display: inline-block;
                                                    margin-right: 10px;
                                                }

                                                .dataTable .dataTableInput label {
                                                    display: inline-block;
                                                }
                                            </style>
                                            <asp:CheckBoxList CssClass="dataTableInput" runat="server" ID="cblcargos" Enabled="false"></asp:CheckBoxList>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <label>Teslimat Notu :</label>
                                        <asp:TextBox runat="server" ID="txtnote" TextMode="MultiLine" Enabled="false" />
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" ToolTip="Ürünü Şablonla eşleştirin." />
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
