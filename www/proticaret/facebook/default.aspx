<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.facebookindex" SmartNavigation="False" CodeBehind="default.aspx.vb" %>

<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title runat="server" id="ptitle"></title>
    <meta name="description" content="description" runat="server" id="description" />
    <meta name="keywords" content="keys" runat="server" id="keywords" />
</head>
<body>
    <div id="container">
        <form id="Form1" name="Form1" runat="server">
            <div id="header" runat="server"></div>
            <div id="main">
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td id="left" runat="server" visible="false" valign="top"></td>
                        <td id="center" valign="top">
                            <div id="center_top">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td id="top_left" runat="server" visible="false" valign="top"></td>
                                        <td id="top_center" runat="server" visible="false" valign="top"></td>
                                        <td id="top_right" runat="server" visible="false" valign="top"></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="center_middle">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td id="middle_left" runat="server" visible="false" valign="top"></td>
                                        <td id="middle_center" runat="server" visible="false" valign="top"></td>
                                        <td id="middle_right" runat="server" visible="false" valign="top"></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="center_bottom">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                    <tr>
                                        <td id="bottom_left" runat="server" visible="false" valign="top"></td>
                                        <td id="bottom_center" runat="server" visible="false" valign="top"></td>
                                        <td id="bottom_right" runat="server" visible="false" valign="top"></td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td id="right" runat="server" visible="false" valign="top"></td>
                    </tr>
                </table>
            </div>
            <div id="footer" runat="server"></div>
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0" BackgroundCssClass="modalBackground">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
        </form>
    </div>

</body>
</html>
