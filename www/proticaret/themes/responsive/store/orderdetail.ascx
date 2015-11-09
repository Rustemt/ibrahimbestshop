<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.orderdetail" CodeBehind="orderdetail.ascx.vb" %>
<div id="orderdetail" class="module">
    <div id="module_content">
		 <% if HeaderVisible then %>
            <div class="moduleTitle">
                <%=ModuleTitle%>
                <% if IsEditable then %>
                <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
                <% end if %>
            </div>
        <% end if %>
        <div>
            <div id="div_print">
            	<p></p>
                <table cellpadding="3" cellspacing="0" border="1">
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "OrderId")%></td>
                        <td align="left"><asp:Label ID="OrderId" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "GiftNote")%></td>
                        <td align="left"><asp:Label ID="Note" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "PaymentType")%></td>
                        <td align="left"><asp:Label ID="PaymentType" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "Status")%></td>
                        <td align="left"><asp:Label ID="Status" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "OrderDate")%></td>
                        <td align="left"><asp:Label ID="OrderDate" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td><%=GetGlobalResourceObject("lang", "ShippingDate")%></td>
                        <td align="left"><asp:Label ID="ShipDate" runat="server"></asp:Label></td>
                    </tr>
                </table>
                
                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="False" CellPadding="3" Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" ItemStyle-CssClass="row">
                            <Columns>
                                <asp:BoundColumn Visible="False" DataField="OrderDetailsId" HeaderText="ID"></asp:BoundColumn>
                                <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>" Visible="false"></asp:BoundColumn>
                                <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%>
                                <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                                    <ItemTemplate>
                                        <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                                        <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
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
                                        <asp:Label ID="lblDoviz" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati2") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) ) & " " & container.dataitem("Pb1Name") %>'> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#  formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati2") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate")) / container.dataitem("CurrencyRate")) & " " & container.dataitem("CurrencyCode") %>' ID="BirimFiyat"> </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0.00}" HeaderText="<%$ Resources:lang, TaxRate%>" Visible="False"></asp:BoundColumn>
                                <asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                                    <ItemTemplate>
                                        <asp:Label ID="Tutar" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati2") , container.dataitem("Rate")/ container.dataitem("CurrencyRate")),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity"))  & " " & container.dataitem("CurrencyCode")%>'> </asp:Label>
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
                    </div>
                    <div class="moduleContentCol2">
                   		<label><%=GetGlobalResourceObject("lang", "ShippingAddres")%></label>
                        <table cellpadding="3" cellspacing="0" border="1" width="100%">
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "CargoName")%> :</td>
                                <td><asp:Label ID="ShippingCargoName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "ShippingName")%> :</td>
                                <td><asp:Label ID="ShippingName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "PhoneNumber")%> :</td>
                                <td><asp:Label ID="ShippingPhoneNo" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "PhoneGsm")%> :</td>
                                <td><asp:Label ID="ShippingMobilePhone" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "City")%> :</td>
                                <td><asp:Label ID="ShippingCityName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "Address")%> :</td>
                                <td><asp:Label ID="ShippingAddress" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                    </div>
                    <div class="moduleContentCol2">
                    	<label><%=GetGlobalResourceObject("lang", "BillingAddres")%></label>
                        <table cellpadding="3" cellspacing="0" border="1" width="100%">
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "BillingName")%> :</td>
                                <td><asp:Label ID="BillingName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "TaxOffice")%> :</td>
                                <td><asp:Label ID="BillingTaxOffice" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "TaxNo")%> :</td>
                                <td><asp:Label ID="BillingTaxNo" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "City")%> :</td>
                                <td><asp:Label ID="BillingCityName" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td><%=GetGlobalResourceObject("lang", "Address")%> :</td>
                                <td><asp:Label ID="BillingAddress" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                	</div>
                    <div class="moduleContentCol1">
					<label><%=GetGlobalResourceObject("lang", "Totals")%></label>
                    <table cellpadding="3" cellspacing="0" border="1" width="100%">
                        <tr style="display: none; visibility: hidden;">
                            <td><%=GetGlobalResourceObject("lang", "TotalHeight")%> :</td>
                            <td align="right"><asp:Label ID="ToplamAgirlik" runat="server"></asp:Label></td>
                        </tr>
                        <tr style="display: none; visibility: hidden;">
                            <td><%=GetGlobalResourceObject("lang", "TotalVolume")%> :</td>
                            <td align="right"><asp:Label ID="ToplamHacim" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalDiscount")%> :</td>
                            <td align="right"><asp:Label ID="ToplamIndirim" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalPrice")%> :</td>
                            <td align="right"><asp:Label ID="ToplamTutar" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalTax")%> :</td>
                            <td align="right"><asp:Label ID="ToplamKdv" runat="server"></asp:Label></td>
                        </tr>
                        <tr style="display:none;">
                            <td><%=GetGlobalResourceObject("lang", "TotalIncludeTax")%> :</td>
                            <td align="right"><asp:Label ID="AraToplam" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "CouponDiscount")%> :</td>
                            <td align="right"><asp:Label ID="HediyeCekiToplam" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalIncludeTax")%> :</td>
                            <td align="right"><asp:Label ID="KdvDahilToplam" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalCargo")%> :</td>
                            <td align="right"><asp:Label ID="ToplamKargo" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalIncludeCargo")%> :</td>
                            <td align="right"><asp:Label ID="KargoDahilToplam" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><%=GetGlobalResourceObject("lang", "TotalToPay")%> :</td>
                            <td align="right"><asp:Label ID="BankaToplamTutar" runat="server"></asp:Label></td>
                        </tr>
                    </table>
          			</div>
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
            var frameHeight = jQuery(document).height() + 0;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
</script>
