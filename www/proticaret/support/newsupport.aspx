<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newsupport.aspx.vb" Inherits=".newsupport2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yeni Destek Talebi</title>
</head>
<body>
    <div id="container">
        <form name="Form1" id="Form1" runat="server">
            <div id="header" runat="server">
            </div>
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
                                        <td id="middle_center" runat="server" valign="top"></td>
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
            <div id="footer" runat="server">
            </div>
        </form>
    </div>
</body>
</html>
