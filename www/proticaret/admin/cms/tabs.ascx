<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="tabs.ascx.vb" Inherits="ASPNetPortal.tabs" %>
<div id="Tabs" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
            </span>
        </div>
        <div>
            <a href="javascript:void(0)" class="btnDefault" onclick="popupWindow(1000,810,50,'/admin/cms/tablayout.aspx?tabId=0','popup');"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin", "AddTab")%></a>
  
            <label>
                <asp:Label ID="lblEror" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
            </label>
            <table cellspacing="0" cellpadding="3" border="0">
                <tr valign="top">
                    <td>
                        <asp:ListBox ID="tabList" runat="server" CssClass="Admin_Normal_TextBox" Height="600px" Width="300"></asp:ListBox>
                    </td>

                    <td>
                        <br />
                        <table>
                            <tr>
                                <td></td>
                                <td>
                                    <p>
                                        <asp:ImageButton ID="upBtn" runat="server" AlternateText="Yukarı Taşı" CommandName="up" ImageUrl="/admin/assets/img/up.gif"></asp:ImageButton>&nbsp;
                                    </p>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="leftBtn" runat="server" AlternateText="Aşağı Taşı" CommandName="left" ImageUrl="/admin/assets/img/lt.gif"></asp:ImageButton></td>
                                <td>
                                    <p>&nbsp;
                                        
                                    </p>
                                </td>
                                <td>
                                    <asp:ImageButton ID="rightBtn" runat="server" AlternateText="Alt Sayfa Yap" CommandName="right" ImageUrl="/admin/assets/img/rt.gif"></asp:ImageButton></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <p>
                                        <asp:ImageButton ID="downBtn" runat="server" AlternateText="Aşağı Taşı" CommandName="down" ImageUrl="/admin/assets/img/dn.gif"></asp:ImageButton>&nbsp;
                                    </p>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <p>&nbsp;
                                        
                                    </p>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td valign="bottom"></td>
                                <td valign="bottom">
                                    <p>
                                        <a href="#" onclick="EditTab()">
                                            <img alt="" src="/admin/assets/img/edit.gif" style="border: none" /></a>

                                        <br />
                                        <br />
                                        <asp:ImageButton ID="deleteBtn" runat="server" AlternateText="Sil" ImageUrl="/admin/assets/img/delete.gif"></asp:ImageButton>
                                    </p>
                                </td>
                                <td valign="bottom"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <script type="text/javascript">
                function AddTab() {
                    var lnk = '/admin/cms/tablayout.aspx?tabId=0';
                    var PopUpWin = window.open(lnk, '', 'width=1000,height=810,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1');
                }
                function EditTab() { 
                    var i = $('#<%=tabList.ClientID%>').val()
                    popupWindow(1000, 810, 50, '/admin/cms/tablayout.aspx?tabId=' + i, 'popup');
                }
            </script>

        </div>
    </div>
</div>
