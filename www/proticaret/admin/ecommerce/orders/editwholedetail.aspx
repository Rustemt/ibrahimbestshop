<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editwholedetail.aspx.vb" Inherits="ASPNetPortal.editwholedetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>SeriSiparişDetayı</title>
    <script type="text/JavaScript">
        function printdiv(printpage) {
            var headstr = "<html><head ></head><body>";
            var footstr = "</body>";
            if (document.getElementById != null) {
                var newstr = document.getElementById(printpage).innerHTML;
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            else {
                //document.all.item(printpage).innerHTML;
                var newstr = document.all.item(printpage).innerHTML
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            return false;
        }
    </script>
</head>
<body style="overflow: scroll;">
    <form id="form1" runat="server">
        <div id="div_print">
            <div id="module" class="module">
                <div id="module_content">

                    <table id="tblContent" width="100%">

                        <tr>
                            <div id="header">
                                <table>
                                    <td id="SepetContainer" runat="server">
                                        <div class="module_box">
                                            <label>
                                                <asp:Label ID="lblKampanya0" runat="server"></asp:Label></label>
                                            <asp:DataGrid ID="dgWholelist" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                                                <Columns>
                                                    <asp:TemplateColumn Visible="False">
                                                        <ItemTemplate>
                                                            <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'> </asp:Label>
                                                            <asp:Label ID="lblrenk" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "RenkId") %>'> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Width="0px"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductCode%>" Visible="False">
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="Hyperlink2" runat="server" Text='<%# container.dataitem("ProductCode")  %>'
                                                                NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn ItemStyle-Width="80px" HeaderText="<%$ Resources:lang, ProductImage%>" HeaderStyle-HorizontalAlign="Center">
                                                        <ItemStyle HorizontalAlign="Center" />
                                                        <ItemTemplate>
                                                            <img alt="" class="thumb" src='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                                                        <ItemTemplate>
                                                            <itemstyle wrap="False"></itemstyle>
                                                            <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName") %>'
                                                                NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>



                                                    <asp:TemplateColumn HeaderText="Beden Adet">
                                                        <ItemTemplate>
                                                            <itemstyle wrap="False"></itemstyle>
                                                            <asp:Repeater runat="server" ID="rptSizeQty" OnItemDataBound="rptSizeQty_OnItemDataBound">
                                                                <ItemTemplate>
                                                                    <asp:Label runat="server" ID="lblBedenID" Visible="False"></asp:Label>
                                                                    <asp:Label runat="server" ID="lblBedenName"></asp:Label>
                                                                    <asp:Label runat="server" ID="txtSizeQty"></asp:Label><br />
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>


                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Point%>">
                                                        <ItemTemplate>
                                                            <itemstyle></itemstyle>
                                                            <asp:Label ID="lblPuan" runat="server"> </asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                                                        <ItemStyle Wrap="False" Width="120" HorizontalAlign="left"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="Quantity" runat="server" MaxLength="4" Columns="4"> </asp:TextBox>
                                                            &nbsp;<asp:Label ID="UnitId" runat="server" Visible="False" Text='<%# Container.DataItem("UnitId") %>'> </asp:Label>
                                                            <asp:Label runat="server" Text='<%# Container.DataItem("BirimAdi") %>' ID="Label18"> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="center"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                                                        <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" ID="Label9" name="Label9"> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="Right"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:BoundColumn DataField="KdvRate" DataFormatString="%{0:0}" HeaderText="<%$ Resources:lang, TaxRate%>">
                                                        <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="Right"></HeaderStyle>
                                                    </asp:BoundColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, PiceWithoutTax%>">
                                                        <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label12" runat="server" > </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="Right"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:BoundColumn DataField="Barcode" HeaderText="<%$ Resources:lang, Barcode%>" Visible="false"></asp:BoundColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                            <table id="TblSepet" cellspacing="0" cellpadding="2" width="100%" border="0">

                                                <tr>
                                                    <td>
                                                        <div id="stokalert" visible="false" runat="server" class="alert">
                                                            <asp:Label ID="lblStokError" runat="Server" EnableViewState="False"></asp:Label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                                            <tr>
                                                                <td align="left">
                                                                    <asp:DataList ID="dlCargoList" runat="server" RepeatDirection="vertical">
                                                                        <HeaderTemplate><b><%=GetGlobalResourceObject("lang", "ShippingPrice")%></b></HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblCargoName" runat="server" Text='<%# container.dataitem("CargoName") %>'></asp:Label>:
				                                                <asp:Label ID="lblCargoText" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(container.dataitem("CargoPrice") * (DefaultCurrencyRate / CurrencyRate))& " " & CurrencySymbolRight %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:DataList>
                                                                </td>
                                                                <td align="right">
                                                                    <table cellpadding="2">
                                                                        <tr>
                                                                            <td align="right">
                                                                                <b>Toplamlar</b></td>
                                                                            <td align="right"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Ağırlık(gr) :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamAgirlik" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Hacim(cm3) :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamHacim" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Desi :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamDesi" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam İndirim :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamIndirim" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Tutar :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamTutar" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Kdv :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamKdv" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Kdv Dahil Toplam :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="AraToplam" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Hediye Çeki İndirimi :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="HediyeCekiToplam" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Ara Toplam :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="KdvDahilToplam" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Toplam Kargo :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="ToplamKargo" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Kargo Dahil Toplam :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="KargoDahilToplam" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right">Ödenen Toplam Tutar :</td>
                                                                            <td align="right">
                                                                                <asp:Label ID="OdenenToplamTutar" runat="server"></asp:Label></td>
                                                                            <asp:Label ID="CurrencyCode" Visible="false" runat="server"></asp:Label>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </table>
                            </div>
                        </tr>

                    </table>
                </div>
                <asp:HyperLink ID="btnPrint" runat="server" CssClass="button" NavigateUrl="javascript:void(printdiv('div_print'));" ToolTip="Sayfayı Yazdır">Yazdır</asp:HyperLink>
                <asp:Button ID="btnClose" runat="server" Text="Kapat" CssClass="button" />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </div>
        </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
