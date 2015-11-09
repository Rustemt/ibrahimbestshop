<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CCargos" CodeBehind="CCargos.ascx.vb" %>
<div class="pageCargoList">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
        <span class="fRight">
			<asp:Label ID="lblLimit" runat="server" CssClass="btnDesc"></asp:Label>
            <asp:HyperLink ID="lnkEditLimit" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-cog"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
        </span>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="dgcargos" runat="server" GridLines="None" PageSize="20" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="CargoId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,CargoName %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/cargo/EditCargo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CargoId") & "&MID=" & 0 & ""%> '><%#Eval("CargoName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="CargoMail" HeaderText="<%$ Resources:admin,CargoMail %>"></asp:BoundColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Active %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate> 
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,CargoAutomaticSendMail %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsOnline") %>' ID="Checkbox1"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,CashonDelivery %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "CashOnDelivery") %>' ID="Checkbox2"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,LoadWeight %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/cargo/CargoInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CargoId") & "&MID=" & 0 & ""%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn Visible="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Edit %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent"  NavigateUrl='<%# "/admin/ecommerce/cargo/EditCargo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "CargoId") & "&MID=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                    <ItemTemplate>
                        <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>