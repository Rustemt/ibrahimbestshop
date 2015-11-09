<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="supportSettings.ascx.vb" Inherits=".supportSettings1" %>
<div id="pageSupportSettings">
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="dataForm">
        <div class="row">
            <div class="colTwo">
				<div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailPopServer") %> </label>
                            <asp:TextBox runat="server" ID="txtSupportMailServer"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailSmtpServer") %> </label>
                            <asp:TextBox runat="server" ID="txtSupportMailSmtpServer"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailSmtpPort") %> </label>
                            <asp:TextBox runat="server" ID="txtSupportServerSmtpPort"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailPop3Port") %> </label>
                            <asp:TextBox runat="server" ID="txtSupportServerPop3Port"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailSSL") %> </label>
                            <asp:DropDownList runat="server" ID="ddlSupportServerUseSsl">
                            <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="True"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailUserName") %></label>
                            <asp:TextBox runat="server" ID="txtSupportMailUserName"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportEmailPassword") %></label>
                            <asp:TextBox runat="server" ID="txtSupportMailPassword"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%= GetGlobalResourceObject("admin","SupportSystemOnorOff") %></label>
                            <asp:DropDownList runat="server" ID="ddlSupportActive">
                            <asp:ListItem Text="<%$ Resources:admin,On %>" Value="True"></asp:ListItem>
                            <asp:ListItem Text="<%$ Resources:admin,Off %>" Value="False"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo"><asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
</div>
