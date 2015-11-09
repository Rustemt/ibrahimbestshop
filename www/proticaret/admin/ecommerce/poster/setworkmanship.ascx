<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="setworkmanship.ascx.vb" Inherits="ASPNetPortal.setwork" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<div class="pagePosterFrame">
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server"></asp:Label>
	<div class="dataForm">
        <div class="row">
        	<div class="col1-2">
            	<div class="row">
                    <div class="colTwo">
                    	<label><asp:Label ID="lblglass" runat="server"><%=GetGlobalResourceObject("admin", "FrameWorkmanShipMsg1")%> : (TL)</asp:Label> <asp:RequiredFieldValidator runat="server" ID="rvf1" ControlToValidate="txtPrice" ErrorMessage="<%$ Resources:admin,FrameWorkmanShipMsg2 %>">*</asp:RequiredFieldValidator></label>
    					<asp:TextBox ID="txtPrice" runat="server"></asp:TextBox> 
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                    	<asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault" />
                    </div>
                </div>
            </div>
        </div>
    </div>
	<asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtPrice" FilterType="Custom" ValidChars="1234567890."></asp:FilteredTextBoxExtender>
</div>