<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditXml" Codebehind="editxml.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Xml Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div id="module" class="module">
<div id="module_content">
<div id="module_title"> <span> <span id="module_title_icon"></span>Xml Düzenle
</span> </div> 
<div>
    <table cellpadding="2">
        <tr>
            <td align="right">XML Veri Dosyasý :</td>
            <td>
            <asp:TextBox ID="XmlDataSrc" runat="server" ToolTip="Örnek : uploads/xmlfiles/sales.xml" />
            <asp:HyperLink ID="showGalleryButton" runat="server" NavigateUrl="#" onclick="BrowseServer('XmlDataSrc');" Text="Galeri"></asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="right">XSL/T Transform Dosyasý :</td>
            <td>
            <asp:TextBox ID="XslTransformSrc" runat="server" ToolTip="Örnek : uploads/xmlfiles/sales.xsl" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#" onclick="BrowseServer('XslTransformSrc');" Text="Galeri"></asp:HyperLink>
            </td>
        </tr>       
    </table>
<asp:LinkButton ID="updateButton" runat="server" CssClass="button"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
</div>
</div>
</div>
</form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
