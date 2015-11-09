<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.coupons" CodeBehind="coupons.ascx.vb" %>
<div id="coupons" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="alert" visible="false" runat="server" class="alert">Sizin için hazýrlanmýþ indirim kuponu yok.</div>
            <asp:DataGrid ID="Datagrid1" CellPadding="4" runat="server" AutoGenerateColumns="False" PageSize="20" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                <FooterStyle />
                <AlternatingItemStyle />
                <ItemStyle />
                <HeaderStyle Wrap="false" />
                <Columns>
                    <asp:BoundColumn DataField="CouponCode" HeaderText="<%$ Resources:lang, CouponNo%>"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">
                        <ItemTemplate>
                            <asp:Label ID="lblActive" runat="server" Text='<%# iif(DataBinder.Eval(Container, "DataItem.IsActive") and (DataBinder.Eval(Container, "DataItem.IsUsed")=False),"Aktif","Pasif") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ActiveUntilDay%>">
                        <ItemTemplate>
                            <asp:Label ID="lblStartDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.StartDate", "{0:d}") %>'></asp:Label>
                            -
                            <asp:Label ID="lblEndDate" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.EndDate", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Wrap="False" />

                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="false" DataField="Discount" DataFormatString="{0:0.00 TL}"
                        HeaderText="<%$ Resources:lang, CouponDiscount%>" SortExpression="Discount">
                        <ItemStyle HorizontalAlign="Right" Wrap="False" />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, CouponDiscount%>">
                        <ItemTemplate>
                            <asp:Label ID="lblDiscount" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(Eval("Discount") * (DefaultCurrencyRate / CurrencyRate)) & " " & CurrencySymbolRight %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Description%>">
                        <ItemTemplate>
                            <asp:Label ID="lblAciklama" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" PageButtonCount="20" />
            </asp:DataGrid>
            <label>
                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label></label>
        </div>
    </div>
</div>
