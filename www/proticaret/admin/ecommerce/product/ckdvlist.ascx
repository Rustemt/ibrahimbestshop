<%@ Control Language="vb" AutoEventWireup="false" Inherits="CKdvList" Codebehind="CKdvList.ascx.vb" %>
<div class="pageKDVList">
    <asp:label id="lblSort" runat="server" Visible="False"></asp:label>
    <asp:label id="lblerr" Text="" runat="server"></asp:label>
	
    <div class="buttonGroup">
        <asp:hyperlink ID="lnkAddNew" runat="server"  CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:hyperlink>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">     
            <Columns>
                <asp:BoundColumn DataField="KdvId" Visible="false" SortExpression="ImageId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,TaxName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditKdv.aspx?IND=" & DataBinder.Eval(Container.DataItem, "KdvId") & "&DIND=" & 0%> '><%#Eval("KdvName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="KdvRate" SortExpression="KdvRate" HeaderText="<%$ Resources:admin,TaxRate %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" Visible="false" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                    	<asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditKdv.aspx?IND=" & DataBinder.Eval(Container.DataItem, "KdvId") & "&DIND=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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