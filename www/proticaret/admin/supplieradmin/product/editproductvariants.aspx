<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProductVariants1" CodeBehind="EditProductVariants.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Varyant D�zenle</title>
<script type="text/javascript">
	function SelectImage() {
		var imgsrc = $("#ddlImages").val();
		$("#variantimg").attr("src", "/uploads/productsimages/" + imgsrc);
	}    
</script>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">�r�n Varyant D�zenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataFilter">
				<div class="colGroup">
					<div class="col">
						<label><asp:Label ID="Label3" runat="server">Varyant Ad�:</asp:Label></label>
						<asp:DropDownList ID="ddlOption" runat="server" AutoPostBack="True"> </asp:DropDownList>
					</div>
					<div class="col">
						<label><asp:Label ID="Label1" runat="server">Varyant De�eri:</asp:Label></label>
						<asp:DropDownList ID="ddlOptionValues" runat="server"> </asp:DropDownList>
					</div>
					<div class="col col2">
						<label><asp:Label ID="Label2" runat="server">Fiyat Fark�:</asp:Label></label>
						<ew:NumericBox ID="txtFiyat" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
						<asp:DropDownList ID="ddlPrefix" runat="server">
						<asp:ListItem Value="+">Ekle</asp:ListItem>
						<asp:ListItem Value="-">&#199;�kar</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="col">
						<label><asp:Label ID="Label4" runat="server">Resim:</asp:Label></label>
						<asp:DropDownList onchange="SelectImage()" ID="ddlImages" runat="server"> </asp:DropDownList>
					</div>
					<div class="col">
						<label>&nbsp;</label>
						<img alt="" id="variantimg" style="height: 26px" src="" />
					</div>
				</div>
			</div>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
				<Columns>
				<asp:BoundColumn Visible="False" DataField="ProductAttributesId" HeaderText="IND"> </asp:BoundColumn>
				<asp:BoundColumn DataField="ProductOptionsName" HeaderText="Varyant Ad�"></asp:BoundColumn>
				<asp:BoundColumn DataField="ProductOptionsValuesName" HeaderText="De�er Ad�"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Fiyat Fark�">
					<ItemTemplate>
					<asp:Label ID="Label5" runat="server" Text='<%#  DataBinder.Eval(Container, "DataItem.ProductOptionsValuespricePrefix") & " " & DataBinder.Eval(Container, "DataItem.ProductOptionsValuesPrice") %>'></asp:Label>
				</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Resim">
					<ItemTemplate> <img alt="" id="Img1" style="height: 20px" src='/uploads/productsimages/<%#  DataBinder.Eval(Container, "DataItem.ProductImagePath") %>' />
				</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="Sil">
					<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="Sil" Visible = '<%# deleteVariantPre %>'></asp:LinkButton>
				</ItemTemplate>
				</asp:TemplateColumn>
				</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnEkle" runat="server" CssClass="btnDefault" Text="Ekle"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Kapat" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
<script type="text/javascript">
	SelectImage()
</script>
</body>
</html>
