<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="messages.ascx.vb" Inherits=".messages1" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<div id="messages" class="module">
	<label class="moduleTitle"><%= GetGlobalResourceObject("lang","Messages") %></label>
	<div class="moduleContent moduleContentCol1">
    <div class="dataTable">
    <asp:DataGrid ID="Datagrid1" runat="server"  GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" PageSize="20" DataKeyField="unread" HeaderStyle-CssClass="title">
        <HeaderStyle/>
        <Columns>
            <asp:BoundColumn DataField="messageid" HeaderText="ID" SortExpression="messageid">
                <HeaderStyle/>
            </asp:BoundColumn>
            <asp:BoundColumn DataField="Name" HeaderText="<%$ Resources:lang,Sender %>" SortExpression="Name"></asp:BoundColumn>
            <asp:BoundColumn DataField="problem" HeaderText="<%$ Resources:lang,NewsletterSubject %>" SortExpression="problem"></asp:BoundColumn>
            <asp:BoundColumn DataField="messagesubject" HeaderText="<%$ Resources:lang,MessageSubject %>" SortExpression="messagesubject"></asp:BoundColumn>
            <asp:BoundColumn DataField="messagedate" HeaderText="<%$ Resources:lang,Date1 %>" SortExpression="messagedate"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="<%$ Resources:lang,ReadMessage %>">
                <HeaderStyle />
                <ItemStyle HorizontalAlign="center" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="button" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/store/readmessage.aspx?ID=" & DataBinder.Eval(Container.DataItem, "messageid") & ""","""",""width=400,height=650,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> ' Text="<%$ Resources:lang,Read %>" ToolTip="<%$ Resources:lang,ReadMessage %>">
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="<%$ Resources:lang,Delete %>">
                <HeaderStyle />
                <ItemTemplate>
                    <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="button" Text="<%$ Resources:lang,Delete %>"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" PageButtonCount="15" />
    </asp:DataGrid>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    </div>
    <asp:Button runat="server" ID="btnDel" Text="<%$ Resources:lang,AllDeleteMessage %>" CssClass="button" style= "float:right;" />
    <div class="moduleContentCol1">
        <asp:Panel ID="pnlusers" runat="server">
            <label class="title4"><%= GetGlobalResourceObject("lang","SenderMessageAdmin") %></label>
            <br />
            <label><%= GetGlobalResourceObject("lang","SelectIssues") %>:</label>
            <asp:DropDownList ID="ddlproblems" runat="server"></asp:DropDownList>
            <br />
            <br />
            <label><%= GetGlobalResourceObject("lang","MessageSubject") %></label>
            <asp:TextBox ID="txtmessageheaderusers" runat="server" ValidationGroup="btnclk"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvf" runat="server" ControlToValidate="txtmessageheaderusers" ErrorMessage="*" ValidationGroup="btnclk"></asp:RequiredFieldValidator>
            <label><%= GetGlobalResourceObject("lang","Content") %></label>
            <asp:TextBox ID="txtmessageusers" runat="server" Height="123px" TextMode="MultiLine" Width="270px" ValidationGroup="btnclk"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvf2" runat="server" ControlToValidate="txtmessageusers" ErrorMessage="*" ValidationGroup="btnclk"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblerror2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
            <br />
            <aspzone:OneClickButton ID="btnusers" runat="server" CssClass="button" Text="<%$ Resources:lang,SenderMessage %>" WaitText="<%$ Resources:lang,Sending %>..."></aspzone:OneClickButton>
            <%--<asp:Button ID="btnusers" runat="server" Text="Gönder" CssClass="button" />--%>
        </asp:Panel>
    </div>
    </div>
</div>


