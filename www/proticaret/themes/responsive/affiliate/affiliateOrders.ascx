<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.AffiliateOrders"
    CodeBehind="AffiliateOrders.ascx.vb" %>
<div id="affiliateorders" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1"> 
        <div class="dataTable">
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
                <PagerStyle NextPageText="Next" PrevPageText="Prev" HorizontalAlign="Left" PageButtonCount="15" CssClass="Global_TabloBaslik dataPager" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>
        </div>
        
        <div class="dataCount">
        	<ul>
            	<li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b><asp:Label ID="lblTotalRecord" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b><asp:Label ID="lblPageCount" CssClass="textRed" runat="server"></asp:Label></b></li>
                <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b><asp:Label ID="lblCurrentIndex" CssClass="textRed" runat="server"></asp:Label></b></li>
            </ul>
        </div>
        
        <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
         
    </div>
</div>
