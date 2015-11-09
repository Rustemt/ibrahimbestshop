<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditFormLookup" Codebehind="EditFormLookup.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Deðer Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Deðer Düzenle
</span> </div> 
<div>
    <table cellpadding="2">
        <tr>
            <td align="right">Özellik Adý :</td>
            <td>
            <asp:TextBox ID="txtIl" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Özellik Adý Girmelisiniz." ControlToValidate="txtIl">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right"><asp:Label ID="lblmail" runat="server">Mail Adresi :</asp:Label></td>
            <td>
            <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rq2" runat="server" ErrorMessage="Mail Adresi giriniz." ControlToValidate="txtmail">*</asp:RequiredFieldValidator>
            </td>
        </tr>  
         <tr>
            <td align="right">Varsayýlan (Seçili) :</td>
            <td><asp:CheckBox ID="chkDefault" runat="server"></asp:CheckBox></td>
        </tr>       
    </table>
    <label><asp:Label ID="lblErr" runat="server"></asp:Label></label>
    <asp:Button ID="btnAdd" runat="server" CssClass="button" Text="Kaydet"></asp:Button>
    <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Ýptal" CausesValidation="False"></asp:Button>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
</div>
</div>
</div>
</form>
</body>
</html>
