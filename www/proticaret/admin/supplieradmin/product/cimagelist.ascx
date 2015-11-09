<%@ Control Language="vb" AutoEventWireup="false" Inherits="cImageList1" CodeBehind="CImageList.ascx.vb" %>
<div class="pageSupplierImages">
	<asp:Label ID="msg" runat="server"></asp:Label>
	<asp:Label ID="lblerr" runat="server"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent">Yeni Ekle</asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn DataField="ImageId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="ProductId" HeaderText="Urün Id" Visible="false"></asp:BoundColumn>
			<asp:BoundColumn DataField="Description" HeaderText="Açýklama"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Resim">
				<ItemTemplate>
					<a target="_blank" href='<%# baseurl & "/uploads/productsimages/" & DataBinder.Eval(Container.DataItem,"Path")%>'>
						<img alt="" border="0" src='<%# BaseUrl & "/admin/ecommerce/product/makethumb.aspx?file=" + Container.DataItem("Path") + "&intSize=125"%>'>
					</a>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Varsayýlan">
				<ItemTemplate>
					<asp:CheckBox ID="Checkbox1" runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsDefault") %>'></asp:CheckBox>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Detay">
				<ItemTemplate>
					<asp:HyperLink CssClass="btnDefault fancyContent" ID="HyperLink1" runat="Server" NavigateUrl='<%# "EditImage.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ImageId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> ' Visible='<%# deleteImagePre %>'>Detay</asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil" Visible='<%# deleteImagePre %>'></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
			<PagerStyle Visible="False" CssClass="dataPager" Mode="NumericPages"></PagerStyle>
		</asp:DataGrid>
	</div>
</div>