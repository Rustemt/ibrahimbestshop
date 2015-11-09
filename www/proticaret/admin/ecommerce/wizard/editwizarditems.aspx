<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editswizarditems" CodeBehind="editwizarditems.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Teknik Özellikler</title>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup pageWizards">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Teknik Özellikler
                        <asp:Label ID="lblWizardName" runat="server"></asp:Label></div>
                </div>
                <div class="toggleContent">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <div class="buttonGroup">
                        <a class="btnDefault" href="#" onclick="AddNewGroup()"><i class="fa fa-plus"></i>Yeni Grup Ekle</a>
                    </div>
                    <asp:Repeater ID="rptSections" runat="server">

                        <ItemTemplate>
                            <div class="featureBox">
                                <div class="featureTitle">
                                    <div class="featureText clearfix">
                                        <div class="fLeft">
                                            <%#DataBinder.Eval(Container.DataItem, "WizardGroupName") & "" & IIf(DataBinder.Eval(Container.DataItem, "IsActive"), " <FONT color=#2c7500>(aktif)</FONT>", "<FONT color=#cb4040>(pasif)</FONT>") %>
                                            <%--<%#DataBinder.Eval(Container.DataItem, "WizardGroupName") & "" & IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "<FONT color=#2c7500>(aktif)</FONT>", "<FONT color=#cb4040>(pasif)</FONT>") & "" & IIf(DataBinder.Eval(Container.DataItem, "IsVisible"), "<FONT color=blue>(sihirbaz)</FONT>", "<FONT color=red>(sihirbaz-pasif)</FONT>")%>--%>
                                        </div>
                                        <div class="fRight">
                                            <div class="buttonGroup">
                                                <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(625,250,50,'editwizardgroup.aspx?IND=" & DataBinder.Eval(Container.DataItem, "WizardGroupId") & "&SID=" & Request.QueryString("IND") & "&MID=0','popup');"%>"><i class="fa fa-pencil"></i></a>
                                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "WizardGroupId") %>'><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""editwizarditem.aspx?IND=" & 0 & "&GID=" & DataBinder.Eval(Container.DataItem,"WizardGroupId") & "&MID=" & 0 & ""","""",""width=700,height=650,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-plus"></i></asp:HyperLink>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="featureContent">
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                        <tr>
                                            <td class="sectionDescription"></td>
                                        </tr>
                                        <tr>
                                            <td id="tdSectionQuestions" runat="server">
                                                <asp:Repeater DataSource='<%# GetQuestions(DataBinder.Eval(Container.DataItem,"WizardGroupId")) %>' ID="rptQuestions" runat="server" OnItemDataBound="rptQuestions_ItemDataBound" OnItemCommand="rptQuestions_ItemCommand">
                                                    <HeaderTemplate>
                                                        <table border="0" cellpadding="3" cellspacing="0" align="center" width="100%">
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td align="left" valign="middle" width="50%">
                                                                <asp:Label Style="visibility: hidden" ID="lblQuestionId" runat="server" Text="0" Width="20"></asp:Label>
                                                                <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                                                <a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(700,650,50,'editwizarditem.aspx?IND=" & DataBinder.Eval(Container.DataItem, "WizardItemId") & "&GID=" & DataBinder.Eval(Container.DataItem, "WizardGroupId") & "&MID=0','popup');"%>"><i class="fa fa-pencil"></i></a>
                                                                <asp:LinkButton ID="lnkbtnDeleteq" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "WizardGroupId") %>'><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList>
                                                                <asp:HyperLink NavigateUrl="#" ID="lnkDetay" CssClass="textGreen" runat="Server"></asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr>
                                                            <td align="left" valign="middle" width="50%">
                                                                <asp:Label Style="visibility: hidden" ID="lblQuestionId" runat="server" Text="0" Width="20"></asp:Label>
                                                                <asp:Label ID="lblQuestion" runat="server"></asp:Label>
                                                                <asp:HyperLink ID="Hyperlink4" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""editwizarditem.aspx?IND=" & DataBinder.Eval(Container.DataItem,"WizardItemId") & "&GID=" & DataBinder.Eval(Container.DataItem,"WizardGroupId") & "&MID=" & 0 & ""","""",""width=700,height=650,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>Düzenle</asp:HyperLink>
                                                                <asp:LinkButton ID="lnkbtnDeleteq" runat="server" CssClass="textRed" CausesValidation="false" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "WizardGroupId") %>'><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                            </td>
                                                            <td nowrap>
                                                                <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList>
                                                                <asp:HyperLink NavigateUrl="#" ID="lnkDetay" CssClass="textGreen" runat="Server"></asp:HyperLink>
                                                            </td>
                                                        </tr>
                                                    </AlternatingItemTemplate>
                                                    <FooterTemplate></table></FooterTemplate>
                                                </asp:Repeater>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function AddNewGroup() {
        var a = "<%= IND%>";
        popupWindow(625, 250, 50, '/admin/ecommerce/wizard/editwizardgroup.aspx?IND=0&SID=' + a + '&MID=0', 'popup');
    }

</script>
