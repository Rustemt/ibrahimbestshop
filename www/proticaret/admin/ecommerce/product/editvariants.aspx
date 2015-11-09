<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editvariants.aspx.vb" Inherits="ASPNetPortal.editvariants" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Varyant Düzenle</title>
<script type="text/javascript">
function SelectImage() {
	var imgsrc = $("#ddlImages").val();
	$("#variantimg").attr("src", "/uploads/productsimages/" + imgsrc);
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Ürün Varyant Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="colGroup">
				<div class="col">
					<label><asp:Label ID="Label3" runat="server"><%=GetGlobalResourceObject("admin", "VariantName")%>:</asp:Label></label>
					<asp:DropDownList ID="ddlOption" runat="server" AutoPostBack="True"> </asp:DropDownList>
				</div>
				<div class="col">
					<label><asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "VariantValues")%>:</asp:Label></label>
					<asp:DropDownList ID="ddlOptionValues" runat="server"> </asp:DropDownList>
				</div>
				<div class="col col2">
					<label><asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("admin", "PriceDifference")%>:</asp:Label></label>
					<ew:NumericBox ID="txtFiyat" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					<asp:DropDownList ID="ddlPrefix" runat="server">
					<asp:ListItem Text="<%$ Resources:admin,Plus %>" Value="+"></asp:ListItem>
					<asp:ListItem Text="<%$ Resources:admin,Minus %>" Value="-"></asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="col">
					<label><asp:Label ID="Label4" runat="server"><%=GetGlobalResourceObject("admin", "Picture")%>:</asp:Label></label>
					<asp:DropDownList onchange="SelectImage()" ID="ddlImages" runat="server"></asp:DropDownList>
				</div>
				<div class="col">
					<label>Resim</label>
					<img alt="" id="variantimg" style="height: 30px" src="" />
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="dataTable">
			<asp:DataGrid ID="g1" runat="server" GridLines="None" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn Visible="False" DataField="AttributesId" HeaderText="IND"></asp:BoundColumn>
			<asp:BoundColumn DataField="OptionsName" HeaderText="<%$ Resources:admin,VariantName %>"></asp:BoundColumn>
			<asp:BoundColumn DataField="OptionsValuesName" HeaderText="<%$ Resources:admin,ValueName %>"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,PriceDifference %>">
				<ItemTemplate>
					<asp:Label ID="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.OptionsValuespricePrefix") & " " & DataBinder.Eval(Container, "DataItem.OptionsValuesPrice")%>'></asp:Label>
				</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" ><i class="fa fa-trash-o"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
			</asp:DataGrid>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnEkle" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Add %>"></asp:Button>
				<asp:Button ID="btnAddAllVariants" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ApplyAll %>" ></asp:Button>
				<asp:Button ID="btncancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" />
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