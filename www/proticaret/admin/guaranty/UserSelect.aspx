<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserSelect.aspx.vb" Inherits="userselect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis tip Ekle</title>
<link rel="stylesheet" type="text/css" href="/admin/assets/css/font-awesome.css" />
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Servis Formu</div>
		</div>
		<div class="toggleContent">
			<label id="lblError" runat="server" />
			<asp:Label runat="server" ID="lblMessage"></asp:Label>
			<asp:Label Text="" runat="server" ID="lbl" />
			
			<div class="colGroup">
				<div class="col2 colBtn">
					<label>Tüm Alanlarda Arama : </label>
					<asp:TextBox ID="txtFullName" runat="server" ></asp:TextBox>
                    <asp:LinkButton CssClass="btnDefault" ID="btnsearch" runat="server"><i class="fa fa-search"> Ara</i></asp:LinkButton>
				</div>
			</div>
			<div class="dataTable">
				<asp:GridView ID="gvUsers" runat="server" GridLines="None" HeaderStyle-CssClass="title" AllowPaging="True" EnableModelValidation="True" Width="100%" AutoGenerateColumns="False">
					<Columns>
					<asp:BoundField DataField="UserID" HeaderText="ID" />
					<asp:BoundField DataField="FullName" HeaderText="Ad" />
					<asp:BoundField DataField="CompanyName" HeaderText="Şirket" />
					<asp:BoundField DataField="CompanyVdNo" HeaderText="Vergi No" />
					<asp:BoundField DataField="Email" HeaderText="Mail" />
					<asp:BoundField DataField="MobilePhone" HeaderText="Telefon" />
					<asp:ButtonField Text="Seç" CommandName="Select" Visible="False">
						<ItemStyle CssClass="btnDefault btnLink" />
					</asp:ButtonField>
					<asp:ButtonField Text="Seç" CommandName="Select" Visible="False" ControlStyle-CssClass="btnDefault" >
						<ItemStyle CssClass="btnDefault btnLink" />
					</asp:ButtonField>
					</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>