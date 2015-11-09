<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AddFlowerCarts.aspx.vb" Inherits="ASPNetPortal.AddFlowerCarts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Mesaj Kartı Ekleme</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Kart Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <div class="alert alert-info" runat="server" id="alert" visible="false" ><asp:Label ID="lbl" runat="server"></asp:Label></div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Explanation")%> :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="<%$ Resources:admin,TaxMsg1 %>">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label>
                                                <asp:Label ID="lblDosyaAdi" runat="server"><%=GetGlobalResourceObject("admin", "SelectFile")%> :</asp:Label></label>
                                            <input id="oFile" type="file" size="13" name="oFile" runat="server" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>
                                                <asp:Label ID="lblPrice" runat="server"><%=GetGlobalResourceObject("admin", "Price")%> :</asp:Label></label>
                                            <asp:TextBox ID="txtPrice" runat="server" Text="0,00"></asp:TextBox>
                                            <asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtPrice" FilterType="Custom" ValidChars="1234567890,"></asp:FilteredTextBoxExtender>
                                        </div>
                                        <div class="colTwo">
                                            <label>Resim</label>
                                            <asp:Image ID="imge" runat="server"></asp:Image>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
