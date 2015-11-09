<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.kbedititem" CodeBehind="kbedititem.aspx.vb" %>

<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Makale Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle" id="TabContainer" runat="server">
                <div class="toggleTitle toggleMini">
                    <div class="titleText"><%= GetGlobalResourceObject("admin","EditArticle") %></div>
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#tab_1"><%= GetGlobalResourceObject("admin","ArticleInformation") %></a></li>
                            <li><a href="#tab_2"><%= GetGlobalResourceObject("admin","ArticleDetail") %></a></li>
                            <li><a href="#tab_3"><%= GetGlobalResourceObject("admin","TabSeo") %></a></li>
                        </ul>
                    </div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <div class="tabContent">
                        <div class="tab" id="tab_1">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","CategoryName") %> :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblParent" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","ArticleName") %> :
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Makale Adýný Boþ Býrakmayýnýz.">*</asp:RequiredFieldValidator></label>
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","StatusActiveorPassive2") %> :</label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox></label>
                                    </div>
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","ShowOrder") %> :</label>
                                        <ew:NumericBox ID="txtOrder" runat="server" PositiveNumber="True">1</ew:NumericBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%= GetGlobalResourceObject("admin","KeywordsTag") %> :</label>
                                        <asp:TextBox ID="txtSearchKeywords" runat="server" MaxLength="3000" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo"></div>
                                    <div class="colTwo"></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_2">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label><%= GetGlobalResourceObject("admin","ArticleDetail") %> :</label>
                                        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px" BasePath="/FCKeditor/" ToolbarSet="BasicPlus"></FCKeditorV2:FCKeditor>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_3">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","PageTitleSeo") %> :</label>
                                        <asp:TextBox ID="title" runat="server" MaxLength="99"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label><%= GetGlobalResourceObject("admin","PageDescriptionSeo") %> :</label>
                                        <asp:TextBox ID="description" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%= GetGlobalResourceObject("admin","PageKeywordsSeo") %> :</label>
                                        <asp:TextBox ID="keywords" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="buttonGroup">
                            <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                            <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
