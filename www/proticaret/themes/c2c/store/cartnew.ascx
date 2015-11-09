<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cartnew.ascx.vb" Inherits=".cartnew" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<link href="<%=getThemePath() %>/images/cart-img/reset.css" rel="stylesheet" type="text/css">
<link href="<%=getThemePath() %>/images/cart-img/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=getThemePath() %>/js/cart-js/time.js"></script>



<div id="container">
	<div class="wrapper">
    	<div class="pageTitle">
        	<ul>
            	<li class="TitleIconOne active"><a href="/store/cart.aspx"></a></li>
                <li class="TitleIconTwo"><a href="/store/orderstep2.aspx"></a></li>
                <li class="TitleIconThree"><a href="/store/orderstep3d.aspx"></a></li>
                <li class="TitleIconFour"><a href="#"></a></li>
                <div class="clear"></div>
        </div>
    	<div class="clear"></div>
        <div id="content">
        	<table width="100%;" cellpadding="10" cellspacing="10">
            	<cc1:TabContainer ID="TabContainer" runat="server" ActiveTabIndex="0" AutoPostBack="True" BorderStyle="None">
                                                <cc1:TabPanel ID="TabPanel0" runat="server" HeaderText="Ürünler" Height="300px" Visible="False" Width="300px">
                                                    <ContentTemplate>
                                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                                        <asp:DataGrid ID="DataGrid0" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyField="Qty" CssClass="datalist" GridLines="none">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid4" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid5" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid6" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid7" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid8" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid9" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                                                        <asp:DataGrid ID="DataGrid10" runat="server" AutoGenerateColumns="False" BorderWidth="0px" CellPadding="4" DataKeyField="Qty" Width="100%">
                                                            <Columns>
                                                                <asp:TemplateColumn Visible="False">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="ProductID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="RecordID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RecordId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductID") %>' Visible="False">
                                                                        </asp:Label>
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
                                                                <asp:TemplateColumn HeaderText="Ürün Resmi">
                                                                    <ItemTemplate>
                                                                        <asp:Image ID="Image3" runat="server" BorderStyle="None" ImageUrl='<%# "/store/makethumb.aspx?file=" + container.dataitem("Path") + "&intSize=50" %>' oncontextmenu="return false" />
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Ürün Adı">
                                                                    <ItemTemplate>
                                                                        <itemstyle wrap="False"></itemstyle>
                                                                        <asp:HyperLink ID="Hyperlink7" runat="server" NavigateUrl='<%# string.format(BaseUrl & "{0}" & ".aspx",container.dataitem("Url").tostring.Remove(container.dataitem("Url").tostring.Length - 1, 1)) %>' Text='<%# container.dataitem("ProductName") %>'>
                                                                        </asp:HyperLink>
                                                                        <asp:Label ID="Hy7" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                                                                        <asp:Label ID="lblPuan" runat="server">
                                                                        </asp:Label>
                                                                        <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""../emarketadmin/Campain/CampainInfo.aspx?IND=" & tmpOrder.Campain.CampainId &  ""","""",""width=300,height=300,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' Visible='<%# iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2) or (tmpOrder.Campain.DiscountType>-1 and tmpOrder.Campain.DiscountType<2),true,false)%>'>
                                                                        </asp:HyperLink>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Birim Fiyat">
                                                                    <ItemTemplate>
                                                                        <%--<asp:Label ID="Label9" runat="server" NAME="Label9" Text='<%# FormatCurTL(CalcRate(CalcIndirim(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati")+ container.dataitem("ValueAdd"),tmpOrder.Campain.DiscountAmount,tmpOrder.Campain.DiscountType,ToplamTutar,container.dataitem("qty"),ProductLines,tmpOrder.Campain.ProductDiscountType,tmpOrder.Campain.ProductDiscountAmount,iif((container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2),true,false)) ,container.dataitem("Indirim")),UserIndirim),container.dataitem("Rate")))  %>'></asp:Label>--%>
                                                                        <asp:Label ID="Label9" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz((CalcRate(container.dataitem("SatisFiyati") + container.dataitem("ValueAdd"), container.dataitem("Rate")))/CurrencyRate) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                                <asp:TemplateColumn HeaderText="Miktar">
                                                                    <ItemTemplate>
                                                                        <asp:TextBox ID="Quantity" runat="server" Columns="4" Enabled='<%# iif(container.dataitem("ProductID")= tmpOrder.Campain.ProductId and tmpOrder.Campain.DiscountType=2,false,true)%>' MaxLength="4" Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' ToolTip="Sipariş adetini değiştirmek için bu alanı değiştirdikten sonra 'Güncelle' Linkine tıklayınız." Width="35px">
                                                                        </asp:TextBox>
                                                                        <asp:Label ID="UnitId" runat="server" Text='<%# Container.DataItem("UnitId") %>' Visible="False">
                                                                        </asp:Label>
                                                                        <asp:Label ID="Label18" runat="server" Text='<%# Container.DataItem("BirimAdi") %>'>
                                                                        </asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:TemplateColumn HeaderText="Fiyatı">
                                                                    <ItemTemplate>
                                                                        <asp:Label ID="lblwithisk" runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(((container.dataitem("SatisFiyati")*container.dataitem("Rate")) + Container.DataItem("ValueAdd")) / CurrencyRate  * Container.DataItem("Qty") ) & "  " & CurrencySymbolRight %>'></asp:Label>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>

                                                                <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0}" HeaderText="KDV(%)"></asp:BoundColumn>
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
                                                                <asp:TemplateColumn HeaderText="Kdv Dahil Tutar">
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
                <tr>
                	<td colspan="7" align="right">Sepetinizde yer alan ürünlerin teslimati <span class="cargo">22.12.2013 - 29.12.2013</span> tarihleri arasinda gerçeklestirilmektedir.</td>
                </tr>
            </table>
            <table width="100%" cellpadding="10" cellspacing="10">
            	<tr valign="middle" bgcolor="#000000" class="buyTitle">
                	<td align="left">Önceden Eklenmis Ürünler</td>
                    <td align="left"></td>
                    <td align="left">Piyasa Fiyati</td>
                    <td align="left">Trendyol Fiyati</td>
                    <td align="left">Kazanciniz</td>
                    <td align="left"></td>
                </tr>
                <tr class="tableContent">
                	<td valign="middle" align="left"><img src="<%=getThemePath() %>/images/cart-img/product-images.jpg" width="70" alt="productimg" /></td>
                    <td valign="middle" align="left"><span>Özlem Yildiz - Ondo</span> <span>118-13-969 Ondo Antrasit Tunik 118-13-969</span></td>
                    <td valign="middle" align="left" class="oldPrice">49,90 tl</td>
                    <td valign="middle" align="left" class="oldPrice">26,99 tl</td>
                    <td valign="middle" align="left" class="productPrice">22,91 tl</td>
                    <td valign="middle" align="left"><input type="submit" value="sepete ekle" class="buyButton"/></td>
                </tr>
                <tr class="tableContent">
                	<td valign="middle" align="left"><img src="img/product-images.jpg" width="70" alt="productimg" /></td>
                    <td valign="middle" align="left"><span>Özlem Yildiz - Ondo</span> <span>118-13-969 Ondo Antrasit Tunik 118-13-969</span></td>
                    <td valign="middle" align="left" class="oldPrice">49,90 tl</td>
                    <td valign="middle" align="left" class="oldPrice">26,99 tl</td>
                    <td valign="middle" align="left" class="productPrice">22,91 tl</td>
                    <td valign="middle" align="left"><input type="submit" value="sepete ekle" class="buyButton"/></td>
                </tr>
                <tr>
                	<td colspan="6"> <img src="<%=getThemePath() %>/images/cart-img/cart.png" alt="cart" /></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        var endDate = "December 13, 2014 15:55:25";

        $('.countdown.simple').countdown({ date: endDate });

        $('.countdown.styled').countdown({
            date: endDate,
            render: function (data) {
                $(this.el).html("<div>" + this.leadingZeros(data.min, 2) + "</div><div>" + this.leadingZeros(data.sec, 2) + "</div>");
            }
        });
    });
</script>
