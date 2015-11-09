<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_deliverylist.ascx.vb" Inherits="ASPNetPortal.c2c_deliverylist" %>
<div class="deliverylist">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
            <Columns>
                <asp:BoundColumn DataField="TemplateId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Şablon Adı">
                    <ItemTemplate>
                        <asp:HyperLink ID="hypedit" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/c2c/cargo/c2c_editdelivery.aspx?IND=" & DataBinder.Eval(Container.DataItem, "TemplateId") & ""%> '><%#Eval("TemplateName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn> 
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Kargo Ücreti">
                    <ItemTemplate>
                        <asp:Label ID="lblstate" Text='<%# IIf(DataBinder.Eval(Container.DataItem, "CargoPriceType")=1,"Alıcı Öder","Mağaza Öder") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Active %>">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsActive") %>' ID="Checkbox3"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
</div>

