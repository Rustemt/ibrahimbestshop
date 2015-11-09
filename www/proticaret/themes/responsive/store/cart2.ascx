<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cart2.ascx.vb" Inherits="ASPNetPortal.cart21" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="cart" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <img src="<%=getThemePath() %>/images/adim_1.png" />
        </div>
        <% End If%>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table id="TblMain" cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td align="left">
                            <div class="module_box">
                                <asp:HyperLink ID="lnkUseCoupons" CssClass="lightbox addbutton" runat="server" NavigateUrl="/store/addcoupon.aspx"><%=GetGlobalResourceObject("lang", "AddCoupon")%></asp:HyperLink>
                                <div class="clear"></div>
                                <asp:Label ID="lblCouponInfo" runat="server" EnableViewState="False"></asp:Label>
                                <asp:LinkButton ID="btnDeleteCoupon" runat="server" CssClass="deletebutton" Visible="False"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="SepetlerContainer" runat="server">
                            <div class="module_box">
                                <label class="subtitle"><%=GetGlobalResourceObject("lang", "Carts")%></label>

                                <table cellpadding="1" cellspacing="0" border="0" width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <div id="transferalert" visible="false" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "CartMsg5")%></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <table id="TblSepetler" cellspacing="0" cellpadding="0" width="100%" border="0" runat="server">
                                                <tr>
                                                    <td>
                                                        <%=GetGlobalResourceObject("lang", "SelectCart")%>
                                                        <asp:DropDownList ID="ddlSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                                        <asp:HyperLink ID="lnkaddnew" CssClass="addbutton lightbox" runat="server"><%=GetGlobalResourceObject("lang", "AddNew")%></asp:HyperLink>
                                                        <asp:HyperLink ID="lnkEdit" CssClass="editbutton lightbox" runat="server"><%=GetGlobalResourceObject("lang", "Edit")%></asp:HyperLink>
                                                        <asp:LinkButton ID="lnkDeleteCart" CssClass="deletebutton" runat="server"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td align="right">
                                            <table id="TblTransfer" runat="server">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblTr" runat="server"><%=GetGlobalResourceObject("lang", "SelectTargetCart")%></asp:Label>
                                                        <asp:DropDownList ID="ddlTransferSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                                        <asp:LinkButton ID="lnkTransfer" CssClass="transferbutton" runat="server"><%=GetGlobalResourceObject("lang", "TransferToCart")%></asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="SepetContainer" runat="server">
                            <div class="module_box">
                                <label>
                                    <asp:Label ID="lblKampanya0" runat="server"></asp:Label></label>
                                <table id="TblSepet" cellspacing="0" cellpadding="2" width="100%" border="0">
                                    <tr>
                                        <td>
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

                                                            <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                            <asp:HyperLink ID="Hyperlink1a6" Visible='<%# iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'
                                                                runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../store/campaininfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '> </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>



                                                    <asp:TemplateColumn HeaderText="Beden Adet">
                                                        <ItemTemplate>
                                                            <itemstyle wrap="False"></itemstyle>
                                                            <asp:Repeater runat="server" ID="rptSizeQty" OnItemDataBound="rptSizeQty_OnItemDataBound">
                                                                <ItemTemplate>
                                                                    <asp:Label runat="server" ID="lblBedenID" Visible="False"></asp:Label>
                                                                    <asp:Label runat="server" ID="lblBedenName"></asp:Label>
                                                                    <asp:TextBox runat="server" ID="txtSizeQty" Width="30px"></asp:TextBox>
                                                                    <cc1:NumericUpDownExtender ID="txtSizeQtyUpDown" runat="server" Maximum="100" Minimum="0" TargetControlID="txtSizeQty" Width="50" ></cc1:NumericUpDownExtender>
                                                                </ItemTemplate>
                                                            </asp:Repeater>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>


                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Point%>">
                                                        <ItemTemplate>
                                                            <itemstyle ></itemstyle>
                                                            <asp:Label ID="lblPuan" runat="server"> </asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                                                        <ItemStyle Wrap="False" Width="120" HorizontalAlign="left"></ItemStyle>
                                                         <ItemTemplate>
                                                            <asp:TextBox ID="Quantity" Enabled='<%# iif(container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' runat="server" MaxLength="4" Columns="4"> </asp:TextBox>
                                                            &nbsp;<asp:Label ID="UnitId" runat="server" Visible="False" Text='<%# Container.DataItem("UnitId") %>'> </asp:Label>
                                                            <asp:Label runat="server" Text='<%# Container.DataItem("BirimAdi") %>' ID="Label18"> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="center"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                                                        <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,1,ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate") / CurrencyRate)) & " " & CurrencySymbolRight  %>'
                                                                ID="Label9" name="Label9"> </asp:Label>
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
                                                            <asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")/CurrencyRate),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,toplam,ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)),container.dataitem("Indirim")),UserIndirim) *container.dataitem("Qty"))  & " " & CurrencySymbolRight %>'> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="Right"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Selection%>">
                                                        <ItemStyle HorizontalAlign="Justify"></ItemStyle>
                                                        <ItemTemplate>
                                                            <center>
                                                                <asp:CheckBox ID="Remove" runat="server"></asp:CheckBox>
                                                            </center>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:BoundColumn DataField="Barcode" HeaderText="<%$ Resources:lang, Barcode%>" Visible="false"></asp:BoundColumn>
                                                </Columns>
                                            </asp:DataGrid>
                                        </td>
                                    </tr>
                             
                                    <tr>
                                        <td>
                                            <div id="stokalert" visible="false" runat="server" class="alert">
                                                <asp:Label ID="lblStokError" runat="Server" EnableViewState="False"></asp:Label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="savebutton"><%=GetGlobalResourceObject("lang", "Update")%></asp:LinkButton>
                                            <asp:LinkButton ID="lnkDelete" runat="server" CssClass="deletebutton"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
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
                                                        <table id="tblfy" cellspacing="0" cellpadding="2" border="0" runat="server">
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblAgirlik" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "TotalHeight")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamAgirlik" runat="server" Visible="False"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHacim" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "TotalVolume")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamHacim" runat="server" Visible="False"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblIndirim" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "TotalDiscount")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamIndirim" runat="server" Visible="False"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("lang", "TotalProductsPrice")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamTutar" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("lang", "TotalTax")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamKdv" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblAraToplam" runat="server"><%=GetGlobalResourceObject("lang", "SubTotal")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamAraToplam" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblCekTutari" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "CouponDiscount")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblToplamCekTutari" runat="server" Visible="False"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="2">
                                                                    <asp:Label ID="lblSepetSeperator1" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="Label7" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithTax")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblHavale" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithTransfer")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblKdvDahilHavale" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:Label ID="lblKKTek" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithCreditCart")%>:</asp:Label></td>
                                                                <td align="right">
                                                                    <asp:Label ID="lblKdvDahilKK" runat="server"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" colspan="2">
                                                                    <asp:Label ID="lblSepetSeperator2" runat="server"></asp:Label></td>
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
                    </tr>
                    <tr>
                        <td align="right">

                            <table id="Table6" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td id="Td7" runat="server"></td>
                                    <td id="Td8" runat="server"></td>
                                    <td id="Td9" runat="server"></td>
                                </tr>
                            </table>
                            <table cellpadding="0">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="btnMailOrder" CssClass="button" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "Buy")%></asp:LinkButton></td>
                                    <td>
                                        <asp:HyperLink ID="lnkbuyuser" CssClass="buybutton" runat="server" NavigateUrl="/store/orderstep2.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink>
                                        <asp:HyperLink ID="lnkbuyguest" CssClass="buybutton lnkbuyguest" runat="server" NavigateUrl="/store/orderstep1popup.aspx?ReturnUrl=/store/orderstep1popup.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="cartalert" visible="false" runat="server" class="alert">
                                <asp:Label ID="lblcartError" runat="Server" EnableViewState="False"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnMailOrder" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0" BackgroundCssClass="modalBackground">
            <ProgressTemplate>
                <div class="modalPopup">
                    <p>
                        <%=GetGlobalResourceObject("lang", "Loading")%>
                        <img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" />
                    </p>
                    <p><%=GetGlobalResourceObject("lang", "PleaseWait")%> </p>
                </div>
            </ProgressTemplate>
        </asp:ModalUpdateProgress>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        //$("#<%= lnkbuyuser.ClientId %>").button({icons:{primary:'ui-icon-circle-check'}});
        //$("#<%= lnkbuyguest.ClientId %>").button({icons:{primary:'ui-icon-circle-check'}});
        //$("#<%= lnkEdit.ClientId %>").button({icons:{primary:'ui-icon-pencil'}});
        //$("#<%= lnkUseCoupons.ClientId %>").button({icons:{primary:'ui-icon-plus'}});
        //$("#<%= lnkaddnew.ClientId %>").button({icons:{primary:'ui-icon-plus'}});
        //$("#<%= lnkDelete.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= lnkDeleteCart.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= btnDeleteCoupon.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= lnkUpdate.ClientId %>").button({icons:{primary:'ui-icon-disk'}});
        //$("#<%= lnkTransfer.ClientId %>").button({icons:{primary:'ui-icon-transfer-e-w'}});
        $(".lightboxCoupon").colorbox({ onClosed: function () { location.reload(true); }, width: "400", height: "200", iframe: true });
        $(".lightbox").colorbox({ title: false, width: "400", height: "300", iframe: true, scrolling: false, onClosed: function () { window.location.reload(); } });
        $(".lnkbuyguest").colorbox({ title: false, width: "600", height: "350", iframe: true, scrolling: false });
    });
    jQuery(document).ready(function () {
        jQuery(window).bind("load", function () {
            var frameWidth = jQuery(document).width();
            var frameHeight = jQuery(document).height() + 20;
            parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
        });
    });
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    prm.add_endRequest(function () {
        //$("#<%= lnkbuyuser.ClientId %>").button({icons:{primary:'ui-icon-circle-check'}});
        //$("#<%= lnkbuyguest.ClientId %>").button({icons:{primary:'ui-icon-circle-check'}});
        //$("#<%= lnkEdit.ClientId %>").button({icons:{primary:'ui-icon-pencil'}});
        //$("#<%= lnkUseCoupons.ClientId %>").button({icons:{primary:'ui-icon-plus'}});
        //$("#<%= lnkaddnew.ClientId %>").button({icons:{primary:'ui-icon-plus'}});
        //$("#<%= lnkDelete.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= lnkDeleteCart.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= btnDeleteCoupon.ClientId %>").button({icons:{primary:'ui-icon-close'}});
        //$("#<%= lnkUpdate.ClientId %>").button({icons:{primary:'ui-icon-disk'}});
        //$("#<%= lnkTransfer.ClientId %>").button({icons:{primary:'ui-icon-transfer-e-w'}});
        $(".lightboxCoupon").colorbox({ onClosed: function () { location.reload(true); }, width: "400", height: "200", iframe: true });
        $(".lightbox").colorbox({ title: false, width: "400", height: "300", iframe: true, scrolling: false, onClosed: function () { window.location.reload(); } });
        $(".lnkbuyguest").colorbox({ title: false, width: "600", height: "350", iframe: true, scrolling: false });
    });
</script>
