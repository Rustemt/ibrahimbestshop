<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CCampains" CodeBehind="ccampains.ascx.vb" %>
<div class="pageCampaigns">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" data-width="800" data-height="600" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <asp:HyperLink ID="lnkexpress" runat="server" CssClass="btnDefault" NavigateUrl="http://www.proticaret.net" Target="_blank" Visible="False">Bu modüldeki özellikleri kullanabilmek için Lütfen Týklayýnýz.</asp:HyperLink>
    </div>
    
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" ShowFooter="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="CampainId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,CampainName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/Campain/EditCampain.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CampainId") & "&MID=" & 0%> '><%#Eval("Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="StartDate" HeaderText="<%$ Resources:admin,StartDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
                <asp:BoundColumn DataField="EndDate" HeaderText="<%$ Resources:admin,EndDate %>" DataFormatString="{0:g}"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" data-width="800" data-height="600" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/Campain/EditCampain.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CampainId") & "&MID=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon" CausesValidation="false" CommandName="Delete"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
	</div>
</div>