<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ProviderInfo" CodeBehind="ProviderInfo.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Tedarikçi Bilgileri</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Tedarikçi Bilgileri</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"> </asp:Label>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Tedarikçi Adý : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProviderName" ErrorMessage="Tedarikçi Adý Girmelisiniz.">*</asp:RequiredFieldValidator></label>
					<asp:TextBox ID="txtProviderName" runat="server" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Firma Ünvaný :</label>
					<asp:TextBox ID="txtProviderCompany" runat="server" MaxLength="199" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Yetkili Adý :</label>
					<asp:TextBox ID="txtProviderContactName" runat="server" MaxLength="199" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>E-Posta :</label>
					<asp:TextBox ID="txtProviderEmail" runat="server" MaxLength="50" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Telefon 1 :</label>
					<asp:TextBox ID="txtProviderPhone1" runat="server" MaxLength="20" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Telefon 2 :</label>
					<asp:TextBox ID="txtProviderPhone2" runat="server" MaxLength="20" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Fax :</label>
					<asp:TextBox ID="txtProviderFax" runat="server" MaxLength="20" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Vergi Dairesi :</label>
					<asp:TextBox ID="txtProviderTaxOffice" runat="server" MaxLength="50" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Vergi No :</label>
					<asp:TextBox ID="txtProviderTaxNo" runat="server" MaxLength="20" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Banka Adý :</label>
					<asp:TextBox ID="txtProviderBankAccount" runat="server" MaxLength="199" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Hesap No :</label>
					<asp:TextBox ID="txtProviderBankAccountNo" runat="server" MaxLength="99" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Adres :</label>
					<asp:TextBox ID="txtProviderAdress" runat="server" MaxLength="500" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Adres 2 :</label>
					<asp:TextBox ID="txtProviderAdress2" runat="server" MaxLength="500" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				
				<div class="row">
					<div class="colTwo">
					<label>Ödeme Koþullarý :</label>
					<asp:TextBox ID="txtPaymentTerm" runat="server" MaxLength="500" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Teslimat Koþullarý :</label>
					<asp:TextBox ID="txtTransportTerm" runat="server" MaxLength="500" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
					<label>Açýklama :</label>
					<asp:TextBox ID="txtProviderDetails" runat="server" MaxLength="1000" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
					</div>
				</div>
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