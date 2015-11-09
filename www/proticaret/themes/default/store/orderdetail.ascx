<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderdetail" CodeBehind="orderdetail.ascx.vb" %>
<div id="orderdetail" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <div id="div_print">
                <label>
                    <%=GetGlobalResourceObject("lang", "OrderId")%> :
                    <asp:Label ID="OrderId" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "GiftNote")%> :
                    <asp:Label ID="Note" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "PaymentType")%> :
                    <asp:Label ID="PaymentType" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "Status")%> :
                    <asp:Label ID="Status" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "OrderDate")%> :
                    <asp:Label ID="OrderDate" runat="server"></asp:Label>
                </label>
                <label>
                    <%=GetGlobalResourceObject("lang", "ShippingDate")%> :
                    <asp:Label ID="ShipDate" runat="server"></asp:Label>
                </label>
                <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="False" CellPadding="3" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                    <Columns>
                        <asp:BoundColumn Visible="False" DataField="OrderDetailsId" HeaderText="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="false"></asp:BoundColumn>
                        <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") & " " & DataBinder.Eval(Container.DataItem, "BirimAdi") %>'> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>" Visible="false">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="lblDoviz" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) ) & " " & container.dataitem("Pb1Name") %>'> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#  formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate")) / container.dataitem("CurrencyRate")) & " " & container.dataitem("CurrencyCode") %>' ID="BirimFiyat"> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0.00}" HeaderText="<%$ Resources:lang, TaxRate%>" Visible="False"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
                            <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="Tutar" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ container.dataitem("CurrencyRate")),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity"))  & " " & container.dataitem("CurrencyCode")%>'> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">
                            <HeaderStyle HorizontalAlign="center"></HeaderStyle>
                            <ItemStyle HorizontalAlign="center"></ItemStyle>
                            <ItemTemplate>
                                <asp:Label ID="HyperLink1" runat="Server"> <%# DataBinder.Eval(Container, "DataItem.StatusName") %> </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
                <table cellpadding="3" cellspacing="0" border="0" width="100%">
                    <tr>
                        <td valign="top">
                            <label><b><%=GetGlobalResourceObject("lang", "ShippingAddres")%></b></label>
                            <table cellpadding="3" cellspacing="0" border="0" width="100%">
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "CargoName")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingCargoName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "ShippingName")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "PhoneNumber")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingPhoneNo" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "PhoneGsm")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingMobilePhone" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "City")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingCityName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "Address")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="ShippingAddress" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <label><b><%=GetGlobalResourceObject("lang", "BillingAddres")%></b></label>
                            <table cellpadding="3" cellspacing="0" border="0" width="100%">
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "BillingName")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="BillingName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TaxOffice")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="BillingTaxOffice" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "TaxNo")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="BillingTaxNo" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "City")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="BillingCityName" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td><%=GetGlobalResourceObject("lang", "Address")%></td>
                                    <td>:</td>
                                    <td>
                                        <asp:Label ID="BillingAddress" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>:</td>
                                    <td></td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <label><b><%=GetGlobalResourceObject("lang", "Totals")%></b></label>
                            <table cellpadding="3" cellspacing="0" border="0" width="100%">
                                <tr style="display: none; visibility: hidden;">
                                    <td><%=GetGlobalResourceObject("lang", "TotalHeight")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamAgirlik" runat="server"></asp:Label></td>
                                </tr>
                                <tr style="display: none; visibility: hidden;">
                                    <td><%=GetGlobalResourceObject("lang", "TotalVolume")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="ToplamHacim" runat="server"></asp:Label></td>
                                </tr>
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
                                    <td><%=GetGlobalResourceObject("lang", "TotalIncludeTax")%></td>
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
                                    <td><%=GetGlobalResourceObject("lang", "TotalToPay")%></td>
                                    <td>:</td>
                                    <td align="right">
                                        <asp:Label ID="BankaToplamTutar" runat="server"></asp:Label></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblErr" runat="server"></asp:Label>
                <a class="button" style="display: none;" onclick="window.close();parent.$.fn.colorbox.close();" href="#"><%=GetGlobalResourceObject("lang", "Close")%></a>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            </div>
            <label style="text-align: right">
                <asp:HyperLink ID="HyperLink1" CssClass="button" runat="server" NavigateUrl="javascript:void(printdiv('div_print'));"><%=GetGlobalResourceObject("lang", "Print")%></asp:HyperLink></label>
        </div>
    </div>
</div>
<script type="text/javascript" src="<% =getThemePath() %>/js/rendermodules.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
