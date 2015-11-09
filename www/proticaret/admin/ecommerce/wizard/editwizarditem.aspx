<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Page Language="vb" validateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.editwizarditem" Codebehind="editwizarditem.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Özellik Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Özellik Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Özellik Adý :</label>
						<asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Gösterim Sýrasý :</label>
						<ew:NumericBox ID="txtOrder" runat="server" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" TextAlign="Right">1</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Durumu :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True" Text="Aktif" /> <asp:CheckBox ID="chkIsVisible" runat="server" Checked="True" Text="Arama sihirbazýnda göster" Visible="false" /></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>Açýklama :</label>
						<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" BasePath="/FCKeditor/" Height="300px" ToolbarSet="BasicPlus" />
					</div>
				</div>
			</div>
			<p><b><asp:Label ID="lblSelectList" runat="server">Seçim Listesi :</asp:Label></b></p>
			<div class="dataTable">
			<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title">      
			<Columns>
				<asp:BoundColumn Visible="False" DataField="LookupId" HeaderText="ID"></asp:BoundColumn>
				<asp:BoundColumn DataField="LookupName" HeaderText="Adý"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="Düzenle">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditwizardLookup.aspx?IND=" & DataBinder.Eval(Container.DataItem,"LookupId") &  "&QIND=" & Request.QueryString("IND") & ""","""",""width=400,height=200,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '>Düzenle</asp:HyperLink>
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
				<asp:Button ID="btnsave" runat="server" CssClass="btnDefault" Text="Kaydet" CausesValidation="False"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>