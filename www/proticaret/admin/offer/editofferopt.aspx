<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editofferopt.aspx.vb" Inherits="editofferopt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Form Kontrol Ekle</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="module" class="pagePopup">
            <div class="boxToggle" runat="server">
                <div class="toggleTitle">
                    <div class="titleText">Teklif Özel Alan Düzenle</div>
                </div>

                <div class="toggleContent">
                    <label id="lblMessage" runat="server" />
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>Form Adı</label>
                            </div>
                            <div class="colTwo">
                                <label>Siparişte Doviz Kuru Güncellensin</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <asp:TextBox ID="txtFormName" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                 <label class="labelInput"><asp:CheckBox ID="chkdoviz" Text="Aktif/Pasif" runat="server" /></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label class="textRed">Seçme Liste Alanlar</label>
                            </div>
                            <div class="colTwo">
                                <label class="textRed">Onaylamalı Alanlar</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 1</label>
                                <asp:TextBox ID="txtOpt1" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özellik 1</label>
                                <asp:TextBox ID="txtOpt11" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 2</label>
                                <asp:TextBox ID="txtOpt2" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 2</label>
                                <asp:TextBox ID="txtOpt12" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 3</label>
                                <asp:TextBox ID="txtOpt3" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 3</label>
                                <asp:TextBox ID="txtOpt13" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 4</label>
                                <asp:TextBox ID="txtOpt4" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 4</label>
                                <asp:TextBox ID="txtOpt14" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 5</label>
                                <asp:TextBox ID="txtOpt5" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 5</label>
                                <asp:TextBox ID="txtOpt15" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 6</label>
                                <asp:TextBox ID="txtOpt6" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 6</label>
                                <asp:TextBox ID="txtOpt16" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 7</label>
                                <asp:TextBox ID="txtOpt7" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 7</label>
                                <asp:TextBox ID="txtOpt17" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 8</label>
                                <asp:TextBox ID="txtOpt8" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 8</label>
                                <asp:TextBox ID="txtOpt18" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 9</label>
                                <asp:TextBox ID="txtOpt9" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 9</label>
                                <asp:TextBox ID="txtOpt19" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Özelik 10</label>
                                <asp:TextBox ID="txtOpt10" runat="server"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label>Özelik 10</label>
                                <asp:TextBox ID="txtOpt20" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="btnGroup">
                        <asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" />
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
