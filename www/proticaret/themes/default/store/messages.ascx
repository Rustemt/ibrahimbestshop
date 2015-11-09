<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="messages.ascx.vb" Inherits=".messages1" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<div id="messages" class="module">

    <label>Mesajlarım</label>
    <br />
    <asp:DataGrid ID="Datagrid1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderWidth="1px" CellPadding="3" PageSize="20" Width="100%" DataKeyField="unread">
        <HeaderStyle BorderStyle="Solid" BorderWidth="1" />
        <Columns>
            <asp:BoundColumn DataField="messageid" HeaderText="ID" SortExpression="messageid">
                <HeaderStyle Width="0px" />
            </asp:BoundColumn>
            <asp:BoundColumn DataField="Name" HeaderText="Gönderen" SortExpression="Name"></asp:BoundColumn>
            <asp:BoundColumn DataField="problem" HeaderText="Bülten Konusu" SortExpression="problem"></asp:BoundColumn>
            <asp:BoundColumn DataField="messagesubject" HeaderText="Mesajın Konusu" SortExpression="messagesubject"></asp:BoundColumn>
            <asp:BoundColumn DataField="messagedate" HeaderText="Tarih" SortExpression="messagedate"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="Mesaj Oku">
                <HeaderStyle Width="10px" />
                <ItemStyle HorizontalAlign="center" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="button" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/store/readmessage.aspx?ID=" & DataBinder.Eval(Container.DataItem, "messageid") & ""","""",""width=400,height=650,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> ' Text="Oku" ToolTip="Mesaj Oku">
                    </asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Sil">
                <HeaderStyle Width="10px" />
                <ItemTemplate>
                    <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="deletebutton" Text="Sil"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" PageButtonCount="15" />
    </asp:DataGrid>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <asp:Button runat="server" ID="btnDel" Text="Tüm Mesajları Sil" CssClass="button" style= "float:right;" />
    <br />

    <asp:Panel ID="pnlusers" runat="server">
        <label>Admine Mesaj Yolla</label>
        <br />
        <label>Sorun Seçiniz:</label>
        <asp:DropDownList ID="ddlproblems" runat="server"></asp:DropDownList>
        <br />
        <br />
        <label>Mesaj Konusu</label>
        <asp:TextBox ID="txtmessageheaderusers" runat="server" ValidationGroup="btnclk"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rvf" runat="server" ControlToValidate="txtmessageheaderusers" ErrorMessage="*" ValidationGroup="btnclk"></asp:RequiredFieldValidator>
        <label>İçeriği</label>
        <asp:TextBox ID="txtmessageusers" runat="server" Height="123px" TextMode="MultiLine" Width="270px" ValidationGroup="btnclk"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rvf2" runat="server" ControlToValidate="txtmessageusers" ErrorMessage="*" ValidationGroup="btnclk"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblerror2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
        <br />
        <aspzone:OneClickButton ID="btnusers" runat="server" CssClass="button" Text="Mesaj Gönder" WaitText="Gönderiliyor..."></aspzone:OneClickButton>
        <%--<asp:Button ID="btnusers" runat="server" Text="Gönder" CssClass="button" />--%>
    </asp:Panel>
</div>


