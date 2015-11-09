<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="areadefinitions.ascx.vb" Inherits="ASPNetPortal.areadefinitions" %>
<div class="pageAreaDefinition">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
            <Columns>
                <asp:BoundColumn DataField="areaId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,AreaCode %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/salesman/definitions/AddSaleArea.aspx?IND=" & DataBinder.Eval(Container.DataItem, "areaId") & ""%> '><%#Eval("areaCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="areaName" HeaderText="<%$ Resources:admin,SalesArea %>"></asp:BoundColumn>

                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>

