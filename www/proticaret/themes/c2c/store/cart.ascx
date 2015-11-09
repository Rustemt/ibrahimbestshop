<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cart.ascx.vb" Inherits="ASPNetPortal.cartc2c" %>

<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<div id="cart" class="module">
	<% If HeaderVisible Then%>
    <div class="moduleTitle">
		Sepetim
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="editTitle"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    
    <div class="cartContent moduleContent clearFix">     
    	<div class="multiCart clearFix">
                <div id="SepetlerContainer" runat="server">
                    <label class="title3"><%=GetGlobalResourceObject("lang", "Carts")%></label>
                    
                    <div id="transferalert" visible="false" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "CartMsg5")%></div>
                    
                    <div class="crt-m-left fLeft"> 
                        <table id="TblSepetler" runat="server" cellpadding="5">
                            <tr>
                                <td><span><%=GetGlobalResourceObject("lang", "SelectCart")%> :</span></td>
                                <td>
                                	<asp:DropDownList ID="ddlSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                    <asp:HyperLink ID="lnkaddnew" CssClass="button lightbox" runat="server"><%=GetGlobalResourceObject("lang", "AddNew")%></asp:HyperLink>
                                    <asp:HyperLink ID="lnkEdit" CssClass="button lightbox" runat="server"><%=GetGlobalResourceObject("lang", "Edit")%></asp:HyperLink>
                                    <asp:LinkButton ID="lnkDeleteCart" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div> 
                    
                    <div class="crt-m-right fLeft"> 
                        <table id="TblTransfer" runat="server" cellpadding="5">
                            <tr>
                                <td><asp:Label ID="lblTr" runat="server"><%=GetGlobalResourceObject("lang", "SelectTargetCart")%> :</asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlTransferSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                	<asp:LinkButton ID="lnkTransfer" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "TransferToCart")%></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </div>  
                </div>
            </div>   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="cartProduct radius5 fLeft">        
                    <table width="100%">
                        <tr>
                            <td id="SepetContainer" runat="server">
                                <label><asp:Label ID="lblKampanya0" runat="server"></asp:Label></label>
                                <div class="dataTable1">
                                	<div class="dataTable">
                                    <table id="TblSepet" cellspacing="2" cellpadding="2" width="100%" border="0">
                                        <asp:ListView ID="ProductsListView" runat="server">
                                            <LayoutTemplate>
                                                <tr class="group" style="display:none;">
                                                    <td colspan="9"></td>
                                                </tr>
                                                <tr runat="server" class="title" >
                                                    <td width="11%">Ürün Resmi</td>
                                                    <td width="17%">Ürün Adı</td>
                                                    <td width="11%">Kargo</td>
                                                    <td width="11%">Birim Fiyat</td>
                                                    <td width="11%">Miktar</td>
                                                    <td width="11%">Fiyatı</td>
                                                    <td width="5%">KDV(%)</td>
                                                    <td width="11%">KDV Dahil Tutar</td>
                                                    <td width="5%">Seçim</td>
                                                </tr>
                                                <tr runat="server" id="groupPlaceholder" style="display:none;"></tr>
                                                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <%# AddGroupingRowIfSupplierHasChanged()%>
                                                <tr>
                                                    <td width="11%"><img alt="" class="thumb" src='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' /></td>
                                                    <td width="17%">
                                                        <asp:HyperLink ID="Hyperlink7" runat="server" Text='<%# container.dataitem("ProductName") %>'
                                                            NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>'> </asp:HyperLink>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# container.dataitem("Description").tostring.Replace(BaseUrl & "/Uploads/orderpictures/", "") %>'></asp:Label>
                                                        <asp:Label ID="Label4" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                        <asp:HyperLink ID="Hyperlink1a6" Visible='<%# iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'
                                                            runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../store/campaininfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '> </asp:HyperLink>
                                                        <asp:Label ID="lblPuan" Visible="false" runat="server"></asp:Label>
                                                    </td>
                                                    <td width="11%">
                                                        <asp:Label ID="lblcargo" runat="server" />
                                                        <asp:DropDownList ID="ddlcargo" runat="server"></asp:DropDownList>
                                                    </td>
                                                    <td width="11%">
                                                        <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate") / CurrencyRate)) & " " & CurrencySymbolRight  %>'
                                                            ID="Label9" name="Label9"> </asp:Label>
                                                    </td>
                                                    <td width="11%">
                                                        <asp:TextBox ID="Quantity" Enabled='<%# iif(container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' MaxLength="4" Columns="4"> </asp:TextBox>
                                                        <asp:Label ID="UnitId" runat="server" Visible="False" Text='<%# Container.DataItem("UnitId") %>'> </asp:Label>
                                                        <asp:Label runat="server" Text='<%# Container.DataItem("BirimAdi") %>' ID="Label18"> </asp:Label>
                                                    </td>
                                                    <td width="11%">
                                                        <asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")/CurrencyRate),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)),container.dataitem("Indirim")),UserIndirim) * container.dataitem("qty"))  & " " & CurrencySymbolRight %>'> </asp:Label></td>
    
                                                    <td width="5%">
                                                        <asp:Label runat="server" Text='<%# container.dataitem("KdvRate") %>'
                                                            ID="Labe7l3" name="Label9"> </asp:Label></td>
                                                   <td width="11%">
                                                        <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate") / CurrencyRate)) & " " & CurrencySymbolRight  %>'
                                                            ID="Label11" name="Label9"> </asp:Label>
                                                    </td>
                                                    <td width="5%" align="center">
                                                        <asp:CheckBox ID="Remove" runat="server"></asp:CheckBox>
                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                        <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'> </asp:Label>
                                                        <asp:Label ID="RecordId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>'> </asp:Label>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        
                                        <div style="display:none">
                                            <asp:DataGrid ID="DataGrid0" Visible="false" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyField="Qty" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
                                                <Columns>
                                                    <asp:TemplateColumn Visible="False">
                                                        <ItemTemplate>
                                                            <asp:Label ID="ProductId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "ProductId") %>'> </asp:Label>
                                                            <asp:Label ID="RecordId" runat="server" Visible="False" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>'> </asp:Label>
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
                                                            <asp:Label ID="Label1" runat="server" Text='<%# container.dataitem("Description").tostring.Replace(BaseUrl & "/Uploads/orderpictures/", "") %>'></asp:Label>
                                                            <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                            <asp:HyperLink ID="Hyperlink1a6" Visible='<%# iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'
                                                                runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../store/campaininfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '> </asp:HyperLink>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Point%>">
                                                        <ItemTemplate>
                                                            <itemstyle wrap="False"></itemstyle>
                                                            <asp:Label ID="lblPuan" runat="server"> </asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                                                        <ItemStyle Wrap="False" Width="120" HorizontalAlign="left"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:TextBox ID="Quantity" Enabled='<%# iif(container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' MaxLength="4" Columns="4"> </asp:TextBox>
                                                            &nbsp;<asp:Label ID="UnitId" runat="server" Visible="False" Text='<%# Container.DataItem("UnitId") %>'> </asp:Label>
                                                            <asp:Label runat="server" Text='<%# Container.DataItem("BirimAdi") %>' ID="Label18"> </asp:Label>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="False" HorizontalAlign="center"></HeaderStyle>
                                                    </asp:TemplateColumn>
                                                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                                                        <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate") / CurrencyRate)) & " " & CurrencySymbolRight  %>'
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
                                                            <asp:Label ID="Label12" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcIndirim(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")/CurrencyRate),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductId")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)),container.dataitem("Indirim")),UserIndirim) * container.dataitem("qty"))  & " " & CurrencySymbolRight %>'> </asp:Label>
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
                                        </div>
                                        <tr>
                                            <td colspan="9" align="right">
                                                <div id="stokalert" visible="false" runat="server" class="alert">
                                                    <asp:Label ID="lblStokError" runat="Server" EnableViewState="False"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="9" align="right">
                                                <asp:LinkButton ID="lnkUpdate" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "Update")%></asp:LinkButton>
                                                <asp:LinkButton ID="lnkDelete" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                
                <div class="cartPrice radius5 fRight">
                	<div class="cTopPrice">
                    	<div class="cText">
                            <asp:Label ID="Label7" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithTax")%>:</asp:Label>
                        </div>
                        <div class="cBigPrice">
                        	<asp:Label ID="lblKdvDahilToplam" runat="server"></asp:Label>
                        </div>
                        <div class="cText">
                            <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("lang", "TotalTax")%>:</asp:Label>
                            <asp:Label ID="lblToplamKdv" runat="server"></asp:Label>
                        </div>
                        <div class="cartButton">
                        	<asp:Button ID="btnbuy" CssClass="button" Text="Alışverişi Tamamla" runat="server" />
                        </div>
                    </div>
                    
                    <div class="cTopPrice2">
                    	<div class="cText">
                           <asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("lang", "TotalProductsPrice")%>:</asp:Label>
                        </div>
                        <div class="cMiniPrice">
                        	<asp:Label ID="lblToplamTutar" runat="server"></asp:Label>
                        </div>
                        <div class="cText">
                          	<asp:Label ID="lblHavale" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithTransfer")%>:</asp:Label>
                        </div>
                        <div class="cMiniPrice">
                        	<asp:Label ID="lblKdvDahilHavale" runat="server"></asp:Label>
                        </div>
                        <div class="cText">
                            <asp:Label ID="lblKKTek" runat="server"><%=GetGlobalResourceObject("lang", "TotalWithCreditCart")%>:</asp:Label>
                        </div>
                        <div class="cMiniPrice">
                        	<asp:Label ID="lblKdvDahilKK" runat="server"></asp:Label>
                        </div>
                    </div>
                    
                    <div class="camp">
                        <asp:HyperLink ID="lnkUseCoupons" CssClass="lightbox" runat="server" NavigateUrl="/store/addcoupon.aspx"><%=GetGlobalResourceObject("lang", "AddCoupon")%></asp:HyperLink>
                        <div class="clear"></div>
                        <asp:Label ID="lblCouponInfo" runat="server" EnableViewState="False"></asp:Label>
                        <asp:LinkButton ID="btnDeleteCoupon" runat="server" CssClass="button" Visible="False"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                    </div>
                    
                    <table style="display:none;">
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
                                        <td align="right" colspan="2">
                                            <asp:Label ID="lblSepetSeperator2" runat="server"></asp:Label></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    
                    <div class="button1">
                    <table cellpadding="0">
                        <tr>
                            <td>
                                <asp:LinkButton ID="btnMailOrder" runat="server" Visible="False"><%=GetGlobalResourceObject("lang", "Buy")%></asp:LinkButton></td>
                            <td>
                                <span style="display:none;"><asp:HyperLink ID="lnkbuyuser" runat="server" NavigateUrl="/store/orderstep2.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink></span>
                                <asp:HyperLink ID="lnkbuyguest" runat="server" NavigateUrl="/store/orderstep1popup.aspx?ReturnUrl=/store/orderstep1popup.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </div>
                
                    
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnMailOrder" />
            </Triggers>
        </asp:UpdatePanel>
        
        
        <div class="clearFix"></div>
         <div class="error">
            <div id="cartalert" visible="false" runat="server" class="title2">
                <asp:Label ID="lblcartError" runat="Server" EnableViewState="False"></asp:Label>
            </div>
        </div>
    </div>
        
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
<script type="text/javascript">
    $(document).ready(function () {
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
        $(".lightboxCoupon").colorbox({ onClosed: function () { location.reload(true); }, width: "400", height: "200", iframe: true });
        $(".lightbox").colorbox({ title: false, width: "400", height: "300", iframe: true, scrolling: false, onClosed: function () { window.location.reload(); } });
        $(".lnkbuyguest").colorbox({ title: false, width: "600", height: "350", iframe: true, scrolling: false });
    });
</script>


<script type="text/VB" runat="server">

    Dim lastSupplierNameValue As String = Nothing
    Protected Function AddGroupingRowIfSupplierHasChanged() As String
        
        Dim currentSupplierNameValue As String = Eval("ShopNickName").ToString()

        
        If currentSupplierNameValue.Length = 0 Then
            currentSupplierNameValue = "Unknown"
        End If

        
        If lastSupplierNameValue <> currentSupplierNameValue Then
            'There's been a change! Record the change and emit the table row
            lastSupplierNameValue = currentSupplierNameValue

            Return String.Format("<tr class=""group shopTitle""><td colspan=""9"">Mağaza : {0}</td></tr>", currentSupplierNameValue)
        Else
            
            Return String.Empty
        End If
    End Function

</script>
