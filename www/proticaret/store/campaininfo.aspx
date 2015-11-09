<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CampainsInfo" Codebehind="campaininfo.aspx.vb" %>

<html>
<head id="head1" runat="server"> 
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <div id="bodyArea">
            <p align="center">
                <br />
                <asp:Label ID="lblDetails" runat="server"></asp:Label><br />
                <br />
                <asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Kapat" CssClass="Admin_Normal_Buton">
                </asp:Button></p>
        </div>
    </form>
</body>
</html>
