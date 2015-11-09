<%@ Page Language="vb" AutoEventWireup="true" SmartNavigation="false" Inherits="ASPNetPortal.ChatPage" CodeBehind="chat.aspx.vb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="ROBOTS" content="NOINDEX" />
    <title>
        <%=GetGlobalResourceObject("lang", "ChatPage")%> : <%= ConfigurationManager.AppSettings("SiteName") %>    
    </title>

    <script type="text/javascript">

        var lastCheck = new Date();

        function GetReferer() {
            var ref = document.getElementById('txtReferer');
            ref.value = window.opener.location.href;

        }
        function scrollDiv() {
            var d;
            if ((d = document.getElementById('chat')) && ('undefined' != typeof d.scrollTop)) {
                //d.scrollTop = 0;
                d.scrollTop = 5000;
            }

            window.setTimeout("scrollDiv()", 950);

            var now = new Date();
            var elapse = now.getSeconds() - lastCheck.getSeconds();
            var sameMinute = now.getMinutes - lastCheck.getMinutes();
            if (sameMinute != 0 || elapse >= 2) {
                // Check for typing notification
                PageMethods.CheckTypingNotification(getCookie('chatId'), OnCheckTypingNotificationComplete);

                lastCheck = new Date();
            }
        }

        function OnCheckTypingNotificationComplete(result, methodName) {
            if (result != '') {
                var v = document.getElementById('typingNotification');
                if (v != 'undefined')
                    v.innerText = result;
            }
        }
        window.onload = scrollDiv;

        if (window.onbeforeunload) {
            window.onbeforeunload = confirmExit;
        }

        function confirmExit() {
            CallClosed();
        }
    </script>

</head>

<body onload="GetReferer();">
    <link type="text/css" href="<% =getThemePath() %>/css/chat.css" rel="stylesheet" />

    <form id="formMain" runat="server">

        <div id="ChatPage" class="module">
            <div id="module_content">
                <div class="moduleTitle"><%# GetGlobalResourceObject("lang", "ChatPage")%></div>

                <div>
                    <asp:Panel ID="pnlNoOperator" Visible="false" runat="server" Width="500px">
                        <table cellpadding="4" cellspacing="0" width="100%">
                            <tr>
                                <td colspan="2">
                                    <div id="alert" class="alert"><%=GetGlobalResourceObject("lang", "ChatMsg1")%></div>

                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <%=GetGlobalResourceObject("lang", "Name")%> :</td>
                                <td>
                                    <asp:TextBox ID="txtSendByName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSendByName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <%=GetGlobalResourceObject("lang", "Email")%> :</td>
                                <td>
                                    <asp:TextBox ID="txtSendBy" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqmail1" runat="server" ControlToValidate="txtSendBy" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rqmail2" runat="server" ControlToValidate="txtSendBy" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" valign="top">
                                    <%=GetGlobalResourceObject("lang", "YourMessage")%> :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqKonu" runat="server" ControlToValidate="txtComment" ErrorMessage="<%$ Resources:lang, ReqMessage%>">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:LinkButton ID="lnkSendEmail" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "Send")%></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="pnlConfirmation" Visible="false" runat="server" Width="100%" Height="100%">
                        <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "ChatMsg2")%></div>
                    </asp:Panel>
                    <asp:Panel ID="pnlRequest" Visible="true" runat="server" Width="500px">
                        <table cellpadding="4" cellspacing="0" width="100%">
                            <tr>
                                <td colspan="2">
                                    <div id="info2" class="information"><%=GetGlobalResourceObject("lang", "ChatMsg3")%></div>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <%=GetGlobalResourceObject("lang", "Name")%> :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqName" runat="server" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <%=GetGlobalResourceObject("lang", "Email")%> :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rqmail3" runat="server" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="rqmail4" runat="server" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ControlToValidate="txtEmail" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:LinkButton ID="lnkStartChat" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "RequestChat")%></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="pnlChat" Visible="false" runat="server" Width="500px">
                        <table cellpadding="4" cellspacing="0" width="100%">
                            <tr>
                                <td style="width: 200px">
                                    <asp:UpdatePanel ID="upChat" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="timerRefresh" EventName="Tick" />
                                        </Triggers>
                                        <ContentTemplate>
                                            <div id="chat" class="Chat_Talk_Area">
                                                <asp:Literal ID="litChat" runat="server"></asp:Literal>
                                                <asp:Timer ID="timerRefresh" Interval="2123" runat="server">
                                                </asp:Timer>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                        <ContentTemplate>
                                            <div style="white-space: nowrap">
                                                <asp:TextBox Rows="6" ID="txtMsg" onkeypress="checkEnter(event);" CssClass="Chat_Talk_TextBox" runat="server"></asp:TextBox>
                                                <input id="btnSend" class="Chat_Send_Button" onclick="CallSendMsg();" type="button" value="<%=GetGlobalResourceObject("lang", "Send")%>">
                                                <br />
                                            </div>
                                            <span id="typingNotification">... </span>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>

                    </asp:Panel>
                    <input id="txtReferer" runat="server" type="hidden" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </div>
            </div>
        </div>
        <script type="text/javascript">
            var xPos, yPos;
            var prm = Sys.WebForms.PageRequestManager.getInstance();

            function BeginRequestHandler(sender, args) {
                xPos = $get('chat').scrollLeft;
                yPos = $get('chat').scrollTop;
            }

            function EndRequestHandler(sender, args) {
                $get('chat').scrollLeft = xPos;
                $get('chat').scrollTop = yPos + 100;
            }

            prm.add_beginRequest(BeginRequestHandler);
            prm.add_endRequest(EndRequestHandler);

        </script>
        <script type="text/javascript">

            $(function () {
                $(".button").button();
                $("#module", this).addClass('ui-widget');
                $("div#module_content", this).addClass('ui-widget-content ui-corner-all');
                $("#module_title", this).addClass('ui-widget-header ui-corner-all');
                $("#module_title_icon", this).addClass('ui-icon ui-icon-triangle-1-e');
                $("div.module a", this).addClass('ui-priority-primary');
                $(".alert").addClass('ui-state-error ui-corner-all');
                $(".information").addClass('ui-state-highlight ui-corner-all');
            });

        </script>
    </form>
</body>
</html>
