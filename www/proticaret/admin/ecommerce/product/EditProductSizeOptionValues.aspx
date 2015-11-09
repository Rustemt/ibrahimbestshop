<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductSizeOptionValues" Codebehind="EditProductSizeOptionValues.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Boyut Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText"><asp:label ID="lblheader" runat="server">Boyut Deðeri Düzenle</asp:label></div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" CssClass="Admin_HataMesaji"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="buttonGroup">
				<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault" Visible="False"><i class="fa fa-plus"></i> Yeni Ekle</asp:HyperLink>
                <a href="javascript:void(0)" class="btnDefault" onclick="AddNew()"><i class="fa fa-plus"></i> Yeni Ekle</a>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn Visible="False" DataField="ProductSizeOptionsValueId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductSizeOptionsValueName" HeaderText="Boyut Adý"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Resim">
					<ItemTemplate> <img alt="Resim"  height="16px" src="<%# DataBinder.Eval(Container.DataItem,"ProductSizeOptionsPath") %>" /> </ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Detay" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
					<a href="javascript:void(0)" class="btnIcon" onclick="<%# "popupWindow(620,225,50,'EditProductSizeOptionValue.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionsValueId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "ProductSizeOptionId") & "&SID=" & Request.QueryString("SID") & " ','popup');"%>"><i class="fa fa-pencil"></i></a>
                    </ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" CausesValidation="False"></asp:Button>
			</div>

		</div>
	</div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
    function AddNew() {
        var a = "<%= IND%>";
        var b ="<%= SID%>"
        popupWindow(620, 225, 50, 'EditProductSizeOptionValue.aspx?IND=0&DIND='+ a + '&SID=' + b, 'popup');

    }
</script>