<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="servicesformlist.ascx.vb" Inherits="servicesformlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageSuppliers">	
	<asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
	<ContentTemplate>
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="hlNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Servis İsteği</asp:HyperLink>
	</div>
	
	<div class="dataFilter boxToggle">
		<div class="toggleTitle toggleMini">
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li> 
				</ul>
			</div>
			<div class="titleToggle"></div>
            <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
		</div>
		<div class="toggleContent">
			<div class="tabContent">
				<div class="tab">
					<div class="colGroup">
						<asp:Panel ID="filterpanel" runat="server" DefaultButton="btnSearch">
						<div class="col col2">
							<label>Belge No</label>
							<asp:TextBox ID="txtDocNo" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlfilterDoc" runat="server">
								<asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
								<asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
								<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
								<asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label>Kullanıcı Adı</label>
							<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlfilter" runat="server">
								<asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
								<asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
								<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
								<asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col">
							<label>Servis Tipi</label>
							<asp:DropDownList ID="ddlServicesType" runat="server">
								<asp:ListItem Value="0">--Tümü--</asp:ListItem>
								<asp:ListItem Value="1">Servis</asp:ListItem>
								<asp:ListItem Value="2">Montaj</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col">
							<label>Marka</label>
							<asp:DropDownList ID="ddlMark" runat="server"></asp:DropDownList>
						</div>
						<div class="col">
							<label>Model</label>
							<asp:DropDownList ID="ddlModel" runat="server"></asp:DropDownList>
						</div>
						<div class="col col2">
							<label>Ürün</label>
							<asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlProductFilter" runat="server">
								<asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
								<asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
								<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
								<asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col">
							<label>Garanti</label>
							<asp:DropDownList ID="ddlGuaranty" runat="server">
								<asp:ListItem Value="0">--Tümü--</asp:ListItem>
								<asp:ListItem Value="1">Var</asp:ListItem>
								<asp:ListItem Value="2">Yok</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label>Seri No</label>
							<asp:TextBox ID="txtSeriNo" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlfilterSerial" runat="server">
								<asp:ListItem Value="like '%[]%'">İçerir</asp:ListItem>
								<asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
								<asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
								<asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col colAuto">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> Ara</asp:LinkButton>
						</div>
						</asp:Panel>
					</div>
                    <div class="colGroup colGroupAdvanced">
                    	<div class="col">
							<label>Servis Durumu</label>
							<asp:DropDownList ID="ddlServicesStatus" runat="server">
								<asp:ListItem Value="0">--Tümü--</asp:ListItem>
								<asp:ListItem Value="1">Beklemede</asp:ListItem>
								<asp:ListItem Value="2">Servise Alımda</asp:ListItem>
								<asp:ListItem Value="3">Servis İnceleme</asp:ListItem>
								<asp:ListItem Value="4">Onarım</asp:ListItem>
								<asp:ListItem Value="5">Parça Bekleniyor</asp:ListItem>
								<asp:ListItem Value="6">Onarıma Devam</asp:ListItem>
								<asp:ListItem Value="7">Onarılamadı</asp:ListItem>
								<asp:ListItem Value="8">Onarım Tamamlandı</asp:ListItem>
								<asp:ListItem Value="9">Değiştirildi</asp:ListItem>
								<asp:ListItem Value="10">Test Ediliyor</asp:ListItem>
								<asp:ListItem Value="11">Test Tamamlandı</asp:ListItem>
								<asp:ListItem Value="12">Kargoya Hazırlanıyor</asp:ListItem>
								<asp:ListItem Value="13">Kargolandı</asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label>Tarih</label>
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="..." DisableTextBoxEntry="False"></ew:CalendarPopup>
						</div>
                    </div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="dataTable">
		<asp:GridView ID="GWOrderList" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left" ShowHeaderWhenEmpty="true" >
		<Columns>
			<asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" Visible="false" />
			<asp:BoundField DataField="DocNo" HeaderText="" SortExpression="DocNo" visible="false" />
            <asp:TemplateField HeaderText="Servis Belge No">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%#"/admin/guaranty/editorderdeatil.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") %>'><%#Eval("DocNo")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
			<asp:BoundField DataField="FullName" HeaderText="Üye" ReadOnly="True" SortExpression="FullName" />
			<asp:TemplateField HeaderText="Servis Durumu" SortExpression="Status">
				<ItemTemplate>
					<span class="Status Status<%# Eval("ServicesStatus") %>"><%# Eval("Status")%></span>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="SaveDate" HeaderText="Tarih" SortExpression="SaveDate" />
			<asp:BoundField DataField="GStatus" HeaderText="Garanti" SortExpression="GStatus" />
			<asp:BoundField DataField="SStatus" HeaderText="Servis Türü" ReadOnly="True" SortExpression="SStatus" />
			<asp:BoundField DataField="MarkName" HeaderText="Marka" ReadOnly="True" SortExpression="MarkName" />
			<asp:BoundField DataField="ModelName" HeaderText="Model" SortExpression="ModelName" />
			<asp:BoundField DataField="ProductName" HeaderText="Ürün" SortExpression="ProductName" />
            <asp:BoundField DataField="SerialNo" HeaderText="Cihaz Seri No" SortExpression="SerialNo" />
			<asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
		</asp:GridView>
	</div>
	
	<div class="dataCount">
		<ul>
			<li>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
			<li>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
			<li>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
		</ul>
	</div>
	</ContentTemplate>
	</asp:UpdatePanel>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=800,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>
