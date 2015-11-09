<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Edit3dPicture.aspx.vb" Inherits=".Edit3dPicture" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Video Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
    <div class="pagePopup">
        <div class="boxToggle">
            <div class="toggleTitle">
                <div class="titleText">3d Resim Düzenle</div>
            </div>
            <div class="toggleContent">
                <asp:Label ID="lblErr" runat="server"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                <tr>
                    <td>
                        <div class="dataForm">
                            <div class="row">
                                <div class="colTwo colBtn">
                                    <label><%=GetGlobalResourceObject("admin", "FilePath")%> :</label>
                                    <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
                                    <asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('txtFileName');" NavigateUrl="#"><i class="fa fa-folder-open-o"></i> Galeri</asp:HyperLink>
                                </div>
                            </div>
                        </div>		
                    </td>
                </tr>
                <tr>
                    <td id="tdPanel" runat="server"></td>
                </tr>
                </table>
                <div class="buttonGroup">
                    <asp:Button ID="btnSaveExit" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                    <asp:Button ID="btnDelete" runat="server" Text="<%$ Resources:admin,Delete %>" CausesValidation="False" CssClass="btnDefault" Visible="false"></asp:Button>
                    <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>