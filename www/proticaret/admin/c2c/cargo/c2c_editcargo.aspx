<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_editcargo.aspx.vb" Inherits="ASPNetPortal.c2c_editcargo" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Teslimat Kargosu Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Teslimat Kargosu Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" Text="" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <table cellpadding="0" cellspacing="0" border="0" width="100%" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>
                                                Kargo Adı :
                                                <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtcargoname" ErrorMessage="Kargo Adı Girmelisiniz">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txtcargoname" runat="server"></asp:TextBox>

                                        </div>
                                        <div class="colTwo">
                                            <label>
                                                Kargo Kodu :
                                                <asp:RequiredFieldValidator ID="rq2" runat="server" ControlToValidate="txtcargocode" ErrorMessage="Kargo Kodu Girmelisiniz">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txtcargocode" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label>
                                                Aktif mi :</label><label class="labelInput">
                                                    <asp:CheckBox ID="chkIsActive" runat="server" Text="Aktif/Pasif" /></label>
                                        </div>
                                    </div>

                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
