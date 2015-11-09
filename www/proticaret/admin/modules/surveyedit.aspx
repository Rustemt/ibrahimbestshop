<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.SurveyEdit" Codebehind="SurveyEdit.aspx.vb" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Anket Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
    <div class="boxToggle">
        <div class="toggleTitle">
            <div class="titleText">Anket Düzenle</div>
        </div>
        <div class="toggleContent">
            <div class="dataTable">
            	<table cellpadding="2">
                    <tr>
                        <td align="left">Anket Adý :</td>
                        <td><asp:Label ID="lblDescSurvey" runat="server"></asp:Label></td>
                    </tr>
                </table>
                <table>
                	<tr>
                    	<td><asp:LinkButton ID="addBtn" runat="server" CssClass="btnDefault" OnClick="AddBtn_Click">Soru Ekle</asp:LinkButton></td>
                    </tr>
                </table>
                <table cellpadding="2">
                    <tr>
                        <td align="right"><asp:Label ID="lblNewQuestion" runat="server" Visible="False">Yeni Soru :</asp:Label></td>
                        <td>
                        <asp:TextBox ID="txtNewQuestion" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqQuestion" runat="server" Visible="False" ControlToValidate="txtNewQuestion" ErrorMessage="Lütfen Soru Giriniz">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right"><asp:Label ID="lblOptionType" runat="server" Visible="False">Tür :</asp:Label></td>
                        <td>
                        <asp:RadioButton ID="RdBtnCheck" runat="server" Visible="False" GroupName="Type" Text="Check box"></asp:RadioButton>
                        <asp:RadioButton ID="RdBtnRadio" runat="server" Visible="False" GroupName="Type" Text="Radio button" Checked="True"></asp:RadioButton>
                        </td>
                    </tr>                   
                </table>
            </div>
            <div class="dataForm">
            	<div class="buttonGroup colOne">
                	 <asp:LinkButton ID="AddQuestionBtn" runat="server" OnClick="AddQuestionBtn_Click" CssClass="btnDefault" Visible="False">Ekle</asp:LinkButton>
                    <asp:LinkButton ID="btnCancel" runat="server" OnClick="btnCancel_Click" CssClass="btnDefault" Visible="False">Ýptal</asp:LinkButton>
                </div>
                <div class="toggleTitle colOne">
               		<div class="titleText"><label><asp:Label ID="lblQuestion" runat="server">Sorular:</asp:Label></label></div>
            	</div>
                <div class="colTwo">
                	<asp:ListBox ID="QuestionList" runat="server" Height="100px" CssClass="Normal" Rows="5"></asp:ListBox>
                </div>
                <div class="colTwo">
                	<asp:ImageButton ID="upBtn" runat="server" OnClick="UpDown_Click" ImageUrl="/admin/assets/img/up.gif" CommandName="up" AlternateText="Yukarý"></asp:ImageButton>
                    <br />
                    <asp:ImageButton ID="downBtn" runat="server" OnClick="UpDown_Click" ImageUrl="/admin/assets/img/dn.gif" CommandName="down" AlternateText="Aþaðý"></asp:ImageButton>
                    <br />
                    <asp:ImageButton ID="editBtn" runat="server" OnClick="EditBtn_Click" ImageUrl="/admin/assets/img/edit.gif" AlternateText="Düzenle"></asp:ImageButton>
                    <br />
                    <asp:ImageButton ID="deleteBtn" runat="server" OnClick="DeleteBtn_Click" ImageUrl="/admin/assets/img/delete.gif" AlternateText="Sil"></asp:ImageButton>
                </div>
                <div class="colOne">
                	<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                </div>
            </div>
            
        </div>
    </div>
</div>
</form>
</body>
</html>
