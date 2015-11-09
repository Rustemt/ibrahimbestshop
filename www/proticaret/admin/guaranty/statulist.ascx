<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="statulist.ascx.vb" Inherits="statulist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageStatuList">
	<asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
		<ContentTemplate>
			<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			
			<div class="buttonGroup">
				<asp:HyperLink ID="Linkaddnewsubcategory" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> Yeni Durum Ekle</asp:HyperLink>
			</div>
			
			<div class="dataTable">
				<asp:GridView ID="GWSubCategoryList" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" ShowHeaderWhenEmpty="true" >
					<Columns>
					<asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True"  Visible="false" />
					<asp:BoundField DataField="StatusCode" HeaderText="Durum Kodu" ReadOnly="True" SortExpression="StatusCode" />
					<asp:BoundField DataField="StatusName" HeaderText="Durum Adı" ReadOnly="True" SortExpression="StatusName" />
					<asp:BoundField DataField="StatusDesc" HeaderText="Açıklama" ReadOnly="True" SortExpression="StatusDesc" />
					<asp:TemplateField HeaderText="Düzenle" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
						<ItemTemplate>
							<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/guaranty/editstatus.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id") %> '><i class="fa fa-pencil"></i> </asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateField>
					<asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
						<ItemTemplate>
							<asp:LinkButton Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"   ><i class="fa fa-trash-o"></i></asp:LinkButton>
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