<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editoffersend.aspx.vb" Inherits="editoffersend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Sevkiyat Kartı</div>
                </div>
                <div class="toggleContent">
                    <label id="lblMessage" runat="server"></label>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                            	<label>Sevk Kodu :</label>
                                <asp:TextBox ID="txtOfferSendCode" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOfferSendCode">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                            	<label>Sevk Yöntemi Adı :</label>
                                <asp:TextBox ID="txtOfferSend" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="txtOfferSendRFV" runat="server" ControlToValidate="txtOfferSend">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                            	<label>Açıklama :</label>
                                <asp:TextBox ID="txtOfferSendDesc" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOfferSendDesc">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="buttonGroup">
                            <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" OnClick="btnSave_Click" />
                            <asp:Label ID="lblError" runat="server" Visible="false"></asp:Label>
                            <asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <asp:Label Text="" runat="server" ID="lbl" />
    </form>
</body>
</html>
