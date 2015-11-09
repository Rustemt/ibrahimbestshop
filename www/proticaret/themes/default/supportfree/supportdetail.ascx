<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="supportdetail.ascx.vb" Inherits=".supportdetail2" %>
<div id="supportdetail" class="module">
    <div id="module_content">
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
            </span>
        </div>
        <div class="alert" runat="server" id="divAlert" visible="false">
            <label>
                <asp:Label ID="lblMessage" runat="server"></asp:Label></label>
        </div>
        <div runat="server" id="divContent">
            <div class="module_box">
                <asp:Label runat="server" ID="lblTitle"></asp:Label><br />
                Konu :
            <asp:Label runat="server" ID="lblSubject"></asp:Label><br />
                Konuyu Açan :
            <asp:Label runat="server" ID="lblUserMail"></asp:Label><br />
                Sipariş No :
            <asp:Label runat="server" ID="lblorderno"></asp:Label>
                <br />
                <br />
            </div>
            <div class="module_box">

                <asp:Panel runat="server" ID="pnlCevap" Visible="false">
                    <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" ID="txtCevap"
                        ValidationGroup="1" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtCevap" ErrorMessage="Boş Bırakılamaz" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <br />
                    Dosya Yükle   
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnCevapYaz" runat="server" CssClass="button"
                    Text="Cevap Yaz" ValidationGroup="1"></asp:LinkButton>
                    <asp:Label ID="lblAssignedUserId" runat="server" Text="" Visible="false" />
                    <br>
                </asp:Panel>
            </div>
            <br />
            <br />
            <asp:Repeater runat="server" ID="rptComment">
                <ItemTemplate>
                    <div class='<%# iif(Eval("IsAnswer"),"information","alert") %>'>
                        <asp:Label runat="server" ID="lblMail"></asp:Label><br />
                        <asp:Label runat="server" ID="lblDate" Text='<%# Eval("Date") %>'></asp:Label><br />
                        <asp:Literal runat="server" ID="lblBody" Text='<%# Eval("Message") %>'></asp:Literal><br />
                        <asp:Label runat="server" ID="lblAssignedUserDetail" ToolTip='<%# Eval("assignedUserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                        <asp:Label runat="server" ID="lblUserDetail" ToolTip='<%# Eval("UserDetail") %>' Text='<%# Eval("IsAnswer") %>' Visible="false"></asp:Label>
                    </div>
                </ItemTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
