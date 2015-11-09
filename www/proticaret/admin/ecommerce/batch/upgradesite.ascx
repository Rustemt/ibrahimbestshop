<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="upgradesite.ascx.vb" Inherits=".upgradesite" %>
<div>
    <asp:Button Text="Siteyi Güncellemeden Önce Yedek Alınız." runat="server" ID="btnbackup" CssClass="btnDefault" />
    <asp:Button Text="Güncel Dosya Listesini İndirin." runat="server" ID="btndownload" CssClass="btnDefault" />
    <asp:Button Text="Siteyi Güncelleyin." runat="server" ID="btnupdate" CssClass="btnDefault" />
    <asp:Label id="lblmsg" runat="server" BorderColor="Red"  />
    <asp:Label id="Label1" runat="server" />
</div>