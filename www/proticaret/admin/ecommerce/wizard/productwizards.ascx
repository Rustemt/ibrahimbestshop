<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.productwizards" CodeBehind="productwizards.ascx.vb" %>
<div class="pageProductWizards">
    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-pencil"></i> Yeni Ekle</asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" PageSize="20" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundColumn Visible="False" DataField="WizardId" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Teknik Tablo Adý" HeaderStyle-Width="100">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink12" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/wizard/editwizarditems.aspx?IND=" & DataBinder.Eval(Container.DataItem,"WizardId") & "&MID=" & 0 & "" %> '><%# Eval("WizardName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Aktif" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Görünür" Visible="false">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsVisible") %>' ID="Checkbox4"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="D&#252;zenle" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="fancyContent" NavigateUrl='<%# "/admin/ecommerce/wizard/EditWizard.aspx?IND=" & DataBinder.Eval(Container.DataItem,"WizardId") & "&MID=" & 0 & "" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Sil" HeaderStyle-Width="100" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
                    <ItemTemplate>
                        <asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>
