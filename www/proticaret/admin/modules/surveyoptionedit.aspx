<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SurveyOptionEdit" Codebehind="SurveyOptionEdit.aspx.vb" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Anket Se�enek D�zenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" style="min-width:500px;">
    <div class="boxToggle">
        <div class="toggleTitle">
        	<div class="titleText">Anket Se�enek D�zenle</div>
        </div>
        <div class="toggleContent">
        	<div class="dataForm">
            	<div class="colOne">
                	<div class="buttonGroup">
                    	<asp:TextBox ID="TxtNewOption" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqNewOpt" runat="server" Visible="False" ErrorMessage="Se�enek Giriniz" ControlToValidate="TxtNewOption">*</asp:RequiredFieldValidator>
                        <div class="buttonGroup">
                            <asp:LinkButton ID="AddOptionBtn" runat="server" OnClick="AddOptionBtn_Click" CssClass="btnDefault" Visible="False">Ekle</asp:LinkButton>
                            <asp:LinkButton ID="CancelOptBtn" runat="server" OnClick="CancelOptBtn_Click" CssClass="btnDefault" Visible="False">�ptal</asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="colTwo">
                    <label><asp:Label ID="lblOption" runat="server">Se�enekler:</asp:Label></label>
                    <asp:ListBox ID="OptionList" runat="server" CssClass="Normal" Height="128px" Rows="5"></asp:ListBox>
                </div>
                <div class="colTwo">
                	<label>&nbsp;</label>
                    <asp:ImageButton ID="upBtn" runat="server" OnClick="UpDown_Click" AlternateText="yukar�" CommandName="up" ImageUrl="/admin/assets/img/up.gif"></asp:ImageButton>
                    <br />
                    <asp:ImageButton ID="downBtn" runat="server" OnClick="UpDown_Click" AlternateText="a�a��" CommandName="down" ImageUrl="/admin/assets/img/dn.gif"></asp:ImageButton>
                    <br />
                    <asp:ImageButton ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" AlternateText="sil" ImageUrl="/admin/assets/img/delete.gif"></asp:ImageButton>
                </div>
                <div class="dataTable">
                    <table cellpadding="2">
                        <tr>
                            <td align="left">Soru :</td>
                            <td><asp:Label ID="lblQuestion" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td align="left">Cevap Tipi :</td>
                            <td><asp:Label ID="lblTypeOption" runat="server"></asp:Label></td>
                        </tr>                  
                    </table>
                    <div class="buttonGroup">
                        <asp:LinkButton ID="AddOptBtn" runat="server" OnClick="AddOptBtn_Click" CssClass="btnDefault">Se�enek Ekle</asp:LinkButton>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                        <asp:LinkButton ID="btnReturnCancel" runat="server" OnClick="btnReturnCancel_Click" CssClass="btnDefault">Geri</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>
