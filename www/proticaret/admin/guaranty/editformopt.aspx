<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editformopt.aspx.vb" Inherits="editformopt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Servis tip Ekle</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Servis Forum Özel Alan Düzenle</div>
		</div>
		<div class="toggleContent">
			<label id="lblMessage" runat="server" />
			<asp:Label Text="" runat="server" ID="lbl" />
			<asp:Label ID="lblError" runat="server"></asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label>Form Adı</label>
						<asp:TextBox ID="txtFormName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo"><b class="textRed">Seçme Liste Alanlar</b></div>
					<div class="colTwo"><b class="textRed">Onaylamalı Alanlar</b></div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 1</label>
						<asp:TextBox ID="txtOpt1" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt11" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 2</label>
						<asp:TextBox ID="txtOpt2" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt12" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 3</label>
						<asp:TextBox ID="txtOpt3" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt13" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 4</label>
						<asp:TextBox ID="txtOpt4" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt14" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 5</label>
						<asp:TextBox ID="txtOpt5" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt15" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 6</label>
						<asp:TextBox ID="txtOpt6" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt16" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 7</label>
						<asp:TextBox ID="txtOpt7" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt17" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 8</label>
						<asp:TextBox ID="txtOpt8" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt18" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 9</label>
						<asp:TextBox ID="txtOpt9" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt19" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Özelik 10</label>
						<asp:TextBox ID="txtOpt10" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtOpt20" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne buttonGroup">
						<asp:Button ID="btnSave" runat="server" CssClass="btnDefault" Text="Kaydet" />
						<asp:Button ID="btnEdit" runat="server" Text="Kaydet" Visible="false" CssClass="btnDefault" />
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
