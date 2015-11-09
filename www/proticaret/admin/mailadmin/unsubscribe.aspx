<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="unsubscribe.aspx.vb" Inherits="ASPNetPortal.unsubscribe" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Mail Listesinden Çıkar</title>
    <link rel="stylesheet" type="text/css" href="/admin/assets/css/style.css" />
</head>
<body style="background-color: #FFF; background-image: none; text-align: center;">
    <form id="form1" runat="server">
        <div class="pagePopup" style="text-align: left;">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Mail Listesinden Çıkar</div>
                </div>
                <div class="toggleContent">
                    <div class="alert alert-info" id="divalert" runat="server" visible="false">
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label></div>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label>Mail Adresiniz :</label>
                                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("lang", "Captha")%></label>
                                <img runat="server" id="imgCaptha" src="/services/captha.aspx" border="0" alt="" width="132" height="30" />
                                <asp:TextBox ID="txtCaptha" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <asp:Button ID="btnUnSub" runat="server" CssClass="btnDefault" Text="Mail Listesinden Çıkar" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
