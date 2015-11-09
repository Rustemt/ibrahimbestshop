<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductOption" CodeBehind="EditProductOption.aspx.vb" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Varyant Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Varyant Düzenle</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
                        <tr>
                            <td>
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "VariantName")%> :
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Varyant Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
                                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
                                            <ew:MaskedTextBox ID="txtOrder" runat="server" MaxLength="2" Mask="99" Text="0"></ew:MaskedTextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "VariantType")%> :</label>
                                            <asp:DropDownList ID="ddlControl" runat="server" Enabled="True" AutoPostBack="True">
                                                <asp:ListItem Value="1">TextBox</asp:ListItem>
                                                <asp:ListItem Value="2">Multi Line TextBox</asp:ListItem>
                                                <asp:ListItem Value="3">CheckBox</asp:ListItem>
                                                <asp:ListItem Value="4" Selected="True">DropDownList</asp:ListItem>
                                                <asp:ListItem Value="5">RadioList</asp:ListItem>
                                                <asp:ListItem Value="6">CheckBoxList</asp:ListItem>
                                                <asp:ListItem Value="7">File</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="colTwo">
                                            <label><%=GetGlobalResourceObject("admin", "Forced")%> :</label>
                                            <label class="labelInput">
                                                <asp:CheckBox ID="chkForce" runat="server" />
                                                Evet/Hayýr</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label><%=GetGlobalResourceObject("admin", "Explanation")%> :</label>
                                            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
