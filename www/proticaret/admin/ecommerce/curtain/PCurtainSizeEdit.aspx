<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PCurtainSizeEdit.aspx.vb" Inherits=".PCurtainSizeEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Perde Ölçü Tanımları</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Perde Ölçü Tanımları</div>
                </div>
                <div class="toggleContent">
                    <asp:Label Text="" ID="lbl" runat="server" />
                    <asp:Panel ID="pnlSizeAdd" runat="server">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colTwo">
                                    <label>
                                        Değer :
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSizeAdd" ErrorMessage="*" ValidationGroup="add"></asp:RequiredFieldValidator></label>
                                    <asp:TextBox ID="txtSizeAdd" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ErrorMessage="Rakam Giriniz" CssClass="textRed" ValidationExpression="0123456789," ControlToValidate="txtSizeAdd" runat="server" />
                                </div>
                                <div class="colTwo">
                                    <label>Yuvarlanacak Üst Değer</label>
                                    <asp:TextBox ID="txtSizeRoundAdd" runat="server"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="txtSizeRoundAdd_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtSizeRoundAdd" ValidChars="0123456789,"></cc1:FilteredTextBoxExtender>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Etkileme Tutarı</label>
                                    <asp:TextBox ID="txtFactorPriceAdd" runat="server">0</asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="txtFactorPriceAdd_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtFactorPriceAdd" ValidChars="0123456789,"></cc1:FilteredTextBoxExtender>
                                </div>
                            </div>
                        </div>
                        <div class="buttonGroup">
                            <asp:Button ID="btnAddSize" runat="server" ValidationGroup="add" CssClass="btnDefault" Text="Kaydet" />
                            <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="İptal" />
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlSizeEdit" runat="server">
                        <div class="dataForm">
                            <div class="row">

                                <div class="colTwo">
                                    <label>Yuvarlanacak Üst Değer</label>
                                    <asp:TextBox ID="txtSizeEdit" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ErrorMessage="errormessage" ControlToValidate="txtSizeEdit" ValidationExpression="0123456789," ID="rev1" runat="server" />
                                </div>
                                <div class="colTwo">
                                    <label>Yuvarlanacak Üst Değer</label>
                                    <asp:TextBox ID="txtSizeRoundEdit" runat="server"></asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="txtSizeRoundEdit_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtSizeRoundEdit" ValidChars="0123456789,"></cc1:FilteredTextBoxExtender>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Değer:</label>
                                    <asp:TextBox ID="txtFactorPriceEdit" runat="server">0</asp:TextBox>
                                    <cc1:FilteredTextBoxExtender ID="txtFactorPriceEdit_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtFactorPriceEdit" ValidChars="0123456789,"></cc1:FilteredTextBoxExtender>
                                </div>
                            </div>
                        </div>
                        <div class="buttonGroup">
                            <asp:Button ID="btnEditSize" runat="server" ValidationGroup="edit" CssClass="btnDefault" Text="Güncelle" />
                            <asp:Button ID="btnCancel2" runat="server" CssClass="btnDefault" Text="İptal" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
