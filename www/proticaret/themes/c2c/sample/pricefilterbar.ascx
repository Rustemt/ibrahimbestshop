<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="pricefilterbar.ascx.vb" Inherits="ASPNetPortal.pricefilterbar" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> 




<%--<asp:Label Text="0" ID="ss" runat="server" />
<asp:MultiHandleSliderExtender ID="MultiHandleSliderExtender1" runat="server" EnableKeyboard="true" TargetControlID="zz"
    BoundControlID="ss" Minimum="0" Maximum="100" Steps="20" EnableInnerRangeDrag="true" ShowInnerRail="true" EnableRailClick="true" Length="200">
</asp:MultiHandleSliderExtender>
<br />
<br />
<asp:TextBox runat="server" ID="zz" Text="0" />--%>

<br />
<br />
<br />
<br />
<br />
<br />
 
    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="txtmin" runat="server" AutoPostBack="true"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtmax" runat="server" AutoPostBack="true"></asp:TextBox>
    <br />


    <asp:MultiHandleSliderExtender ID="TextBox1_MultiHandleSliderExtender" BehaviorID="TextBox1_MultiHandleSliderExtender" EnableInnerRangeDrag="true" ShowInnerRail="true" EnableRailClick="true" Length="200"
        runat="server" Enabled="True"
        TargetControlID="TextBox1">
        <multihandleslidertargets>
        <asp:MultiHandleSliderTarget ControlID="txtmin" />
        <asp:MultiHandleSliderTarget ControlID="txtmax" />
    </multihandleslidertargets>
    </asp:MultiHandleSliderExtender>


 