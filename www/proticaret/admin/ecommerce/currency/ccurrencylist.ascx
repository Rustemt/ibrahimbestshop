<%@ Control Language="vb" AutoEventWireup="false" Inherits="CCurrencyList" CodeBehind="CCurrencyList.ascx.vb" %>
<div class="pageCurrencyList">
    <asp:Label ID="lblErr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
   
    <div id="divAlert" runat="server" class="alert" visible="false"> <asp:Label ID="lblMessage" CssClass="textRed" runat="server"></asp:Label></div>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server"  CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <asp:LinkButton ID="lnkGetNow" runat="server"  CssClass="btnDefault"><i class="fa fa-history"></i> <%= GetGlobalResourceObject("admin","CurrencyOnlineUpdate") %></asp:LinkButton>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="CurrencyId" SortExpression="CurrencyId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,CurrencyCode %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/currency/EditCurrency.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CurrencyId") & "&DIND=" & 0 & ""%> '><%#Eval("CurrencyCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="CurrencyCode" Visible="false" SortExpression="CurrencyCode" HeaderText="<%$ Resources:admin,CurrencyCode %>"></asp:BoundColumn>
                <asp:BoundColumn DataField="CurrencyName" SortExpression="CurrencyName" HeaderText="<%$ Resources:admin,CurrencyName %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                <asp:BoundColumn DataField="Rate" SortExpression="KdvRate" HeaderText="<%$ Resources:admin,CurrencyRate %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Online" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsOnline") %>' ID="Checkbox1"></asp:CheckBox>
                </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveorPassive %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# ChkNullBoolean(DataBinder.Eval(Container.DataItem, "Status")) %>' ID="Checkbox12"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="false" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/currency/EditCurrency.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CurrencyId") & "&DIND=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>