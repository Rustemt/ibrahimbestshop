<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>

<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editproductwizard" CodeBehind="editproductwizard.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Teknik Özellikler</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup" id="pnlFilter" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Teknik Özellikler</div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblMessage" runat="server" Visible="False">Bilgiler Baþarýyla Kaydedildi.</asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label>Þablon Seçiniz :</label>
                                <asp:DropDownList ID="ddlWizards" runat="server" AutoPostBack="True"></asp:DropDownList>
                            </div>
                            <div class="colTwo">
                                <label>Ürün Kodu :</label>
                                <asp:Label ID="txtStokKodu" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label>Ürün Adý :</label>
                                <label class="labelInput">
                                    <asp:Label ID="txtUrunAdi" runat="server"></asp:Label></label>
                            </div>
                            <div class="colTwo">
                                <label>Açýklama :</label>
                                <label class="labelInput">
                                    <asp:Label ID="txtDetail" runat="server"></asp:Label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <asp:Repeater ID="rptSections" runat="server">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSurveyGroupId" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "WizardGroupId")  %>'></asp:Label>
                                        <fieldset>
                                            <legend><%# DataBinder.Eval(Container.DataItem, "WizardGroupName")  %></legend>
                                            <table cellpadding="2">
                                                <tr>
                                                    <td class="sectionDescription"></td>
                                                </tr>
                                                <tr>
                                                    <td id="tdSectionQuestions" runat="server">
                                                        <asp:Repeater DataSource='<%# GetQuestions(DataBinder.Eval(Container.DataItem,"WizardGroupId")) %>' ID="rptQuestions" runat="server" OnItemDataBound="rptQuestions_ItemDataBound">
                                                            <HeaderTemplate>
                                                                <table border="0" cellpadding="3" cellspacing="0" align="center">
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td align="left" valign="top">
                                                                        <asp:Label ID="lblQuestionId" runat="server"></asp:Label>
                                                                        <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td align="left" nowrap>
                                                                        <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <AlternatingItemTemplate>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label Style="visibility: hidden" ID="lblQuestionId" runat="server"></asp:Label>
                                                                        <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList></td>
                                                                </tr>
                                                            </AlternatingItemTemplate>
                                                            <FooterTemplate></table></FooterTemplate>
                                                        </asp:Repeater>
                                                    </td>
                                                </tr>
                                            </table>
                                        </fieldset>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <aspzone:OneClickButton ID="btnSend" runat="server" CssClass="btnDefault" Text="Kaydet" WaitText="Kaydediliyor..."></aspzone:OneClickButton>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
