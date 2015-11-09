<%@ Control Language="vb" AutoEventWireup="false" Inherits="CPayTypes" Codebehind="CPayTypes.ascx.vb" %>
<div class="pageOtherPayTypes">
	<asp:Label ID="lblerr" runat="server"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	
	<div class="buttonGroup">
    	<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">     
            <Columns>
                <asp:BoundColumn DataField="PayTypeId" Visible="false" SortExpression="PayTypeId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,PayTypeName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/paytypes/EditPayType.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PayTypeId") & "&DIND=" & 0 & ""%> '><%#Eval("PayTypeName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Ýndirim / Ýlave Oraný" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                      % <%#Eval("DisCount") * -1 %>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,Status %>" SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox1"></asp:CheckBox> 
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" Visible="false" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1"  runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/paytypes/EditPayType.aspx?IND=" & DataBinder.Eval(Container.DataItem, "PayTypeId") & "&DIND=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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