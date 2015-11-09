<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CBanks" CodeBehind="CBanks.ascx.vb" %>
<div class="pageBanks">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <div class="fRight">
            <asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
            <asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>

            <asp:Label ID="lblLimit2" runat="server" CssClass="btnDesc"></asp:Label>
            <asp:HyperLink ID="lnkEditLimit2" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
            <asp:Label ID="lblTaksit" runat="server" CssClass="btnDesc"></asp:Label>
            <asp:Label ID="lblFaiz" runat="server" CssClass="btnDesc"></asp:Label>
        </div>
    </div>

    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="BankId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,BankName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/banks/EditBank.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0%> '><%#Eval("BankName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn ItemStyle-Wrap="false" Visible="false" DataField="BankName" HeaderText="<%$ Resources:admin,BankName %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankOffice" HeaderText="<%$ Resources:admin,BankOffice %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="BankAccountNumber" HeaderText="<%$ Resources:admin,BankAccountNumber %>"></asp:BoundColumn>
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
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Installment %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/banks/BankInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" Visible="False" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/banks/EditBank.aspx?IND=" & DataBinder.Eval(Container.DataItem, "BankId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>

</div>
