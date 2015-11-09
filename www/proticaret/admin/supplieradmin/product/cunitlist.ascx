<%@ Control Language="vb" AutoEventWireup="false" Inherits="CUnitList1" Codebehind="CUnitList.ascx.vb" %>
<div class="pageSupplierUnits">
	<asp:label id="msg" runat="server"></asp:label>
	<asp:label id="lblerr" runat="server"></asp:label>
	<asp:label id="lblSort" runat="server" Visible="False"></asp:label>
	<asp:label id="lbl" runat="server" Visible="False"></asp:label>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server"  CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn Visible="False" DataField="UnitId" SortExpression="UnitId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="Aciklama" SortExpression="Aciklama" HeaderText="A&#231;ýklama"></asp:BoundColumn>
			<asp:BoundColumn DataField="BirimAdi" SortExpression="BirimAdi" HeaderText="Birim Adý"></asp:BoundColumn>
			<asp:BoundColumn DataField="IsDefault" SortExpression="IsDefault" HeaderText="Varsayýlan"></asp:BoundColumn>
			<asp:BoundColumn DataField="IsActive" SortExpression="IsActive" HeaderText="Aktif"></asp:BoundColumn>
			<asp:BoundColumn DataField="Carpan" SortExpression="Carpan" HeaderText="&#199;arpan"></asp:BoundColumn>
			<asp:BoundColumn DataField="Desi" HeaderText="Desi"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="Havale Fiyatý">
				<ItemTemplate>
					<asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati0") %>'></asp:Label>
					<asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C0Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Satýþ Fiyatý1">
				<ItemTemplate>
					<asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati1") %>'></asp:Label>
					<asp:Label ID="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C1Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Satýþ Fiyatý2">
				<ItemTemplate>
					<asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati2") %>'></asp:Label>
					<asp:Label ID="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C2Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Satýþ Fiyatý3">
				<ItemTemplate>
					<asp:Label ID="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati3") %>'></asp:Label>
					<asp:Label ID="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C3Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Satýþ Fiyatý4">
				<ItemTemplate>
					<asp:Label ID="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati4") %>'></asp:Label>
					<asp:Label ID="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C4Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Satýþ Fiyatý5">
				<ItemTemplate>
					<asp:Label ID="Label11" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.SatisFiyati5") %>'></asp:Label>
					<asp:Label ID="Label12" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.C5Name") %>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Detay" FooterText="Detay">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "EditUnit.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UnitId") & "&DIND=" & IND & ""%> ' Visible='<%# updateUnitPre %>'>Detay</asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="Sil">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Visible='<%# updateUnitPre %>' Text="Sil"></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
			<PagerStyle Visible="False" CssClass="dataPager" Mode="NumericPages"></PagerStyle>
		</asp:DataGrid>
	</div>
</div> 