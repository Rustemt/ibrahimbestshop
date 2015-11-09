<%@ Control Language="vb" AutoEventWireup="false" Inherits="cproductsizeoptionslist" Codebehind="Cproductsizeoptionslist.ascx.vb" %>
<div class="pageProductOptionsList">
    <asp:Label ID="lblerr" runat="server"></asp:Label>
	
    <div class="buttonGroup">
        <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
    </div>
	
    <div class="dataTable">
        <asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
            <Columns>
                <asp:BoundColumn DataField="ProductSizeOptionId" Visible="False" HeaderText="IND"></asp:BoundColumn>
                <asp:TemplateColumn HeaderText="Ürün Grubu Adý">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizeOption.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&DIND=" & 0%> '><%#Eval("ProductSizeOptionName")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn Visible="false" DataField="ProductSizeOptionName" HeaderText="Ürün Grubu Adý"></asp:BoundColumn>            
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>">                           
                    <ItemTemplate>
                        <asp:CheckBox Enabled="false" ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"ProductSizeOptionActive")%> ' runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="1. Boyut">
                    <ItemTemplate>                       
                        <asp:HyperLink ID="Hyperlink2" runat="Server"  CssClass="btnLink fancyContent" Visible='<%# DataBinder.Eval(Container.DataItem,"ProductSize0Active") %>' NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizeOptionValues.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&SID=" & 0%> '><%# DataBinder.Eval(Container.DataItem,"ProductSize0Name")%></i></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="2. Boyut">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2a" runat="Server"  CssClass="btnLink fancyContent" Visible='<%# DataBinder.Eval(Container.DataItem,"ProductSize1Active") %>' NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizeOptionValues.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&SID=" & 1%> '><%# DataBinder.Eval(Container.DataItem,"ProductSize1Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="3. Boyut">
                    <ItemTemplate>
                        <asp:HyperLink ID="Hyperlink2b" runat="Server"  CssClass="btnLink fancyContent" Visible='<%# DataBinder.Eval(Container.DataItem,"ProductSize2Active") %>' NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizeOptionValues.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&SID=" & 2%> '><%#DataBinder.Eval(Container.DataItem, "ProductSize2Name")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" Visible="false" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Detail %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="Server"  CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProductSizeOption.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&DIND=" & 0%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
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