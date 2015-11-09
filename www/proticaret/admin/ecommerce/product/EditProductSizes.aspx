<%@ Register TagPrefix="uc1" TagName="cproductsizelist" Src="cproductsizelist.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" Inherits="EditProductSizes" CodeBehind="EditProductSizes.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Renk Beden Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Renk Beden Tanýmlarý</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <uc1:cproductsizelist ID="cproductsizelist1" runat="server"></uc1:cproductsizelist>
                    <div class="buttonGroup" style="float: left;">
                        <asp:Button ID="btnCancel" runat="server" Text="Kapat" CssClass="btnDefault" CausesValidation="False"></asp:Button>
                    </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
