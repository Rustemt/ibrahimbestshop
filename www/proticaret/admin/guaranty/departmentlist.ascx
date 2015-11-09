<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="departmentlist.ascx.vb" Inherits="departmantlist" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageSuppliers">	
	<asp:UpdatePanel ID="uPanel1" runat="server" UpdateMode="Conditional">
	<ContentTemplate>
	<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="Linkaddnewservices" runat="server" CssClass="btnDefault fancyContent" ><i class="fa fa-plus"></i> Yeni Departman Ekle</asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:GridView ID="GWDepartment" runat="server" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" EnableModelValidation="True" HeaderStyle-CssClass="title" HeaderStyle-HorizontalAlign="Left" ShowHeaderWhenEmpty="true" >
		<Columns>
			<asp:BoundField DataField="id" HeaderText="IND" Visible="False" SortExpression="id" ReadOnly="True" />
			<asp:BoundField DataField="DepartmentCode" Visible="False" HeaderText="Departman Kodu" ReadOnly="True" SortExpression="DepartmentCode" />
            	<asp:TemplateField HeaderText="Departman Kodu" SortExpression="DepartmentCode">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/guaranty/editdepartment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><%#Eval("DepartmentCode")%></asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:BoundField DataField="DepartmentName" HeaderText="Departman Adı" ReadOnly="True" SortExpression="DepartmentName" />
			<asp:BoundField DataField="DepartmentMobile" HeaderText="Cep" SortExpression="DepartmentMobile" />
			<asp:BoundField DataField="DepartmentPhone" HeaderText="Telefon" SortExpression="DepartmentPhone" />
			<asp:BoundField DataField="DepartmentFax" HeaderText="Fax" SortExpression="DepartmentFax" />
			<asp:BoundField DataField="DepartmentStatus" HeaderText="Durumu" SortExpression="DepartmentStatus" />
			<asp:TemplateField HeaderText="Düzenle" Visible="False">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/guaranty/editdepartment.aspx?IND=" & DataBinder.Eval(Container.DataItem, "id")%> '><i class="fa fa-pencil"></i> Düzenle </asp:HyperLink>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" CausesValidation="False" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
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
