<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cbookingstatus.ascx.vb" Inherits="ASPNetPortal.cbookingstatus" %>
<div class="pageBookingStatusList">
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
                <asp:BoundColumn DataField="StatusId" SortExpression="StatusId" HeaderText="IND" ></asp:BoundColumn>
                  <asp:TemplateColumn SortExpression="ReasonName" HeaderText="<%$ Resources:admin,StatusName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/product/editbookingstatus.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StatusId")%> '><%#Eval("StatusName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>                
                  <asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                             <asp:CheckBox runat="server" Checked='<%# IIf(Eval("IsActive"), "True", "False")%>' ID="chk1"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateColumn>                  
                <asp:TemplateColumn HeaderText="Detay" FooterText="<%$ Resources:admin,Detail %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/editbookingstatus.aspx?IND=" & DataBinder.Eval(Container.DataItem, "StatusId")%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
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