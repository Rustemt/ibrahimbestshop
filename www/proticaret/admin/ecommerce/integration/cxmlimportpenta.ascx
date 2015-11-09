<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="cxmlimportpenta" Codebehind="cxmlimportpenta.ascx.vb" %>
<div class="pageXmlImportPenta">
    <asp:UpdatePanel id="UpdatePanel2" runat="server">
    <contenttemplate>
        <asp:Timer id="Timer1" runat="server" Interval="1000"></asp:Timer> 
        <div class="buttonGroup">
            <asp:LinkButton ID="btnDoDesc" runat="server" CssClass="btnDefault" EnabledDuringCallBack="False" AutoUpdateAfterCallBack="True"><%=GetGlobalResourceObject("admin", "PentaUpdateDescription")%></asp:LinkButton>
            <asp:LinkButton ID="btnStop" runat="server" CssClass="btnDefault" EnabledDuringCallBack="True" AutoUpdateAfterCallBack="True" CausesValidation="False"><%=GetGlobalResourceObject("admin", "ExcelIntegrationStop")%></asp:LinkButton>
        </div>
        <div class="alert"><asp:Label ID="lblanthem" runat="server"></asp:Label></div>
        <div class="alert"><asp:Label ID="lblanthem1" runat="server"></asp:Label></div>
        <div class="alert alert-info"><asp:Label ID="lblinfo" runat="server"></asp:Label></div>
    </contenttemplate>
    </asp:UpdatePanel>
</div> 