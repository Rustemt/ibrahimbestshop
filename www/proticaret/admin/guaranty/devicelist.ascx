<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="devicelist.ascx.vb" Inherits="devicelist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageSuppliers">	
	<asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
	<ContentTemplate>
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="Linkaddnewservices" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Cihaz Ekle</asp:HyperLink>
	</div>
	<div class="dataTable">
	<asp:GridView ID="GWDevice" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left" ShowHeaderWhenEmpty="true" >
	<Columns>
		<asp:BoundField DataField="id" Visible="False" HeaderText="IND" SortExpression="id" ReadOnly="True" />
        <asp:TemplateField HeaderText="Cihaz Kodu" SortExpression="DeviceCode">
			<ItemTemplate>
				<asp:HyperLink ID="HyperLink2" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/editDevice.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("DeviceCode")%></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateField>
		<asp:BoundField DataField="DeviceName" HeaderText="Cihaz Adı" ReadOnly="True" SortExpression="DeviceName" />
		<asp:BoundField DataField="MarkName" HeaderText="Markası" SortExpression="MarkName" />
		<asp:BoundField DataField="ModelName" HeaderText="Modeli" SortExpression="ModelName" />
		<asp:BoundField DataField="SerialNo" HeaderText="Seri No" SortExpression="SerialNo" />
		<asp:BoundField DataField="ProductCode" HeaderText="Stok Kodu" SortExpression="ProductCode" />
		<asp:BoundField DataField="ProductName" HeaderText="Ürün Adı" SortExpression="ProductName" />
		<asp:BoundField DataField="DeviceProperty1" HeaderText="Özellik1" SortExpression="DeviceProperty1" />
		<asp:BoundField DataField="DeviceProperty2" HeaderText="Özellik2" SortExpression="DeviceProperty2" />
		<asp:BoundField DataField="DeviceProperty3" HeaderText="Özellik3" SortExpression="DeviceProperty3" />
		<asp:BoundField DataField="DeviceProperty4" HeaderText="Özellik4" SortExpression="DeviceProperty4" />
		<asp:BoundField DataField="DeviceProperty5" HeaderText="Özellik5" SortExpression="DeviceProperty5" />
		<asp:TemplateField HeaderText="Düzenle" Visible="False">
			<ItemTemplate>
				<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/guaranty/editDevice.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '>Düzenle</asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateField>
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
        newwindow = window.open(url, 'name', 'width=600,height=600,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>