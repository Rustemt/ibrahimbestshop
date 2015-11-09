<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editopt.aspx.vb" Inherits="editopt2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bölüm Ekle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Özel Alan Düzenle</div>
                </div>

                <div class="toggleContent">
                    <label id="Label1" runat="server" />
                    <label id="lblMessage" runat="server" />
                    <div class="dataForm">

                        <div class="row">
                            <div class="colTwo">Özellik Grubu :</div>
                            <div class="colTwo">
                                <asp:DropDownList ID="ddlOptGroup" runat="server">
                                    <asp:ListItem Value="1">Özellik 1</asp:ListItem>
                                    <asp:ListItem Value="2">Özellik 2</asp:ListItem>
                                    <asp:ListItem Value="3">Özellik 3</asp:ListItem>
                                    <asp:ListItem Value="4">Özellik 4</asp:ListItem>
                                    <asp:ListItem Value="5">Özellik 5</asp:ListItem>
                                    <asp:ListItem Value="6">Özellik 6</asp:ListItem>
                                    <asp:ListItem Value="7">Özellik 7</asp:ListItem>
                                    <asp:ListItem Value="8">Özellik 8</asp:ListItem>
                                    <asp:ListItem Value="9">Özellik 9</asp:ListItem>
                                    <asp:ListItem Value="10">Özellik 10</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">Özellik Verisi :</div>
                            <div class="colTwo">
                                <asp:TextBox ID="txtOptValue" runat="server" MaxLength="50"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="btnGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" ToolTip="Yeni proje ekler." OnClick="btnSave_Click" />
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
