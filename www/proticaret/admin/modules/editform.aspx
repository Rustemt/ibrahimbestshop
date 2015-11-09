<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditForm" CodeBehind="EditForm.aspx.vb" %>

<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Form Düzenle</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Form Düzenle</div>
                </div>
                <div class="toggleContent">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <div class="row">
                                    <div class="colOne">
                                        <label>Baþlýk :</label>
                                        <asp:TextBox ID="txtquestion" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Açýklama :</label>
                                        <asp:TextBox ID="txtquestionhelp" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Tür :</label>
                                        <asp:DropDownList ID="ddltype" runat="server">
                                            <asp:ListItem Value="1">Text</asp:ListItem>
                                            <asp:ListItem Value="2">Multiline Text</asp:ListItem>
                                            <asp:ListItem Value="3">CheckBox</asp:ListItem>
                                            <asp:ListItem Value="4">DropDownList</asp:ListItem>
                                            <asp:ListItem Value="5">RadioButtonList</asp:ListItem>
                                            <asp:ListItem Value="6">CheckBoxList</asp:ListItem>
                                            <asp:ListItem Value="7">FileDialog</asp:ListItem>
                                            <asp:ListItem Value="0">Konu Se&#231;imi(Mail Se&#231;imi)</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Zorunlu :</label>
                                        <asp:DropDownList ID="ddlReq" runat="server">
                                            <asp:ListItem Value="0">Hayýr</asp:ListItem>
                                            <asp:ListItem Value="1">Evet</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Sýra :</label>
                                        <ew:NumericBox ID="txtOrder" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right">1</ew:NumericBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne buttonGroup">
                                        <asp:Button ID="btnsave" runat="server" CssClass="btnDefault" Text="Ekle" CausesValidation="False"></asp:Button>
                                    </div>
                                </div>
                            </div>
                            <div class="colTwo">
                                <div class="row">
                                    <div class="colOne">
                                        <label>AdWords Dönüþüm Ýzleme</label>
                                        <asp:TextBox ID="txtaddcode" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>AdWords Etiketi :</label>
                                        <asp:TextBox ID="txtaddlabel" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne buttonGroup">
                                        <asp:Button ID="btnsave2" runat="server" CssClass="btnDefault" Text="Kaydet" CausesValidation="False" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            Önizleme
				<asp:Repeater ID="rptQuestions" runat="server" OnItemDataBound="rptQuestions_ItemDataBound">
                    <HeaderTemplate>
                        <table border="0" cellpadding="3" cellspacing="0" align="center" width="100%">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td align="right" valign="top">
                                <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                <asp:Label ID="lblQuestionId" runat="server" Visible="false" Text="0"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="tbQuestion" runat="Server" Width="200px"></asp:TextBox>
                                <asp:TextBox ID="tbQuestion1" runat="Server" TextMode="MultiLine"></asp:TextBox>
                                <asp:CheckBox ID="cbQuestion" runat="server" />
                                <asp:CheckBoxList ID="cblQuestion" runat="server"></asp:CheckBoxList>
                                <asp:DropDownList ID="ddlMail" runat="Server"></asp:DropDownList>
                                <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList>
                                <asp:RadioButtonList ID="rblQuestion" runat="Server"></asp:RadioButtonList>
                                <input id="oFile" type="file" size="20" name="oFile" runat="server" />
                                <asp:RequiredFieldValidator ID="rfvForQuestion" runat="Server" ControlToValidate="tbQuestion" ErrorMessage="Zorunlu Alan">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvForQuestion" runat="ServeR" ValueToCompare="0" ControlToValidate="ddlQuestion" Operator="NotEqual" ErrorMessage="Zorunlu Alan">*</asp:CompareValidator>
                                <asp:HyperLink NavigateUrl="#" ID="lnkDetay" runat="Server"></asp:HyperLink>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Text="Sil" CausesValidation="false" CommandName="Delete"></asp:LinkButton></td>
                            <td></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            <label>
                <asp:Label ID="lblMessage" runat="server" Visible="False">Bilgiler Baþarýyla Gönderildi</asp:Label>
            </label>
            <aspzone:OneClickButton ID="btnSend" runat="server" CssClass="btnDefault" Text="Test Et!" WaitText="Gönderiliyor..."></aspzone:OneClickButton>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
        </div>
    </form>
</body>
</html>
