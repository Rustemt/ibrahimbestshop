<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="logdetail.aspx.vb" Inherits="logdetail" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Servis Tarihçesi</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup" runat="server">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Servis Logu</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
			<asp:Label ID="lblSort" runat="server" Visible="False" Text=""></asp:Label>
			<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
			<asp:Label Text="" runat="server" ID="Label1" />
			
			<div class="dataTable">
				<asp:GridView ID="GWServicesPartLİst" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False" DataKeyNames="id,JobID,PersonID,UnitID,ProductID" Width="100%" ShowFooter="True">
				<Columns>
					<asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
					<asp:TemplateField HeaderText="İş Türü" SortExpression="JobName">
					<EditItemTemplate>
							<asp:DropDownList ID="ddlJobTypes" runat="server"></asp:DropDownList>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblJobName" runat="server" Text='<%# eval("JobName") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Barkod" SortExpression="Barcode">
					<ItemTemplate>
							<asp:Label ID="lblBarcode" runat="server" Text='<%# Bind("Barcode") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Stok Kodu" SortExpression="StockCode">
					<EditItemTemplate>
							<asp:TextBox ID="txtProductCode" runat="server" Text='<%# Bind("ProductCode")%>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblProductCode" runat="server" Text='<%# Bind("ProductCode")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Stok Adı" SortExpression="StockName">
					<EditItemTemplate>
							<asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("ProductName")%>' Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Açıklama" SortExpression="PersonDesc">
					<EditItemTemplate>
							<asp:TextBox ID="txtPersonDesc" runat="server" Text='<%# Bind("PersonDesc") %>' TextMode="MultiLine" Height="100" Width="150"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblPersonDesc" runat="server" Text='<%# Bind("PersonDesc") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Birim">
					<EditItemTemplate>
							<asp:DropDownList runat="server" ID="ddlBirim" />
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblBirim" runat="server" Text='<%# Bind("BirimAdi")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="false" />
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Miktar" SortExpression="PartQty">
					<EditItemTemplate>
							<asp:TextBox ID="txtPartQty" runat="server" Text='<%# Container.DataItem("PartQty")%>'></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblPartQty" runat="server" Text='<%# Bind("PartQty") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Fiyat" SortExpression="Price">
					<EditItemTemplate>
							<asp:TextBox ID="txtPrice" runat="server" Text='<%# Container.DataItem("Price")%>'></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Hiz. Fiyatı" SortExpression="ServicePrice">
					<EditItemTemplate>
							<asp:TextBox ID="txtServicePrice" runat="server" Text='<%# Bind("ServicePrice")%>' Width="40"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblServicePrice" runat="server" Text='<%# Bind("ServicePrice")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İsk1" SortExpression="Discount1">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscount1" runat="server" Text='<%# Bind("Discount1") %>' Width="50"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscount1" runat="server" Text='<%# Bind("Discount1") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İsk2" SortExpression="Discount2">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscount2" runat="server" Text='<%# Bind("Discount2") %>' Width="50"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscount2" runat="server" Text='<%# Bind("Discount2") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İsk3" SortExpression="Discount3">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscount3" runat="server" Text='<%# Bind("Discount3") %>' Width="50"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscount3" runat="server" Text='<%# Bind("Discount3") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İsk4" SortExpression="Discount4">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscount4" runat="server" Text='<%# Bind("Discount4") %>' Width="50"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscount4" runat="server" Text='<%# Bind("Discount4") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İsk5" SortExpression="Discount5">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscount5" runat="server" Text='<%# Bind("Discount5") %>' Width="50"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscount5" runat="server" Text='<%# Bind("Discount5") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Toplam Tutar" SortExpression="TotalPrice">
					<EditItemTemplate>
							<asp:TextBox ID="txtTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="İskTopTut" SortExpression="DiscTotPrice">
					<EditItemTemplate>
							<asp:TextBox ID="txtDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice")%>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="NetTopTut" SortExpression="NetTotPrice">
					<EditItemTemplate>
							<asp:TextBox ID="txtNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="KDV" SortExpression="KdvRate">
					<EditItemTemplate>
							<asp:TextBox ID="txtKdvRate" runat="server" Text='<%# Bind("KdvRate")%>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblKdvRate" runat="server" Text='<%# Bind("KdvRate")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="KdvTopTut" SortExpression="KdvTotPrice" Visible="false">
					<EditItemTemplate>
							<asp:TextBox ID="txtKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>' Width="50" Enabled="False"></asp:TextBox>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<%--///////////////////////////////////////////////////////////////////////--%>
					<asp:TemplateField HeaderText="Dip İsk 1" SortExpression="DeepDisc1" Visible="False">
					<ItemTemplate>
							<asp:Label ID="lblDeepDisc1" runat="server" Text='<%# Bind("DeepDisc1")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk 2" SortExpression="DeepDisc2" Visible="False">
					<ItemTemplate>
							<asp:Label ID="lblDeepDisc2" runat="server" Text='<%# Bind("DeepDisc2")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="TopTut" SortExpression="KdvTotPrice" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblKdvNetTotPrice2" runat="server" Text='<%# Bind("GenTotal")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk Gen Top 1" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblGenTotal" runat="server" Text='<%# Bind("DeepGenDiscTotal1")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk Top 1" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblGenTotal2" runat="server" Text='<%# Bind("DeepDiscTotal1")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk1 Kdv" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblDeepDiscKdv1" runat="server" Text='<%# Bind("DeepDiscKdv1")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk Gen Top 2" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblGenTotal3" runat="server" Text='<%# Bind("DeepGenDiscTotal2")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk Top 2" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblGenTotal4" runat="server" Text='<%# Bind("DeepDiscTotal2")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<asp:TemplateField HeaderText="Dip İsk2 Kdv" SortExpression="GenTotal" Visible="false">
					<ItemTemplate>
							<asp:Label ID="lblDeepDiscKdv2" runat="server" Text='<%# Bind("DeepDiscKdv2")%>'></asp:Label>
						</ItemTemplate>
				</asp:TemplateField>
					<%--/////////////////////////////////////////////////////////////////--%>
					<asp:TemplateField HeaderText="Personel" SortExpression="PersonName">
					<EditItemTemplate>
							<asp:DropDownList ID="ddlPersonel" runat="server"></asp:DropDownList>
						</EditItemTemplate>
					<ItemTemplate>
							<asp:Label ID="lblPersonel" runat="server" Text='<%# Eval("PersonName")%>'></asp:Label>
						</ItemTemplate>
					<ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
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
		</div>
	</div>
</div>
</form>
</body>
</html>