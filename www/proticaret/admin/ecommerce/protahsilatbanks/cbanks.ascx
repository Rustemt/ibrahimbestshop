<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbanks.ascx.vb" Inherits=".cbanks" %>
<div class="pageProTahsilat">

	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" Enabled="False" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <asp:HyperLink ID="lnkCheckBanks" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Bankaları Kontrol Et</asp:HyperLink>  
        <div class="fRight">
			<asp:CheckBox ID="chkIsActive" runat="server" TextAlign="Left" CssClass="btnDesc" Text="Aktif/Pasif " />
			<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" />
			
			<asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
			
			<asp:Label ID="lblLimit2" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:HyperLink ID="lnkEditLimit2" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
			
			<asp:Label ID="lblTaksit" runat="server" CssClass="btnDesc"></asp:Label>
			<asp:Label ID="lblFaiz" runat="server" CssClass="btnDesc"></asp:Label>
		</div>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" GridLines="None" runat="server" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="BankId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,BankName %>">
                    <ItemTemplate>
                    	<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/protahsilatbanks/editprobank.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0%> '><%#Eval("BankName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="BankOffice" HeaderText="Banka Şubesi"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankAccountNumber" HeaderText="Hesap No"></asp:BoundColumn>
               <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,IsCreditCard %>" SortExpression="IsCreditCard" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblIsCreditCard" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsCreditCard"), "Aktif", "Pasif") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,IsDefault %>" SortExpression="IsDefault" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblIsDefault" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsDefault"), "Aktif", "Pasif") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,Use3DSecure %>" SortExpression="Use3DSecure" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblUse3DSecure" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "Use3DSecure"), "Aktif", "Pasif") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Taksitler" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/protahsilatbanks/probankinfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0 %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>                
                <asp:TemplateColumn HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                    	<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
