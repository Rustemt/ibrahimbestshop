<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_editcategorycomission.aspx.vb" Inherits="ASPNetPortal.c2c_editcategorycomission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kategori Detayı</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><span id="spnTitle" runat="server">Kategori Detayı</span></div>
                </div>
                <div class="toggleContent">
                    <div class="row">
                        <div class="col1-1">
                            <asp:Literal ID="Tree2" runat="server" EnableViewState="False"></asp:Literal>
                        </div>
                        <div class="col1-3">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label>  :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblSelectedCategory" runat="server" Font-Bold="true"></asp:Label></label>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <div class="buttonGroup"> 
                                            <asp:HyperLink ID="lnkUpdate" runat="server" CssClass="btnDefault"><i class="fa fa-pencil"></i>  </asp:HyperLink> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="buttonGroup">
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" />
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
