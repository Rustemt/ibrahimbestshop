<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="orderconfirm.ascx.vb" Inherits="ASPNetPortal.facebookorderconfirm" %>
<div id="orderconfirm" class="module">
    <div id="module_content">
        <% if HeaderVisible then %>
            <div class="moduleTitle">
                <%=ModuleTitle%>
                <% if IsEditable then %>
                <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
                <% end if %>
            </div>
        <% end if %>
        <div class="moduleContent moduleContentCol1">
            <div id="div_print">
                <div id="info" runat="server" class="information title4"><%=GetGlobalResourceObject("lang", "OrderMsg1")%></div>

                <label>
                    <%=GetGlobalResourceObject("lang", "OrderDate")%> :
                    <asp:Label ID="OrderDate" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "OrderId")%> :
                    <asp:Label ID="OrderId" runat="server"></asp:Label>
                </label>
                <label>

                    <%=String.Format(GetGlobalResourceObject("lang", "OrderMsg2").ToString, FullName, PaymentType)%>
                </label>
                <label class="title4"><%=GetGlobalResourceObject("lang", "Products")%></label>
                <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                    <Columns>
                        <asp:BoundColumn DataField="OrderDetailsId" HeaderText="ID" Visible="False"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="false"></asp:BoundColumn>
                        <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description").ToString.Replace(BaseUrl & "/Uploads/orderpictures/", "")  %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label>
                                    <asp:Label ID="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") & " " & DataBinder.Eval(Container.DataItem, "BirimAdi") %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>" Visible="false">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label>
                                    <asp:Label ID="lblDoviz" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) ) & " " & container.dataitem("Pb1Name") %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" Wrap="False" />
                            <ItemTemplate>
                                <label>
                                    <asp:Label ID="BirimFiyat" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate")/ CurrencyRate))& " " & CurrencySymbolRight %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0.00}" HeaderText="<%$ Resources:lang, TaxRate%>" Visible="False"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                            <ItemTemplate>
                                <label>
                                    <asp:Label ID="Tutar" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ CurrencyRate),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity")) & " " & CurrencySymbolRight %>'></asp:Label></label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
                <table cellpadding="15" width="100%">
                    <tr>
                        <td align="right">
                            <table cellpadding="3" cellspacing="0">
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalDiscount")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamIndirim" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalPrice")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamTutar" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalTax")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamKdv" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalIncludeTax")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="AraToplam" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "CouponDiscount")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="HediyeCekiToplam" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "SubTotal")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="KdvDahilToplam" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalCargo")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamKargo" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TotalIncludeCargo")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="KargoDahilToplam" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=PaymentType & " ile " & GetGlobalResourceObject("lang", "TotalToPay")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="BankaToplamTutar" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <label style="text-align: right">
                <asp:HyperLink ID="HyperLink1" CssClass="button" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>
            <% =TrustedShopScript %>
            <% =goglecode%>
            <% =goglecode1%>
            <% =gelirortaklari %>
        </div>
    </div>
</div>
