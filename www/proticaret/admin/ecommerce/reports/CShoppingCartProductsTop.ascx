<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CShoppingCartProductsTop" CodeBehind="CShoppingCartProductsTop.ascx.vb" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div class="pageReportProductsTop">	
	<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			
			<div class="dataFilter boxToggle">
				<div class="toggleTitle toggleMini">
					<div class="titleTab">
						<ul class="tabMenu">
							<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
						</ul>
					</div>
					<div class="titleToggle"></div>
				</div>
				<div class="toggleContent">
					<div class="tabContent">
						<div class="tab">
							<div class="colGroup">
								<div class="col">
									<label>Ürün Durum</label>
									<asp:DropDownList ID="ddlIsActive" runat="server">
										<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
										<asp:ListItem Value="1" Selected="True">Aktif</asp:ListItem>
										<asp:ListItem Value="0">Pasif</asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label>Stok Durumu</label>
									<asp:DropDownList ID="ddlStock" runat="server">
										<asp:ListItem Value="-1">--T&#252;m&#252;--</asp:ListItem>
										<asp:ListItem Value="1" Selected="True">Var</asp:ListItem>
										<asp:ListItem Value="0">Yok</asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label>Üye Durumu</label>
									<asp:DropDownList ID="ddlUserType" runat="server">
										<asp:ListItem>--T&#252;m&#252;--</asp:ListItem>
										<asp:ListItem Selected="True" Value="1">&#220;yeler</asp:ListItem>
										<asp:ListItem Value="0">Ziyaret&#231;iler</asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col col4">
									<label>Eklenme Tarihi</label>
									<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
									<ew:CalendarPopup ID="tarih11" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
								</div>
								<div class="col">
									<label>&nbsp;</label>
									<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
                    <Columns>
                        <asp:BoundColumn DataField="ProductId" Visible="false" SortExpression="ProductId" HeaderText="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ProductCode" SortExpression="ProductCode" HeaderText="Ürün Kodu"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Ürün Adý">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink7" runat="server" data-width="1100" data-height="900" CssClass="btnLink fancyContent" Text='<%# container.dataitem("ProductName") %>' NavigateUrl='<%# "/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductId") %> '></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="StockQty" SortExpression="StockQty" HeaderText="Envanter"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Toplam Kullanýcý">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink7" runat="server" data-width="850" data-height="900" CssClass="btnLink fancyContent" Text='<%# container.dataitem("ToplamKullanici") %>' NavigateUrl='<%# "/admin/ecommerce/reports/whichusers.aspx?PID=" & DataBinder.Eval(Container.DataItem,"ProductId")  %> '></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="ToplamAdet" SortExpression="ToplamAdet" HeaderText="Toplam Adet"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Alýþ Fiyatý" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAlisFiyati" Text='<%#   formatCurDoviz(container.dataitem("AlisFiyati") *container.dataitem("AlisFiyatiRate") / DefaultCurrencyRate) %>'></asp:Label>
                                <%=  " " &  publicItems.DefaultCurrencyCode %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Satýþ Fiyatý" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblSatisFiyati" Text='<%#   formatCurDoviz(container.dataitem("SatisFiyati1") *container.dataitem("SatisFiyati1Rate") / DefaultCurrencyRate) %>'></asp:Label>
                                <%=  " " &  publicItems.DefaultCurrencyCode %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Kar" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblKar" Text='<%#   formatCurDoviz(container.dataitem("SatisFiyati1") *container.dataitem("SatisFiyati1Rate") / DefaultCurrencyRate - container.dataitem("AlisFiyati") *container.dataitem("AlisFiyatiRate") / DefaultCurrencyRate) %>'></asp:Label>
                                <%=  " " &  publicItems.DefaultCurrencyCode %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" PageButtonCount="15" />
                </asp:DataGrid>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>