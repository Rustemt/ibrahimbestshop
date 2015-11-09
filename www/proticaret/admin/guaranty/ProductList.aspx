<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ProductList.aspx.vb" Inherits="ProductListzs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Bölüm Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<asp:Label runat="server" ID="lblError"></asp:Label>
<asp:Label Text="" runat="server" ID="lbl" />
<asp:Label ID="lblMsg" runat="server"></asp:Label>
<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
	<ContentTemplate>
		<div class="dataFilter boxToggle">
			<div class="toggleTitle toggleMini">
				<div class="titleTab">
					<ul class="tabMenu">
						<li><a href="#">Filtre</a></li>
						<li><a href="#">Rapor</a></li>
					</ul>
				</div>
				<div class="titleToggle"></div>
				<div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
			</div>
			<div class="toggleContent">
				<div class="tabContent">
					<div class="tab">
						<div class="colGroup">
							<div class="col">
							<label>Kategori</label>
							<asp:DropDownList ID="ddlCategories" runat="server"> </asp:DropDownList>
							</div>
							<div class="col">
							<label>StokTipi</label>
							<asp:DropDownList ID="ddlstoktype" runat="server">
							<asp:ListItem></asp:ListItem>
							</asp:DropDownList>
							</div>
							<div class="col col2">
							<label>Stok Kodu/IND</label>
							<asp:TextBox ID="txtStokCode" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlFilter" runat="server">
							<asp:ListItem Value="like  @ProductCode + '%'">Başlar</asp:ListItem>
							<asp:ListItem Value="like '%' + @ProductCode + '%'">İçerir</asp:ListItem>
							<asp:ListItem Value="like '%' + @ProductCode ">Biter</asp:ListItem>
							<asp:ListItem Value="= @ProductCode ">Eşittir</asp:ListItem>
							</asp:DropDownList>
							</div>
							<div class="col">
							<label>Barkod</label>
							<asp:TextBox ID="txtBarkod" runat="server" MaxLength="50"></asp:TextBox>
							</div>
							<div class="col col2">
							<label>Ürün Adı</label>
							<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlFulnameFilter" runat="server">
							<asp:ListItem Value="like  @ProductName + '%'">Başlar</asp:ListItem>
							<asp:ListItem Value="like '%' + @ProductName + '%'">İçerir</asp:ListItem>
							<asp:ListItem Value="like '%' + @ProductName ">Biter</asp:ListItem>
							<asp:ListItem Value="= @ProductName ">Eşittir</asp:ListItem>
							</asp:DropDownList>
							</div>
							<div class="col">
							<label>Marka</label>
							<asp:TextBox ID="txtMark" runat="server" autocomplete="off"></asp:TextBox>
							<cc1:AutoCompleteExtender ID="Markext" runat="server" CompletionInterval="500" CompletionListCssClass="autocomplete_completionListElement" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem" CompletionSetCount="12" EnableCaching="true" FirstRowSelected="true" MinimumPrefixLength="2" OnClientItemSelected="selected" ServiceMethod="GetMarks" ServicePath="/services/MarkService.asmx" TargetControlID="txtMark"> </cc1:AutoCompleteExtender>
							<asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
							</div>
							<div class="col">
							<label>İş Türü <asp:RequiredFieldValidator runat="server"  ID="r1" ControlToValidate="ddlJopType" InitialValue="-1" ValidationGroup="ddl" ErrorMessage="jnjını">*</asp:RequiredFieldValidator></label>
							<asp:DropDownList ID="ddlJopType" runat="server" ></asp:DropDownList>
							</div>
							<div class="col">
							<label>Personel <asp:RequiredFieldValidator runat="server"  ID="r2" ControlToValidate="ddlPerson" InitialValue="0" ValidationGroup="ddl">*</asp:RequiredFieldValidator></label>
							<asp:DropDownList ID="ddlPerson" runat="server"></asp:DropDownList>
							</div>
							<div class="col colAuto">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> Ara</asp:LinkButton>
							</div>
						</div>
						<div class="colGroup colGroupAdvanced">
							<div class="col">
							<label>Yazar</label>
							<asp:TextBox ID="txtAuthor" runat="server" autocomplete="off"></asp:TextBox>
							<cc1:AutoCompleteExtender ID="Authorext" runat="server" CompletionInterval="500" CompletionListCssClass="autocomplete_completionListElement" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem" CompletionSetCount="12" EnableCaching="true" FirstRowSelected="true" MinimumPrefixLength="2" OnClientItemSelected="AuthorSelected" ServiceMethod="GetAuthors" ServicePath="/services/MarkService.asmx" TargetControlID="txtAuthor"> </cc1:AutoCompleteExtender>
							<asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
							</div>
							
							<div class="col">
							<label>Yayınevi</label>
							<asp:TextBox ID="txtPublisher" runat="server" autocomplete="off"></asp:TextBox>
							<cc1:AutoCompleteExtender ID="PublisherExt" runat="server" CompletionInterval="500" CompletionListCssClass="autocomplete_completionListElement" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem" CompletionSetCount="12" EnableCaching="true" FirstRowSelected="true" MinimumPrefixLength="2" OnClientItemSelected="PublisherSelected" ServiceMethod="GetPublishers" ServicePath="/services/MarkService.asmx" TargetControlID="txtPublisher"> </cc1:AutoCompleteExtender>
							<asp:HiddenField ID="PublisherHiddenField" runat="server" Value="" />
							</div>
							
							<div class="col">
							<label>Durumu</label>
							<asp:DropDownList ID="ddlActive" runat="server">
							<asp:ListItem Value="-1">--Tümü--</asp:ListItem>
							<asp:ListItem Value="1">Aktif</asp:ListItem>
							<asp:ListItem Value="0">Pasif</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Tedarikçi(xml)</label>
							<asp:DropDownList ID="ddlProvider" runat="server"> </asp:DropDownList>
							</div>
							<div class="col">
							<label>Ürün Sorumlusu</label>
							<asp:DropDownList ID="ddlUser" runat="server"> </asp:DropDownList>
							</div>
							<div class="col">
							<label>Kampanya</label>
							<asp:DropDownList ID="ddlCampain" runat="server"> </asp:DropDownList>
							</div>
							
							
							
							
							<div class="col">
							<label>Ürün Durumu</label>
							<asp:DropDownList ID="ddlOption" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="HizliKargo">Hızlı Kargo</asp:ListItem>
							<asp:ListItem Value="EnUcuzUrun">En Ucuz &#220;run</asp:ListItem>
							<asp:ListItem Value="AyniGunTeslim">Aynı Gun Teslim</asp:ListItem>
							<asp:ListItem Value="OzelUrun">Ozel &#220;run</asp:ListItem>
							<asp:ListItem Value="IndirimliUrun">Indirimli &#220;run</asp:ListItem>
							<asp:ListItem Value="SinirliSayidaUrun">Sınırlı Sayıda &#220;run</asp:ListItem>
							<asp:ListItem Value="FirsatUrunu">Firsat &#220;runu</asp:ListItem>
							<asp:ListItem Value="YeniUrun">Yeni &#220;run</asp:ListItem>
							<asp:ListItem Value="SokFiyatliUrun">Şok Fiyatlı &#220;run</asp:ListItem>
							<asp:ListItem Value="HediyeliUrun">Hediyeli &#220;run</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Sarf Malz.</label>
							<asp:DropDownList ID="ddlUsage" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="1">Olanlar</asp:ListItem>
							<asp:ListItem Value="0">Olmayanlar</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Alternatif</label>
							<asp:DropDownList ID="ddlAlternative" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="1">Olanlar</asp:ListItem>
							<asp:ListItem Value="0">Olmayanlar</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>nonAlternatif</label>
							<asp:DropDownList ID="ddlnonAlternative" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="1">Olanlar</asp:ListItem>
							<asp:ListItem Value="0">Olmayanlar</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Varyant</label>
							<asp:DropDownList ID="ddlVaryant" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="1">Olanlar</asp:ListItem>
							<asp:ListItem Value="0">Olmayanlar</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Tekstil Grubu</label>
							<asp:DropDownList ID="ddlProductSizeOptions" runat="server"> </asp:DropDownList>
							</div>
							
							<div class="col">
							<label>Resim</label>
							<asp:DropDownList ID="ddlImage" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="1">Resimli</asp:ListItem>
							<asp:ListItem Value="0">Resimsiz(T&#252;m&#252;)</asp:ListItem>
							<asp:ListItem Value="2">Resimsiz(Hazırlanıyor)</asp:ListItem>
							<asp:ListItem Value="3">Resimsiz(xml)</asp:ListItem>
							<asp:ListItem Value="4">Resimsiz(Yok)</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>OzelKod</label>
							<asp:DropDownList ID="ddlcodes" runat="server">
							<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
							<asp:ListItem Value="0">Kod1</asp:ListItem>
							<asp:ListItem Value="1">Kod2</asp:ListItem>
							<asp:ListItem Value="2">Kod3</asp:ListItem>
							<asp:ListItem Value="3">Kod4</asp:ListItem>
							<asp:ListItem Value="4">Kod5</asp:ListItem>
							<asp:ListItem Value="5">Kod6</asp:ListItem>
							<asp:ListItem Value="6">Kod7</asp:ListItem>
							<asp:ListItem Value="7">Kod8</asp:ListItem>
							<asp:ListItem Value="8">Kod9</asp:ListItem>
							<asp:ListItem Value="9">Kod10</asp:ListItem>
							<asp:ListItem Value="10">Kod11</asp:ListItem>
							<asp:ListItem Value="11">Kod12</asp:ListItem>
							<asp:ListItem Value="12">Kod13</asp:ListItem>
							<asp:ListItem Value="13">Kod14</asp:ListItem>
							<asp:ListItem Value="14">Kod15</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col">
							<label>&nbsp;</label>
							<asp:TextBox ID="txtCode1" runat="server"></asp:TextBox>
							</div>
							
							<div class="col col4">
							<label>Ekleme Tarihi</label>
							<ew:CalendarPopup ID="Tarih1" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"> </ew:CalendarPopup>
							<ew:CalendarPopup ID="Tarih2" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"> </ew:CalendarPopup>
							</div>
							
							<div class="col col4">
							<label>Fiy. Değ. Tarih</label>
							<ew:CalendarPopup ID="Tarih3" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text=">"> </ew:CalendarPopup>
							<ew:CalendarPopup ID="Tarih4" runat="server" CalendarLocation="Bottom" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" AllowArbitraryText="False" DisableTextBoxEntry="False" Text="<"> </ew:CalendarPopup>
							</div>
							
							<div class="col">
							<label>Fiy. Aralığı</label>
							<asp:DropDownList ID="ddlFiyat" runat="server">
							<asp:ListItem>Alış</asp:ListItem>
							<asp:ListItem>Piyasa</asp:ListItem>
							<asp:ListItem>Havale</asp:ListItem>
							<asp:ListItem>1.Fiyat</asp:ListItem>
							<asp:ListItem>2.Fiyat</asp:ListItem>
							<asp:ListItem>3.Fiyat</asp:ListItem>
							<asp:ListItem>4.Fiyat</asp:ListItem>
							<asp:ListItem>5.Fiyat</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col col2">
							<label><asp:Label ID="Label18" runat="server">></asp:Label></label>
							<ew:NumericBox ID="txtFiyat" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
							<asp:DropDownList ID="ddlPb1" runat="server">
							<asp:ListItem>TL</asp:ListItem>
							<asp:ListItem>USD</asp:ListItem>
							<asp:ListItem>EURO</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col col2">
							<label><asp:Label ID="Label19" runat="server"><</asp:Label></label>
							<ew:NumericBox ID="txtFiyat1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True"></ew:NumericBox>
							<asp:DropDownList ID="ddlPb2" runat="server">
							<asp:ListItem>TL</asp:ListItem>
							<asp:ListItem>USD</asp:ListItem>
							<asp:ListItem>EURO</asp:ListItem>
							</asp:DropDownList>
							</div>
							
							<div class="col col4">
							<label>Desi</label>
							<ew:NumericBox ID="txtDesi1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
							<input type="button" value=">">
							<ew:NumericBox ID="txtDesi2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
							<input type="button" value="<">
							</div>
							
							<div class="col col4">
							<label>Kalan</label>
							<ew:NumericBox ID="txtEnvanter1" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
							<input type="button" value=">">
							<ew:NumericBox ID="txtEnvanter2" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right"></ew:NumericBox>
							<input type="button" value="<">
							</div>
						</div>
					</div>

					<div class="tab"></div>
				</div>
			</div>
		</div>
		
		<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" Width="100%" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn DataField="ProductId" SortExpression="ProductId" HeaderText="IND" Visible="false"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode2 %>" ItemStyle-Width="110" SortExpression="ProductCode">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %>'><%#Eval("ProductCode")%></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
			<asp:BoundColumn DataField="ProductName" SortExpression="ProductName" HeaderText="&#220;r&#252;n Adı"></asp:BoundColumn>
			<asp:BoundColumn DataField="MarkName" SortExpression="MarkName" HeaderText="Marka"></asp:BoundColumn>
			<asp:BoundColumn DataField="CODE1" SortExpression="CODE1" HeaderText="Kod 1"></asp:BoundColumn>
			<asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="Kalan"></asp:BoundColumn>
			<asp:TemplateColumn SortExpression="IsActive" HeaderText="Durum">
			<ItemTemplate>
				<asp:CheckBox ToolTip="Ürünü Aktif etmek için seçiniz." ID="chkAktif" Checked='<%# DataBinder.Eval(Container.DataItem,"IsActive")%> ' runat="server"></asp:CheckBox>
			</ItemTemplate>
			<FooterTemplate>
				<input id="chkAllItemsa" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkAktif', this.checked);" />
				Tümü </FooterTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sarf Malz.">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink ToolTip="Sarf Malzemeleri" CssClass="btnIcon" ID="Hyperlink6" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditUsages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-sitemap"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Alternatif">
			<HeaderStyle Width="10px" />
			<ItemStyle HorizontalAlign="center" />
			<ItemTemplate>
				<asp:HyperLink ID="Hyperlink5" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditAlteratives.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> ' ToolTip="Ürün Alternatifleri"><i class="fa fa-star"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="nonAlternatif">
			<HeaderStyle Width="10px" />
			<ItemStyle HorizontalAlign="center" />
			<ItemTemplate>
				<asp:HyperLink ID="hypnon" runat="Server" CssClass="btnIcon" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/editNonAlteratives.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> ' ToolTip="Ürünün nonAlternatifleri"><i class="fa fa-exchange"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Varyant">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink CssClass="btnIcon" ID="Hyperlink7a" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditProductVariants.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-arrows"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Renk-Beden">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink CssClass="btnIcon" ID="Hyperlink7" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditProductSizes.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=700,height=800,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-th-list"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Birim">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink CssClass="btnIcon" ID="Hyperlink4" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditUnits.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=850,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-superscript"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Resim">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
			<ItemTemplate> <a class="btnIcon" href='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditImages.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=550,height=250,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-picture-o"></i></a></ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Video">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink ToolTip="Ürün Videosu" CssClass="btnIcon" ID="lnkvideo" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditVideo.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=400,height=150,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-video-camera"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="3D Resim">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink ToolTip="Ürün 3D Resmi" CssClass="btnIcon" ID="lnk3dPicture" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/Edit3dPicture.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""","""",""width=500,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")"%> '><i class="fa fa-cube"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Teknik Tablo" Visible="false">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink ToolTip="Ürün Teknik Özellikleri" CssClass="btnIcon" ID="lnkto" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/storeadmin/wizard/editproductwizard.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=800,height=600,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '
							ImageUrl="/storeadmin/images/table.png"> </asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Detay">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemStyle HorizontalAlign="center"></ItemStyle>
			<ItemTemplate>
				<asp:HyperLink ToolTip="Ürün Detayı" CssClass="btnIcon" ID="HyperLink1" runat="Server" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") &  ""","""",""width=1100,height=750,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil" Visible="false">
			<HeaderStyle Width="10px"></HeaderStyle>
			<ItemTemplate>
				<asp:CheckBox ToolTip="Silmek İçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
			</ItemTemplate>
			<FooterTemplate>
				<input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete', this.checked);" />
				Tümü </FooterTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn>
			<ItemTemplate>
				<asp:Button ID="SelectSave" runat="server" CssClass="btnDefault" CausesValidation="false" CommandName="Update" Text="Seç" ValidationGroup="ddl" />
			</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
				<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="50"></PagerStyle>
			</asp:DataGrid>
		</div>
		
		<div class="dataCount">
			<ul>
				<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
				<li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
				<li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
			</ul>
		</div>
		
		<div style="text-align: right">
		<%--<asp:Button ID="btnexportxml" runat="server" CssClass="button" Text="Xml'e Gönder" />
		<asp:Button ID="btnExport" runat="server" CssClass="button" Text="Excel'e Gönder" />
		<asp:Button ID="btnDel" runat="server" CssClass="button" Text="Güncelle / Sil" />--%>
		</div>
	</ContentTemplate>
</asp:UpdatePanel>
<%--
<script type="text/javascript">
function selected(source, eventArgs) {
hidobj = document.getElementById("<%=MarkHiddenField.ClientID%>");
hidobj.value = eventArgs.get_value();
}
function AuthorSelected(source, eventArgs) {
hidobj = document.getElementById("<%=AuthorHiddenField.ClientID%>");
hidobj.value = eventArgs.get_value();
}

function PublisherSelected(source, eventArgs) {
hidobj = document.getElementById("<%=PublisherHiddenField.ClientID%>");
hidobj.value = eventArgs.get_value();
}
</script>
--%>
</form>
 <script type="text/javascript" src="/admin/assets/js/jquery.min.js"></script>
 <script type="text/javascript" src="/admin/assets/js/default.js"></script>
 <link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</body>
</html>
