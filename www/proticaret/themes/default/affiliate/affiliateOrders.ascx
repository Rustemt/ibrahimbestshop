<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateOrders"
    CodeBehind="AffiliateOrders.ascx.vb" %>
<div id="affiliateorders" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:DataGrid ID="dgOrders" runat="server" PagerStyle-PrevPageText="Prev" PagerStyle-NextPageText="Next"
                PagerStyle-HorizontalAlign="Right" PagerStyle-Mode="NumericPages" PageSize="20"
                AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CellPadding="4"
                Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none"
                ItemStyle-CssClass="row">
                <Columns>
                    <asp:BoundColumn DataField="AffiliateOrdersId" HeaderText="IND" Visible="False">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="OrderCode" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"
                        HeaderText="<%$ Resources:lang, OrderId%>"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CreatedDate" DataFormatString="{0:d}" HeaderText="<%$ Resources:lang, OrderDate%>"
                        SortExpression="CreatedDate"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Type" HeaderText="<%$ Resources:lang, PaymentType%>">
                    </asp:BoundColumn>
                    <asp:BoundColumn Visible="true" DataField="Total" HeaderStyle-HorizontalAlign="right"
                        ItemStyle-HorizontalAlign="right" DataFormatString="{0:0.00 TL}" HeaderText="<%$ Resources:lang, Earns%>">
                    </asp:BoundColumn>
                    <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:lang, Earns%>">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblTotal" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(Eval("Total")/ CurrencyRate)  & " " & CurrencySymbolRight%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="Status" HeaderText="<%$ Resources:lang, Status%>"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Details" HeaderText="<%$ Resources:lang, Description%>">
                    </asp:BoundColumn>
                </Columns>
                <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15"
                    CssClass="Global_TabloBaslik" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>
            <label>
                <%=GetGlobalResourceObject("lang", "TotalRecords")%>
                :
                <asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
        </div>
    </div>
</div>
