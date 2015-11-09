<%@ Control Language="vb" AutoEventWireup="false" Inherits="COrderStatusList" CodeBehind="COrderStatusList.ascx.vb" %>
<div class="pageOrderStatusList">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    
    <div class="buttonGroup">
    	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="StatusID" SortExpression="StatusID" HeaderText="IND" ></asp:BoundColumn>
                                 <asp:TemplateColumn SortExpression="StatusName" HeaderText="<%$ Resources:admin,StatusName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/orders/EditStatu.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StatusID") & "&DIND=" & 0 & ""%> '><%#Eval("StatusName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Detay" FooterText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditStatu.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StatusID") & "&DIND=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>