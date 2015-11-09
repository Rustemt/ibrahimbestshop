<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="mylicances.ascx.vb" Inherits=".mylicances" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<div id="pageLicences">
	<p><b><asp:CheckBox Text="Sadece Lisanslar" AutoPostBack="true" Checked="true" runat="server" ID="cbKey" OnCheckedChanged="Unnamed1_CheckedChanged" /></b></p>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="dataTable">
		<asp:GridView ID="dg1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="Lisans" EnableModelValidation="True">
			<Columns>
				<asp:TemplateField HeaderText="Lisans" HeaderStyle-HorizontalAlign="Left">
					<EditItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Lisans") %>'></asp:Label>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Lisans") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Lisans Kodu" HeaderStyle-HorizontalAlign="Left">
					<EditItemTemplate>
						<asp:TextBox ID="txtValue" runat="server" Width="600" Text='<%# DataBinder.Eval(Container, "DataItem.Value") %>'></asp:TextBox>&nbsp;<asp:Button ID="ImageButton1" runat="server" CssClass="btnDefault" ValidationGroup="updateitem" CommandName="Update" Text="Güncelle" ToolTip="Güncelle" />
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Value") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField>
					<ItemTemplate>
						<asp:Button ID="btnEdit" CssClass="btnDefault" runat="server" Text="Düzenle" CommandName="Edit" />
						<asp:Button ID="btnDelete" CssClass="btnDefault" runat="server" Text="Sil" CommandName="Delete" />
						<cc1:ConfirmButtonExtender ID="cc1" runat="server" TargetControlID="btnDelete" ConfirmText="Bu kaydı silmek istediğinizden emin misiniz?"></cc1:ConfirmButtonExtender>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>
</div>