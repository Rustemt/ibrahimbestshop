<%@ Register TagPrefix="uc1" TagName="CImageList" Src="CImageList.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditImages" Codebehind="EditImages.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Resim Düzenle</title>    
</head>
<body>
    <form id="Form1" runat="server">
    	<div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Resim Düzenle</div>
                </div>
                <div class="toggleContent">
                	<div class="dataTable">
                        <uc1:CImageList ID="CImageList1" runat="server"></uc1:CImageList>
                        <asp:Label ID="lblErr" runat="server"></asp:Label>
                        <div class="buttonGroup">
	                        <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CssClass="btnDefault" CausesValidation="False"></asp:Button>
                        </div>
                    </div>
                 </div>
             </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
