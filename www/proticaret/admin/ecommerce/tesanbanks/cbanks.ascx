<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbanks.ascx.vb" Inherits=".cbanks1" %>
<div class="pageTesan">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" Enabled="True" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Ekle</asp:HyperLink>
        <asp:HyperLink ID="lnkCheckBanks" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Bankaları Kontrol Et</asp:HyperLink>
        <asp:HyperLink ID="lnkAddUser" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Kullanıcı Ekle</asp:HyperLink>
        <div class="fRight">
			<asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> Düzenle</asp:HyperLink>
			
			<asp:Label ID="lblLimit2" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:HyperLink ID="lnkEditLimit2" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> Düzenle</asp:HyperLink>
			
			<asp:Label ID="lblTaksit" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:Label ID="lblFaiz" runat="server" CssClass="btnDesc"></asp:Label>
		</div>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="BankId" HeaderText="IND"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankName" ItemStyle-Wrap="false" HeaderText="Banka Adı"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankOffice" HeaderText="Banka Şubesi"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankAccountNumber" HeaderText="Hesap No"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsCreditCard" HeaderText="Sanal Pos Aktif"></asp:BoundColumn>
                <asp:BoundColumn DataField="IsDefault" HeaderText="Varsayılan"></asp:BoundColumn>
                <asp:BoundColumn DataField="Use3DSecure" HeaderStyle-Wrap="false" HeaderText="3D Aktif"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Taksitler">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/tesanbanks/tesanbankinfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0 & "" %> '>Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Düzenle">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/edittesanbank.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0 & ""%> '>Düzenle</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Sil">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>