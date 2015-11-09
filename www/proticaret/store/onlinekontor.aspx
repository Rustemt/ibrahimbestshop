<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.onlinekontorPage" Codebehind="onlinekontor.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">  
    <title>Online Kontor</title> 
   

</head>
<body>
  <div id="container">
    <form id="Form1" name="Form1" runat="server">
    
        <table id="xx" border="0" cellpadding="0" cellspacing="0">
            <tr id="xx_tr">
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr valign="top">
                <td class="leftbanner_seperator">
                </td>
                <td>
                    <div id="header" runat="server"></div>
                </td>
                <td class="rightbanner_seperator">
                </td>
            </tr>
        </table>
        <table id="zz" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                </td>
                <td>
                    <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr valign="top">
                            <td class="middle_left_seperator">
                            </td>
                            <td id="left" runat="server" class="left" visible="false">
                            </td>
                            <td class="left_Rightseperator">
                            </td>
                            <td valign="top">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr valign="top">
                                        <td id="top_left" runat="server" visible="false">
                                        </td>
                                        <td class="Toppane_seperator2">
                                        </td>
                                        <td id="top_center" runat="server" visible="false">
                                        </td>
                                        <td class="Toppane_seperator2">
                                        </td>
                                        <td id="top_right" runat="server" visible="false">
                                        </td>
                                    </tr>
                                </table>
                    <table id="Table2" cellspacing="0" cellpadding="0" width="100%" border="0">
                        <tr valign="top">
                            <td id="middle_left" height="400" runat="server">
                                <asp:Label ID="SolAlan" runat="server"></asp:Label></td>
                            <td class="pane_seperator2"></td>
                            <td id="middle_center" height="400" runat="server">
                                <asp:Label ID="Content_Ust" runat="server"></asp:Label>
                           
                                <asp:Label ID="Content_Alt" runat="server"></asp:Label>
                            </td>
                            <td class="pane_seperator2"></td>
                            <td id="middle_right" height="400" runat="server">
                                <asp:Label ID="SagAlan" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr valign="top">
                            <td id="bottom_left" runat="server" visible="false">
                            </td>
                            <td class="Bottompane_seperator2">
                            </td>
                            <td id="bottom_center" runat="server" visible="false">
                            </td>
                            <td class="Bottompane_seperator2">
                            </td>
                            <td id="bottom_right" runat="server" visible="false">
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="right_Leftseperator">
                </td>
                <td id="right" runat="server" visible="false">
                </td>
                <td class="middle_right_seperator">
                </td>
            </tr>
        </table>
        </td>
        <td>
        </td>
        </tr> </table>
        <table id="xxy" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td class="leftfooter_seperator">
                </td>
                <td>
                    <div id="footer" runat="server"></div>
                </td>
                <td class="rightfooter_seperator">
                </td>
            </tr>
            <tr class="xxy_tr">
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
