<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editoffertype.aspx.vb" Inherits="editoffertype" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
</head>
<body>

    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Yeni Teklif Tipi Kayıt</div>
                </div>

                <div class="toggleContent">
                    <label id="lblMessage" runat="server" />

                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                            	<label>Teklif Türü Kodu :</label>
                            	<asp:TextBox ID="txtOfferTypeCode" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOfferTypeCode" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="colTwo">
                            	<label>Teklif Türü Adı :</label>
								<asp:TextBox ID="txtOfferTypeName" runat="server" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOfferTypeName" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                            	<label>Teklif Türü Açıklama :</label>
                                <asp:TextBox ID="txtOfferTypeDesc" runat="server" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOfferTypeDesc" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            </div>
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

        <asp:Label Text="" runat="server" ID="lbl" />
    </form>
</body>
</html>
