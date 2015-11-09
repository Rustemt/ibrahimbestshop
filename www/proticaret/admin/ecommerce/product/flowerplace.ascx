<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="flowerplace.ascx.vb" Inherits="ASPNetPortal.flowerplace" %>
<div class="pageFlowerCauseList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink><br /><br />
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
            <asp:BoundColumn DataField="placeID" HeaderText="IND"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="<%$ Resources:admin,ShippingPlace %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerPlace.aspx?IND=" & DataBinder.Eval(Container.DataItem, "placeID") & ""%> '><%#Eval("placeName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                <ItemTemplate>
                	<asp:HyperLink ID="hypEditDetay" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerPlace.aspx?IND=" & DataBinder.Eval(Container.DataItem, "placeID") & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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