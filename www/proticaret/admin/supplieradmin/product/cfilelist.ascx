<%@ Control Language="vb" AutoEventWireup="false" Inherits="cFileList1" Codebehind="CFileList.ascx.vb" %>
<div class="pageSupplierFiles">
	<asp:label id="msg" runat="server"></asp:label>
	<asp:Label ID="lblerr" runat="server"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:hyperlink id="lnkAddNew" runat="server" CssClass="btnDefault fancyContent">Yeni Ekle</asp:hyperlink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>
				<asp:BoundColumn DataField="FileId" SortExpression="ImageId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="Description" SortExpression="Description" HeaderText="A&#199;IKLAMA"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="E-BELGE" FooterText="E-BELGE">
					<ItemTemplate>
						<a target="_blank" href='<%# "/uploads/ProductsFiles/" & DataBinder.Eval(Container.DataItem,"Path")%>'>
							<img alt="" border="0" src='<%# getimage(DataBinder.Eval(Container.DataItem,"Path")) %>'>
						</a>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn Visible="False" HeaderText="Varsayýlan">
					<ItemTemplate>
						<asp:CheckBox ID="Checkbox1" runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsDefault") %>'></asp:CheckBox>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="detay">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" Text="<%$ Resources:admin,Detail %>" NavigateUrl='<%# "EditFile.aspx?IND=" & DataBinder.Eval(Container.DataItem, "FileId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "ProductId") & ""%> '></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnDefault" Text="Sil" CausesValidation="false" CommandName="Delete"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>        
		</asp:DataGrid>
	</div>
</div> 