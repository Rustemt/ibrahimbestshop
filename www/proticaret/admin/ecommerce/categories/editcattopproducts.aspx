<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditCatTopProducts" CodeBehind="EditCatTopProducts.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Top 10 Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Top 10 Düzenle</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>Kategori :</label>
                                <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label>
                                    <asp:CheckBox ID="chkOnlyMainPage" runat="server"></asp:CheckBox>
                                    Sadece Anasayfada Göster</label>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:LinkButton ID="updateBtn" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> Kaydet</asp:LinkButton>
                        <asp:Button Text="Ýptal" runat="server" ID="cancelBtn" CausesValidation="False" CssClass="btnDefault" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
