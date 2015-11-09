<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="flowercause.ascx.vb" Inherits="ASPNetPortal.flowercause" %>
<div class="pageFlowerCauseList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
    	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="g1" GridLines="None" runat="server" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="causeID" HeaderText="IND"></asp:BoundColumn>
                 <asp:TemplateColumn HeaderText="<%$ Resources:admin,ShippingReason %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerCause.aspx?IND=" & DataBinder.Eval(Container.DataItem,"causeID") & "" %> '><%#Eval("causeName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" Visible="false" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                    	<asp:HyperLink ID="hypEditDetay" runat="Server" CssClass="btnIcon fancyContent" Text="<%$ Resources:admin,Detail %>" NavigateUrl='<%# "/admin/ecommerce/product/AddFlowerCause.aspx?IND=" & DataBinder.Eval(Container.DataItem,"causeID") & "" %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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