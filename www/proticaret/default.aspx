<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="ASPNetPortal.index" ValidateRequest="false" SmartNavigation="False" %>

<%@ Register TagPrefix="skm" Assembly="proticaretg3" Namespace="ActionlessForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title runat="server" id="ptitle"></title>
    <meta name="description" content="description" runat="server" id="description" />
    <meta name="keywords" content="keys" runat="server" id="keywords" />
    <meta name="robots" content="INDEX,FOLLOW,NOODP,NOYDIR" />
    <meta name="HandheldFriendly" content="True" />
    <meta name="MobileOptimized" content="320" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

    <div id="container">
        <skm:Form ID="Form1" name="Form1" runat="server">
            <div id="header" runat="server"></div>
            <div id="main">
                <table width="100%" cellpadding="0" cellspacing="0" border="0" class="mainContainer">
                    <tr>
                        <td id="left" runat="server" visible="false" valign="top"><a class="middleLeftButton"></a></td>
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
                                        <td id="middle_left" runat="server" visible="false" valign="top"><a class="middleLeftButton"></a></td>
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
            <asp:Label ID="lbllvl" runat="server"></asp:Label>
            <div id="footer" runat="server"></div>

            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0" BackgroundCssClass="modalBackground">
                <progresstemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </progresstemplate>
            </asp:ModalUpdateProgress>

        </skm:Form>
    </div>
</body>
</html>
