<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="uploadfile.aspx.vb" Inherits="ASPNetPortal.uploadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>ResimEkle</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>


<body>
    <form id="Form1" runat="server" >
        <div id="module" class="module" >
            <div id="module_content">
                <div id="module_title">
                    <span><span id="module_title_icon"></span>ResimEkle
                    </span>
                </div>
                <div class="module_box"  >
                    <table cellpadding="2">
                        <tr>
                            <td align="right">Resim :</td>
                            <td>
                                <asp:FileUpload ID="oFile" runat="server" size="20" />
                                <br />
                            </td>
                        </tr>

                    </table>
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                    <asp:Label ID="lblerror" runat="server" ></asp:Label>
                    <br />
                    <asp:Button ID="btnadd" runat="server" Text="Yükle" CssClass="button"></asp:Button>&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="İptal" CausesValidation="False" CssClass="button"></asp:Button>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="true"></asp:ValidationSummary>
                </div>
           
            </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
