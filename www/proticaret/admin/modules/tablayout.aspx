<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.TabLayout" CodeBehind="TabLayout.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title><%=GetGlobalResourceObject("admin", "PageSettings")%></title>
</head>
<body>

    <form id="Form1" runat="server">
        <div id="module" class="module">
            <div id="module_content">
                <div>
                    <div id="TabContainer">
                        <ul>
                            <li><a runat="server" href="#tab_page"><%=GetGlobalResourceObject("admin", "TabPage")%></a></li>
                            <li><a runat="server" href="#tab_security"><%=GetGlobalResourceObject("admin", "TabSecurity")%></a></li>
                            <li><a runat="server" href="#tab_seo"><%=GetGlobalResourceObject("admin", "TabSeo")%></a></li>
                        </ul>
                        <div id="tab_page">
                            <table cellpadding="2" cellspacing="0">
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageName")%> :</td>
                                    <td>
                                        <asp:TextBox ID="tabName" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr style="display: none;">
                                    <td align="right">Resim(Icon) :</td>
                                    <td>
                                        <asp:TextBox ID="txtIcon" runat="server"></asp:TextBox><asp:HyperLink ID="showGalleryButton" runat="server" Text="Galeri" onclick="BrowseServer('txtIcon');" NavigateUrl="#"></asp:HyperLink></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageRedirect")%> :</td>
                                    <td runat="server">
                                        <asp:CheckBox ID="chkLink" runat="server" Checked="True"></asp:CheckBox>
                                        <asp:TextBox ID="txtLink" runat="server" ToolTip='"~/store/cart.aspx" veya "http:www.proticaret.org/sepet.aspx" þeklinde giriniz'></asp:TextBox>
                                        * <%=GetGlobalResourceObject("admin", "TabLayoutMsg1")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageIncludes")%> :</td>
                                    <td runat="server">
                                        <asp:CheckBox ID="chkAction" runat="server" Checked="True"></asp:CheckBox>
                                        * <%=GetGlobalResourceObject("admin", "TabLayoutMsg2")%></td>
                                </tr>
                                <tr style="display: none;">
                                    <td>Mobile Cihazlarda Göster :</td>
                                    <td>
                                        <asp:CheckBox ID="showMobile" runat="server"></asp:CheckBox></td>
                                </tr>
                                <tr style="display: none;">
                                    <td>Mobile Sayfa Adý :</td>
                                    <td>
                                        <asp:TextBox ID="mobileTabName" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr size="1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" runat="server"><%=GetGlobalResourceObject("admin", "AddModule")%></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleType")%> :</td>
                                    <td>
                                        <asp:DropDownList ID="moduleType" runat="server" DataTextField="FriendlyName" DataValueField="ModuleDefId"></asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ModuleName")%> :</td>
                                    <td>
                                        <asp:TextBox ID="moduleTitle" runat="server" Text="<%$ Resources:admin,NewModule %>" EnableViewState="False"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "ShowTopTitle")%> :</td>
                                    <td runat="server">
                                        <asp:CheckBox ID="chkShowHeader" runat="server" Checked="True"></asp:CheckBox>
                                        &nbsp;&nbsp;<%=GetGlobalResourceObject("admin", "ShowSubTitle")%> :&nbsp;<asp:CheckBox ID="chkShowFootter" runat="server" Checked="True"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "DestinationPanel")%> :</td>
                                    <td>
                                        <asp:DropDownList ID="ddlTargetPanel" runat="server" DataTextField="FriendlyName" DataValueField="ModuleDefId">
                                            <asp:ListItem Text="<%$ Resources:admin,PageLeftPanel %>" Value="left"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,PageTopMainPanel %>" Value="top_center"></asp:ListItem>
                                            <asp:ListItem Selected="True" Text="<%$ Resources:admin,PageMiddleMainPanel %>" Value="middle_center"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,PageBottomMainPanel %>" Value="bottom_center"></asp:ListItem>
                                            <asp:ListItem Text="<%$ Resources:admin,PageRightPanel %>" Value="right"></asp:ListItem>
                                        </asp:DropDownList><asp:LinkButton ID="AddModuleBtn" Text="<%$ Resources:admin,AddModulesPanel %>" runat="server" CssClass="button"></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <hr size="1" />
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td valign="top" align="right" runat="server"><%=GetGlobalResourceObject("admin", "Panels")%></td>
                                    <td>
                                        <table cellspacing="0" cellpadding="0" border="0">
                                            <tr valign="top">
                                                <td width="120" rowspan="3">
                                                    <label><%=GetGlobalResourceObject("admin", "PageLeftPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0" style="height: 100%">
                                                        <tr valign="top">
                                                            <td valign="top">
                                                                <asp:ListBox ID="left" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="400px" DataSource="<%# MostLeftList %>"></asp:ListBox></td>
                                                            <td valign="top">
                                                                <table cellspacing="2" cellpadding="0" border="0" style="height: 120px">
                                                                    <tr valign="top">
                                                                        <td style="white-space: nowrap" valign="bottom">
                                                                            <asp:ImageButton ID="MostLeftUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="left"
                                                                                CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                                        <td valign="top"></td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top" style="height: 1px"></td>
                                                                        <td valign="middle">&nbsp;</td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top">
                                                                            <asp:ImageButton ID="MostLeftDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="left"
                                                                                CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                                        <td valign="top"></td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top">
                                                                            <asp:ImageButton ID="MostLeftEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="left"
                                                                                CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                                        <td valign="middle"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="white-space: nowrap" valign="bottom">
                                                                            <asp:ImageButton ID="MostLeftDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="left"
                                                                                CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                                        <td valign="middle"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>

                                                    </table>
                                                </td>
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageTopLeftPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="top_left" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" Rows="7" DataSource="<%# TopleftList %>"></asp:ListBox></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="topLeftUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="top_left"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top" style="height: 1px"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopLeftRightBtn" runat="server" AlternateText="Saða Taþý" CommandName="right"
                                                                    ImageUrl="/admin/images/rt.gif" sourcepane="top_left" targetpane="top_center" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top">
                                                                <asp:ImageButton ID="TopLeftDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="top_left"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopLeftEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="top_left"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="white-space: nowrap" valign="bottom"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopLeftDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="top_left"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageTopMiddlePanel")%> </label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="top_center" runat="server" CssClass="Admin_Normal_TextBox" Width="170" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" Rows="7" DataSource="<%# TopcontentList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="TopContentUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="top_center"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopContentLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="top_center" targetpane="top_left" /></td>
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopContentRightBtn" runat="server" AlternateText="Saða Taþý" ImageUrl="/admin/images/rt.gif"
                                                                    sourcepane="top_center" targetpane="top_right" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="TopContentDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="top_center"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopContentEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="top_center"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom"></td>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="TopContentDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="top_center"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                            <td valign="bottom"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="120">
                                                    <label><%=GetGlobalResourceObject("admin", "PageTopRightPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="top_right" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# ToprightList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="TopRightUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="top_right"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopRightLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="top_right" targetpane="top_center" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="TopRightDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="top_right"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="TopRightEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="top_right"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom"></td>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="TopRightDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="top_right"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="120" rowspan="3">
                                                    <label><%=GetGlobalResourceObject("admin", "PageRightPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0" style="height: 100%">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="right" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="400px" DataSource="<%# MostRightList %>"></asp:ListBox></td>
                                                            <td style="white-space: nowrap" valign="top" colspan="2" rowspan="5">
                                                                <table cellspacing="2" cellpadding="0" border="0" style="height: 120px">
                                                                    <tr valign="top">
                                                                        <td style="white-space: nowrap" valign="bottom">
                                                                            <asp:ImageButton ID="MostRightUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="right"
                                                                                CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                                        <td valign="top"></td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top" style="height: 1px"></td>
                                                                        <td valign="middle">&nbsp;</td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top">
                                                                            <asp:ImageButton ID="MostRightDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="right"
                                                                                CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                                        <td valign="top"></td>
                                                                    </tr>
                                                                    <tr valign="top">
                                                                        <td valign="top">
                                                                            <asp:ImageButton ID="MostRightEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="right"
                                                                                CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                                        <td valign="middle"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="white-space: nowrap" valign="bottom">
                                                                            <asp:ImageButton ID="MostRightDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="right"
                                                                                CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                                        <td valign="middle"></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                        </tr>
                                                        <tr valign="top">
                                                        </tr>
                                                        <tr valign="top">
                                                        </tr>
                                                        <tr>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageMiddleLeftPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="middle_left" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# leftList %>"></asp:ListBox></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="LeftUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="middle_left" CommandName="up" ImageUrl="/admin/images/up.gif"></asp:ImageButton></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top" style="height: 1px"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="LeftRightBtn" runat="server" AlternateText="Saða Taþý" CommandName="right" ImageUrl="/admin/images/rt.gif" targetpane="middle_center" sourcepane="middle_left"></asp:ImageButton></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top">
                                                                <asp:ImageButton ID="LeftDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="middle_left" CommandName="down" ImageUrl="/admin/images/dn.gif"></asp:ImageButton></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="LeftEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="middle_left" CommandName="edit" ImageUrl="/admin/images/edit.gif"></asp:ImageButton></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="LeftDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="middle_left" CommandName="delete" ImageUrl="/admin/images/delete.gif"></asp:ImageButton></td>
                                                            <td valign="bottom"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageMiddleMainPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="middle_center" runat="server" CssClass="Admin_Normal_TextBox" Width="170" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# contentList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="ContentUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="middle_center"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="ContentLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="middle_center" targetpane="middle_left" /></td>
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="ContentRightBtn" runat="server" AlternateText="Saða Taþý" ImageUrl="/admin/images/rt.gif"
                                                                    sourcepane="middle_center" targetpane="middle_right" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="ContentDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="middle_center"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="ContentEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="middle_center"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom" style="height: 27px"></td>
                                                            <td style="white-space: nowrap; height: 27px" valign="middle">
                                                                <asp:ImageButton ID="ContentDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="middle_center"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                            <td valign="bottom" style="height: 27px"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="120">
                                                    <label><%=GetGlobalResourceObject("admin", "PageMiddleRightPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="middle_right" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# rightList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="RightUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="middle_right"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="RightLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="middle_right" targetpane="middle_center" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="RightDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="middle_right"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="RightEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="middle_right" CommandName="edit" ImageUrl="/admin/images/edit.gif"></asp:ImageButton></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom"></td>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="RightDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="middle_right" CommandName="delete" ImageUrl="/admin/images/delete.gif"></asp:ImageButton></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageBottomLeftPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="bottom_left" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# BottomleftList %>"></asp:ListBox></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="BottomLeftUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="bottom_left"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top" style="height: 1px"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomLeftRightBtn" runat="server" AlternateText="Saða Taþý" CommandName="right"
                                                                    ImageUrl="/admin/images/rt.gif" sourcepane="bottom_left" targetpane="bottom_center" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top">
                                                                <asp:ImageButton ID="BottomLeftDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="bottom_left"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomLeftEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="bottom_left"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="white-space: nowrap" valign="bottom"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomLeftDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="bottom_left"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="*">
                                                    <label><%=GetGlobalResourceObject("admin", "PageBottomMainPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="bottom_center" runat="server" CssClass="Admin_Normal_TextBox" Width="170" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# BottomcontentList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="BottomContentUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="bottom_center"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomContentLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="bottom_center" targetpane="bottom_left" /></td>
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomContentRightBtn" runat="server" AlternateText="Saða Taþý" ImageUrl="/admin/images/rt.gif"
                                                                    sourcepane="bottom_center" targetpane="bottom_right" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="BottomContentDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="bottom_center"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomContentEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="bottom_center"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom"></td>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="BottomContentDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="bottom_center"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                            <td valign="bottom"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td width="120">
                                                    <label><%=GetGlobalResourceObject("admin", "PageBottomRightPanel")%></label>
                                                    <table cellspacing="2" cellpadding="0" border="0">
                                                        <tr valign="top">
                                                            <td rowspan="5">
                                                                <asp:ListBox ID="bottom_right" runat="server" CssClass="Admin_Normal_TextBox" Width="110" DataTextField="ModuleTitle" DataValueField="ModuleId" Height="120px" DataSource="<%# BottomrightList %>"></asp:ListBox></td>
                                                            <td valign="top"></td>
                                                            <td style="white-space: nowrap" valign="bottom">
                                                                <asp:ImageButton ID="BottomRightUpBtn" runat="server" AlternateText="Yukarý Taþý" CommandArgument="bottom_right"
                                                                    CommandName="up" ImageUrl="/admin/images/up.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomRightLeftBtn" runat="server" AlternateText="Sola Taþý" ImageUrl="/admin/images/lt.gif"
                                                                    sourcepane="bottom_right" targetpane="bottom_center" /></td>
                                                            <td valign="top"></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="top">
                                                                <asp:ImageButton ID="BottomRightDownBtn" runat="server" AlternateText="Aþaðý Taþý" CommandArgument="bottom_right"
                                                                    CommandName="down" ImageUrl="/admin/images/dn.gif" /></td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td valign="top"></td>
                                                            <td valign="middle">
                                                                <asp:ImageButton ID="BottomRightEditBtn" runat="server" AlternateText="Düzenle" CommandArgument="bottom_right"
                                                                    CommandName="edit" ImageUrl="/admin/images/edit.gif" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="bottom"></td>
                                                            <td style="white-space: nowrap" valign="middle">
                                                                <asp:ImageButton ID="BottomRightDeleteBtn" runat="server" AlternateText="Sil" CommandArgument="bottom_right"
                                                                    CommandName="delete" ImageUrl="/admin/images/delete.gif" /></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <div id="tab_security">
                            <label runat="server"><%=GetGlobalResourceObject("admin", "DisplayGroups")%></label>
                            <asp:CheckBoxList ID="authRoles" CellPadding="3" CellSpacing="0" runat="server" RepeatColumns="2"></asp:CheckBoxList>
                        </div>
                        <div id="tab_seo">
                            <table cellpadding="3" cellspacing="0">
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageTitleSeo")%> :</td>
                                    <td>
                                        <asp:TextBox ID="txttitle" runat="server" MaxLength="80"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageDescriptionSeo")%> :</td>
                                    <td>
                                        <asp:TextBox ID="txtdescription" runat="server" MaxLength="160"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" runat="server"><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</td>
                                    <td>
                                        <asp:TextBox ID="txtkeywords" runat="server" MaxLength="254"></asp:TextBox></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <asp:LinkButton ID="applyBtn" runat="server" Text="<%$ Resources:admin,SaveChanges %>" CssClass="savebutton"></asp:LinkButton>
                    <asp:Button ID="btnCopy" runat="server" Text="<%$ Resources:admin,CopyClone %>" CssClass="button"></asp:Button>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $("#TabContainer").tabs({ selected: 0 });
                        });

                    </script>
                </div>
            </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
