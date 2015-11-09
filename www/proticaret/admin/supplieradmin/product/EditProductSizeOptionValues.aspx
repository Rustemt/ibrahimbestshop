<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductSizeOptionValues1" Codebehind="EditProductSizeOptionValues.aspx.vb" %>
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
				<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault">Yeni Ekle</asp:HyperLink>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn Visible="False" DataField="ProductSizeOptionsValueId" HeaderText="IND"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductSizeOptionsValueName" HeaderText="Boyut Adý"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Resim">
					<ItemTemplate> <img alt="Resim"  height="16px" src="<%# DataBinder.Eval(Container.DataItem,"ProductSizeOptionsPath") %>" /> </ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Detay">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "EditProductSizeOptionValue.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProductSizeOptionsValueId") & "&DIND=" & DataBinder.Eval(Container.DataItem,"ProductSizeOptionId") & "&SID=" &  Request.QueryString("SID")  %> '> Detay </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil">
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil"></asp:LinkButton>
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