<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.csms" CodeBehind="csms.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<div class="pageSmsSettings">
    <div class="alert alert-info" id="divalert" runat="server" visible="false" >
        <asp:Label ID="lblMsg" runat="server"></asp:Label></div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="<%$ Resources:admin,MarketSettingsMsg1 %>" ShowMessageBox="True" ShowSummary="False" />
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsProvider")%> : <a href="http://www.turatel.com.tr" target="_blank">http://www.turatel.com.tr</a></label>
                        <asp:DropDownList ID="ddlProvider" runat="server">
                            <asp:ListItem Selected="True" Value="turatel">turatel</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "ChannelCode")%> :</label>
                        <label class="labelInput"><%=GetGlobalResourceObject("admin", "SmsMsg1")%></label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "UserName")%> :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="<%$ Resources:admin,SmsMsg9 %>">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "Password")%> :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="<%$ Resources:admin,SmsMsg10 %>">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsMsg2")%> :</label>
                        <label class="labelInput">
                            <asp:CheckBox ID="chkSendToadmin" runat="server" />
                            Aktif/Pasif</label>
                    </div>
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsMsg3")%> :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGsm" ErrorMessage="<%$ Resources:admin,SmsMsg7 %>">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtGsm" runat="server" MaxLength="15" ToolTip="Örnek : 05554443322"></asp:TextBox>
	                    <asp:FilteredTextBoxExtender runat="server" ID="ftbE" TargetControlID="txtGsm" FilterType="Custom" ValidChars="1234567890"></asp:FilteredTextBoxExtender>
                        <div class="buttonGroup">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnDefault" ><i class="fa fa-paper-plane-o"></i> <%=GetGlobalResourceObject("admin","SmsMsg8") %></asp:LinkButton></div>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsMsg4")%> :</label>
                        <label class="labelInput">
                            <asp:CheckBox ID="chkSendToUser" runat="server" />
                            Aktif/Pasif</label>
                    </div>
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsMsg5")%> :</label>
                        <label class="labelInput">
                            <asp:CheckBox ID="chkSendForPassword" runat="server" />
                            Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "SmsMsg5")%> :</label>
                        <label class="labelInput">
                            <asp:CheckBox ID="chkSendNew" runat="server" />
                            Aktif/Pasif</label>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
