<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditHtml" CodeBehind="edithtml.aspx.vb" %>

<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Html Düzenle</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Html Düzenle</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label>Html Türü :</label>
                                <asp:RadioButtonList ID="rblist" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="radioList">
                                    <asp:ListItem Value="n">&#214;zg&#252;n Ý&#231;erik</asp:ListItem>
                                    <asp:ListItem Value="c">Kopya Ý&#231;erik(Klon)</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td id="tdClone" runat="server">
                                            <div class="row">
                                                <div class="colOne"><b>Kopyalanacak Ýçerik:</b></div>
                                            </div>
                                            <div class="row">
                                                <div class="colTwo">
                                                    <label>Sayfa :</label>
                                                    <asp:DropDownList ID="ddlPages" runat="server" AutoPostBack="True">
                                                        <asp:ListItem Value="0">--Se&#231;iniz--</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="colTwo">
                                                    <label>Modül :</label>
                                                    <asp:DropDownList ID="ddlModules" runat="server" AutoPostBack="True">
                                                        <asp:ListItem Value="0">--Se&#231;iniz--</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label>Html :</label>
                                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="350px" Width="100%" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <p>
                            <asp:CheckBox ID="chkOnlyMainPage" runat="server" CssClass="fLeft"></asp:CheckBox>&nbsp;Kategori Seçiminde Gösterme : <small>Not: Ýþaretlenirse sadece "Anasayfa"ya týklandýðýnda görünür. </small></p>
                        <asp:LinkButton ID="updateButton" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
                        <asp:Button Text="Ýptal" runat="server" ID="cancelButton" CausesValidation="False" CssClass="btnDefault" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
