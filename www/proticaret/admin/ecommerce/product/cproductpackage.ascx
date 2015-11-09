<%@ Control Language="vb" AutoEventWireup="false" Inherits="CProductPackage" CodeBehind="CProductPackage.ascx.vb" %>
<div class="pageProductPackageList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="false" DataField="PackageId" SortExpression="PackageId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="IND">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditPackage.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PackageId") & "&DIND=" & 0  %> '><%#Eval("PackageId")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Status %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox1"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Picture %>">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="50px" ImageUrl='<%# "~/uploads/ProductPackages/" &amp; container.dataitem("Path") %>'></asp:Image>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" Visible="false" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnDefault fancyContent" Text="<%$ Resources:admin,Detail %>" NavigateUrl='<%# "/admin/ecommerce/product/EditPackage.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PackageId") & "&DIND=" & 0  %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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