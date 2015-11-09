<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cartbayi" CodeBehind="cart.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<div id="cart" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table id="TblMain" cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tr>
                        <td align="left">
                            <div class="moduleContentCol1">
                                <asp:HyperLink ID="lnkUseCoupons" CssClass="lightbox button " runat="server" NavigateUrl="/store/addcoupon.aspx"><%=GetGlobalResourceObject("lang", "AddCoupon")%></asp:HyperLink>
                                <div class="clear"></div>
                                <asp:Label ID="lblCouponInfo" runat="server" EnableViewState="False"></asp:Label>
                                <asp:LinkButton ID="btnDeleteCoupon" runat="server" CssClass="button" Visible="False"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="SepetContainer" runat="server">
                            <div>
                                <label>
                                    <asp:Label ID="lblKampanya0" runat="server"></asp:Label></label>
                                <div runat="server" id="div1">
                                </div>
                                <table id="TblSepet" cellspacing="0" cellpadding="2" width="100%" border="0">
                                    <tr>
                                        <td>
                                            <cc1:TabContainer ID="TabContainer" runat="server" ActiveTabIndex="0" AutoPostBack="True" BorderStyle="None">
                                                <cc1:TabPanel ID="TabPanel0" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>

                                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid0" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyField="Qty" CssClass="datalist cartDetail" GridLines="none">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>'></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya1" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyField="Qty" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya2" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya3" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel4" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya4" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel5" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya5" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid5" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel6" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya6" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid6" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel7" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya7" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid7" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel8" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya8" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid8" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel9" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya9" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid9" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                                <cc1:TabPanel ID="TabPanel10" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="lblKampanya10" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid10" runat="server" AutoGenerateColumns="False" DataKeyField="Qty" Width="100%" CssClass="datalist cartDetail">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False"></asp:Label>
                                                                        <asp:Label ID="Attributes" Visible="false" runat="server" Text='<%# container.dataitem("Attributes").tostring  %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                    <HeaderStyle Width="0px" />
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Kodu" Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductCode")  %>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="cartImages" HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="nameDetail" HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" CssClass="texModul" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" CssClass="puan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="unitPrice" HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("BayiFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="adetDetail" HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="detailPrice" HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("BayiFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn ItemStyle-CssClass="kdvDetail" DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk1(Kullanıcı)">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk1" runat="server" Text='<%# UserIndirim %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Indirim" DataFormatString="{0:0}" HeaderText="isk2(ÜrünFiyat)"></asp:BoundColumn>
                                                                <asp:TemplateColumn HeaderText="isk3">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk3" runat="server">
                                                                        </asp:Label>
                                                                        <%-- <asp:Label ID="lblisk3" runat="server" Text='<%# formatNumberEx(CalcIndirimRate(CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)))  %>'>
                                                                        </asp:Label>--%>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="isk4" Visible="false">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisk4" runat="server" Text=""></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>


                                                                <asp:TemplateColumn HeaderText="toplam iskonto tutarı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblisktutar" runat="server"></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn ItemStyle-CssClass="totalPriceDetail" HeaderText="Kdv Dahil Tutar">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="Label12" runat="server">
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Seçim">
                                                                    <ItemTemplate>
                                                                        <center>
                                                                            <asp:CheckBox ID="Remove" runat="server" ToolTip="Bu ürünü silmek için alanı işaretledikten sonra 'Güncelle' Linkine tıklayınız." />
                                                                        </center>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:BoundColumn DataField="Barcode" HeaderText="" Visible="false"></asp:BoundColumn>
                                                            </Columns>
                                                        </asp:DataGrid>
                                                    </ContentTemplate>
                                                </cc1:TabPanel>
                                            </cc1:TabContainer>
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
                                            <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "Update")%></asp:LinkButton>
                                            <asp:LinkButton ID="lnkDelete" runat="server" CssClass="button"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
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
                                        <asp:Button ID="btnAddOffer" runat="server" Text="Teklif İste" CssClass="button" />
                                        <%  If ConfigurationManager.AppSettings("ProductBookedActive") = "True" And HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                                        <asp:HyperLink ID="lnkbooking" CssClass="button lnkbooking" runat="server" NavigateUrl="/store/bookingproducts.aspx">Rezervasyon Talebi</asp:HyperLink>
                                        <% End If%>
                                        <asp:HyperLink ID="lnkbuyuser" CssClass="button" runat="server" NavigateUrl="/store/orderstep2.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink>
                                        <asp:HyperLink ID="lnkbuyguest" CssClass="button lnkbuyguest" runat="server" NavigateUrl="/store/orderstep1popup.aspx?ReturnUrl=/store/orderstep1popup.aspx"><%=GetGlobalResourceObject("lang", "Buy")%></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div id="cartalert" visible="false" runat="server" class="title2">
                                <asp:Label ID="lblcartError" CssClass="title2" runat="Server" EnableViewState="False"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td id="SepetlerContainer" runat="server">
                            <div id="divplasiyer" visible="false" runat="server" class="information ui-state-highlight ui-corner-all">
                                <asp:Label ID="lblplasiyer" runat="Server" EnableViewState="False"></asp:Label>
                            </div>
                            <div class="moduleContentCol1">
                                <label class="title4"><%=GetGlobalResourceObject("lang", "Carts")%></label>
                                <table cellpadding="1" cellspacing="0" border="0" width="100%">
                                    <td colspan="2">
                                        <div id="transferalert" visible="false" runat="server" class="title2"><%=GetGlobalResourceObject("lang", "CartMsg5")%></div>
                                        <table id="TblSepetler" class="moduleContentCol2 multiCart" runat="server">
                                            <tr>
                                                <td>
                                                    <span class="moduleContentCol3"><%=GetGlobalResourceObject("lang", "SelectCart")%></span>
                                                    <div class="moduleContentCol3">
                                                        <asp:DropDownList ID="ddlSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                                    </div>
                                                    <div class="moduleContentCol3">
                                                        <asp:HyperLink ID="lnkaddnew" CssClass="button  lightbox" runat="server"><%=GetGlobalResourceObject("lang", "AddNew")%></asp:HyperLink>
                                                        <asp:HyperLink ID="lnkEdit" CssClass="button lightbox" runat="server"><%=GetGlobalResourceObject("lang", "Edit")%></asp:HyperLink>
                                                        <asp:LinkButton ID="lnkDeleteCart" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "Delete")%></asp:LinkButton>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="TblTransfer" class="moduleContentCol2 multiCart" runat="server">
                                            <tr>
                                                <td>
                                                    <div class="moduleContentCol3">
                                                        <asp:Label ID="lblTr" CssClass="multiCartTitle" runat="server"><%=GetGlobalResourceObject("lang", "SelectTargetCart")%></asp:Label>
                                                    </div>
                                                    <div class="moduleContentCol3">
                                                        <asp:DropDownList ID="ddlTransferSepet" runat="server" DataTextField="CartType" DataValueField="ShoppingCartDefId" AutoPostBack="True"></asp:DropDownList>
                                                    </div>
                                                    <div class="moduleContentCol3">
                                                        <asp:LinkButton ID="lnkTransfer" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "TransferToCart")%></asp:LinkButton>
                                                    </div>
                                                    <div class="clear"></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </table>
                            </div>
                            <div class="clear"></div>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnMailOrder" />
            </Triggers>
        </asp:UpdatePanel>
        <div class="proid" style="display: none;">
            <asp:Label ID="proid" runat="server" />
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
        $(".lnkbooking").colorbox({ title: false, width: "600", height: "500", iframe: true, scrolling: false });
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
        $(".lnkbooking").colorbox({ title: false, width: "600", height: "500", iframe: true, scrolling: false });
    });
</script>


