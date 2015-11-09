<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="oksidbanklist.ascx.vb" Inherits="ASPNetPortal.oksidbanklist" %>
<div class="pageOksidBankList">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
        <asp:HyperLink ID="hypsettings" runat="server" CssClass="btnDefault">Oksid Kullanıcı Tanımları</asp:HyperLink>
        
        <asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
        <asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault">Düzenle</asp:HyperLink>
        
        <asp:Label ID="lblLimit2" runat="server" CssClass="btnDesc"></asp:Label>
        <asp:HyperLink ID="lnkEditLimit2" runat="server" CssClass="btnDefault">Düzenle</asp:HyperLink>
       
        <asp:Label ID="lblTaksit" runat="server" CssClass="btnDesc"></asp:Label>
        <asp:Label ID="lblFaiz" runat="server" CssClass="btnDesc"></asp:Label>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="BankId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankName" HeaderText="Banka Adı"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankOffice" HeaderText="Banka Şubesi"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankAccountNumber" HeaderText="Hesap No"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsCreditCard" HeaderText="Sanal Pos Aktif"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsDefault" HeaderText="Varsayılan"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsCreditCard" HeaderText="3D Aktif"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Taksitler">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/banks/BankInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem,"BankId") & "&MID=" & 0 & ""","""",""width=550,height=475,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Düzenle">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/paytypes/oksid/editoksidbank.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0 & ""","""",""width=550,height=700,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '>Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Sil">
                    <ItemTemplate>
                        <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
