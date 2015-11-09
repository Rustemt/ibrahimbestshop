<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PrintBill.aspx.vb" Inherits="ASPNetPortal.PrintBill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Sipariş Ekranı</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Sipariş Ekranı</div>
		</div>
		<div class="toggleContent">
			<div id="siparisEkrani">
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label><b>Şirket Bilgileri</b></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Şirket Adı :</label>
						<label class="labelInput"><asp:Label id="CompanyName" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Şirket Telefonu :</label>
						<label class="labelInput"><asp:Label id="CompanyTel" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Şirket Fax :</label>
						<label class="labelInput"><asp:Label id="CompanyFax" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Şirket Adresi :</label>
						<label class="labelInput"><asp:Label id="CompanyAddress" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Şirket Maili :</label>
						<label class="labelInput"><asp:Label id="CompanyEmail" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Site Adı :</label>
						<label class="labelInput"><asp:Label id="SiteName" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne"><label><b>Fatura Bilgileri</b></label></div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Düzenleme Tarihi :</label>
						<label class="labelInput"><asp:Label id="duzenlenmeTarihi" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Fiili Sevk Tarihi :</label>
						<label class="labelInput"><asp:Label id="fiilisevkTarihi" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Düzenleme Saati :</label>
						<label class="labelInput"><asp:Label id="düzenlemeSaati" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Siparis No/Kod :</label>
						<label class="labelInput"><asp:Label id="sipariskodNo" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne"><label><b>Fatura Bilgileri</b></label></div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Firma Adı :</label>
						<label class="labelInput"><asp:Label id="firmaAdi" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Vergi Dairesi :</label>
						<label class="labelInput"><asp:Label id="vergiDairesi" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Vergi No :</label>
						<label class="labelInput"><asp:Label id="vergiNo" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Telefon :</label>
						<label class="labelInput"><asp:Label id="telefon" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Gsm :</label>
						<label class="labelInput"><asp:Label id="gsm" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Adres :</label>
						<label class="labelInput"><asp:Label id="adres" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Ülke-Şehir-İlçe :</label>
						<label class="labelInput"><asp:Label id="sehir" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colOne"><label><b>Teslim Adresi </b></label></div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Alıcı :</label>
						<label class="labelInput"><asp:Label id="tAlici" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Telefon :</label>
						<label class="labelInput"><asp:Label id="tTelefon" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Gsm :</label>
						<label class="labelInput"><asp:Label id="tGsm" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Adres :</label>
						<label class="labelInput"><asp:Label id="tAdres" runat="server"></asp:Label></label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Şehir :</label>
						<label class="labelInput"><asp:Label id="tSehir" runat="server"></asp:Label></label>
					</div>
					<div class="colTwo">
						<label>Kargo :</label>
						<label class="labelInput"><asp:Label id="tKargo" runat="server"></asp:Label></label>
					</div>
				</div>
			</div>
			<table width="100%" cellspacing="0" cellpadding="5" border="1">
			<tr>
				<td><b>Ürün Bilgileri</b></td>
			</tr>
			<tr>
				<td>Malin Cinsi</td>
				<td>[Miktar]</td>
				<td>[Fiyat]</td>
				<td>[Toplam]</td>
			</tr>
			<tr>
			<td>
			<asp:DataGrid ID="Datagrid1" CellPadding="5" runat="server" Width="100%" AutoGenerateColumns="False" AllowSorting="True"  GridLines="none" ItemStyle-CssClass="row">
			<Columns>
			<asp:TemplateColumn Visible="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:lang, OrderId%>">
			<ItemTemplate>
				<%# Eval("OrderCode")%>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="OrderDetailsId" HeaderText="Siparis Id"></asp:BoundColumn>
			<asp:BoundColumn DataField="ProductCode" HeaderText="Stok Kodu"></asp:BoundColumn>
			<asp:BoundColumn DataField="ProductNameWithCepKask" HeaderText="Malin Cinsi"></asp:BoundColumn>
			<asp:BoundColumn DataField="?" HeaderText="Miktar"></asp:BoundColumn>
			<asp:BoundColumn DataField="ToplamTutar" HeaderText="Birim Fiyati"></asp:BoundColumn>
			<asp:BoundColumn DataField="ToplamTutar" HeaderText="Tutari"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:lang, TotalPrice%>">
				<ItemTemplate>
					<asp:Label ID="toplam" Visible="false" Text='<%# Eval("ToplamTutar")%>' runat="server"></asp:Label>
					<asp:Label ID="araToplam" Visible="false" Text='<%# Eval("ToplamTutar")%>' runat="server"></asp:Label>
					<asp:Label ID="genelToplam" Visible="false" Text='<%# Eval("KdvDahilToplam")%>' runat="server"></asp:Label>
					<asp:Label ID="toplamKdv" Visible="false" Text='<%# Eval("ToplamKdv")%>' runat="server"></asp:Label>
					<asp:Label ID="kargodahilToplam" Visible="false" Text='<%# Eval("KargoDahilToplamTutar")%>' runat="server"></asp:Label>
					<asp:Label ID="odemeTipi" Visible="false" Text='<%# Eval("PaymentType")%>' runat="server"></asp:Label>
					<asp:Label ID="kargoBedeli" Visible="false" Text='<%# Eval("ToplamKargo")%>' runat="server"></asp:Label>      
				</ItemTemplate>
			</asp:TemplateColumn>  
			</Columns>
			</asp:DataGrid>
			</td>
			</tr>
			<tr>
			<td>Kargo Bedeli</td>
			<td>:
			<asp:Label id="kargoBedeli" runat="server"></asp:Label></td>
			</tr>
			<tr>
			<td>Toplam</td>
			<td>:
			<asp:Label id="toplam" runat="server"></asp:Label></td>
			</tr>
			<tr>
			<td>Ara Toplam</td>
			<td>:
			<asp:Label id="araToplam" runat="server"></asp:Label></td>
			</tr>     
			<tr>
			<td>Kargo Dahil Toplam</td>
			<td>:
			<asp:Label id="kargodahilToplam" runat="server"></asp:Label></td>
			</tr>
			<tr>
			<td>Genel Toplam</td>
			<td>:
			<asp:Label id="genelToplam" runat="server"></asp:Label></td>
			</tr>
			<tr>
			<td>Ödeme Tipi</td>
			<td>:
			<asp:Label id="odemeTipi" runat="server"></asp:Label></td>
			</tr>
			</table>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>