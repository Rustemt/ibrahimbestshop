<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditBank" CodeBehind="EditBank.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Banka D�zenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Banka D�zenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowSummary="False" ShowMessageBox="True" ValidationGroup="posnet"></asp:ValidationSummary>
			<div class="dataForm">
			<div class="row">
				<div class="colOne">
					<label>Bankaya Verilecek �p Adresi : </label>
                    <label class="labelInput"><asp:Label ID="lblIp" runat="server" CssClass="textRed"></asp:Label></label>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label>Banka Ad� : <asp:RequiredFieldValidator ID="rq1" runat="server" ErrorMessage="Banka Ad� Girmelisiniz." ControlToValidate="cmbBankName">*</asp:RequiredFieldValidator></label>
					<asp:DropDownList ID="cmbBankName" runat="server" AutoPostBack="True">
					<asp:ListItem Value="Akbank">Akbank</asp:ListItem>
					<asp:ListItem Value="Albaraka T&#252;rk">Albaraka T&#252;rk(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="Anadolubank">Anadolubank</asp:ListItem>
					<asp:ListItem Value="Bank Asya">Bank Asya</asp:ListItem>
					<asp:ListItem Value="Finansbank">Finansbank</asp:ListItem>
					<asp:ListItem Value="Fortis">Fortis</asp:ListItem>
					<asp:ListItem Value="Garanti Bankas�">Garanti Bankas�</asp:ListItem>
					<asp:ListItem Value="Halk Bankas�">Halk Bankas�</asp:ListItem>
					<asp:ListItem Value="HSBC Bank">HSBC Bank</asp:ListItem>
					<asp:ListItem Value="�� Bankas�">�� Bankas�</asp:ListItem>
					<asp:ListItem Value="Ko&#231; Bank">Ko&#231; Bank(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="Kuveyt T&#252;rk Kat�l�m Bankas�">Kuveyt T&#252;rk Kat�l�m Bankas�</asp:ListItem>
					<asp:ListItem Value="SHOPMILES">SHOPMILES(Paynet)</asp:ListItem>
					<asp:ListItem Value="T&#252;rk Ekonomi Bankas�">T&#252;rk Ekonomi Bankas�</asp:ListItem>
					<asp:ListItem Value="T&#252;rkiye Finans Kat�l�m Bankas�">T&#252;rkiye Finans Kat�l�m Bankas�</asp:ListItem>
					<asp:ListItem Value="T&#252;rkiye Halk Bankas�">T&#252;rkiye Halk Bankas�</asp:ListItem>
					<asp:ListItem Value="Yap� Kredi">Yap� Kredi</asp:ListItem>
					<asp:ListItem Value="Vak�fBank">Vak�fBank</asp:ListItem>
					<asp:ListItem Value="Ziraat Bankas�">Ziraat Bankas�(Sanal pos yok)</asp:ListItem>
					<asp:ListItem Value="DenizBankNew">Deniz Bank (Yeni Sanal Pos)</asp:ListItem>
					<asp:ListItem>DenizBank</asp:ListItem>
					</asp:DropDownList>
				</div>
				<div class="colTwo">
					<label>G�r�nen Ad : <small>(Banka ad� yerine g�sterilecek)</small></label>
					<asp:TextBox ID="txtBankDesc" runat="server" MaxLength="100"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label>Banka �ubesi(Havale) :</label>
					<asp:TextBox ID="txtBankOffice" runat="server"></asp:TextBox>
				</div>
				<div class="colTwo">
					<label>Hesap No(Havale) :</label>
					<asp:TextBox ID="txtAccountNumber" runat="server"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colTwo colBtn">
					<label>Taksit Se�enekleri ��in Banka Logosu :</label>
					<asp:TextBox ID="Src" runat="server"></asp:TextBox>
					<asp:HyperLink ID="showGalleryButton" runat="server" CssClass="btnDefault" onclick="BrowseServer('Src');" NavigateUrl="#"><i class="fa fa-folder-open-o"></i>  Galeri</asp:HyperLink>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
                	<label>Sanal Pos</label>
					<label class="labelInput"><asp:CheckBox ID="chkIsCreditCard" runat="server" AutoPostBack="True" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
				</div>
				<div class="colTwo">
                	<label>Taksitli �ekim</label>
					<label class="labelInput"><asp:CheckBox ID="chkTaksitAktif" runat="server" AutoPostBack="True" Checked="True" /> Aktif/Pasif</label>
				</div>
			</div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.Checked %>">
                    <label>Sanal Pos Ortam� (Test/�retim) :</label>
                    <asp:DropDownList ID="ddlTest" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="0">&#220;retim Ortam�</asp:ListItem>
                    <asp:ListItem Value="1">Test Ortam�</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" id="testOrderId" visible="<%# ddltest.selectedvalue=1 %>">
                    <label>Sanal Pos Test Ortam� Sipari� No :</label>
                    <asp:TextBox ID="txtOrderId" runat="server" ToolTip="Bankan�z �zel bir sipari� numaras� ile i�lem yapman�z� istedi�inde bu alan� kullan�n�z." Visible="<%# ddltest.selectedvalue=1 %>"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>Sanal Pos Entegrasyonu(Arena) :</label>
                    <asp:DropDownList ID="ddlPaynet" runat="server" AutoPostBack="True" Visible="<%# chkIsCreditCard.checked %>">
                        <asp:ListItem Value="0">--Yok--</asp:ListItem>
                        <asp:ListItem Value="1">Paynet(Arena)</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
                    <label>Bayi Kodu(Arena) :</label>
                    <asp:TextBox ID="txtPaynetCode" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz." ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Bayi kodu girmelisiniz." Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">
                    <label>Kullan�c� Ad�(Arena) :</label>
                    <asp:TextBox ID="txtPaynetUserName" runat="server" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullan�c� ad� girmelisiniz." ValidationGroup="posnet" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPaynetCode" Enabled="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ErrorMessage="Kullan�c� ad� girmelisiniz." Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>">*</asp:RequiredFieldValidator>
                    <asp:LinkButton ID="btnAutoFill" runat="server" CssClass="textRed" Visible="<%# chkIsCreditCard.checked and ddlPaynet.SelectedValue=1 %>" ValidationGroup="posnet">Pos bilgilerini otomatik doldur</asp:LinkButton>
                    <div class="alert alert-info" runat="server" id="alert" visible="false" ><asp:Label ID="lblEntMsg" runat="server"></asp:Label></div>
                </div>
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>Varsay�lan Pos Olarak Kullan :</label>
                    <label class="labelInput"><asp:CheckBox ID="chkDefault" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:CheckBox> Aktif/Pasif</label>
                </div>
            </div>
            <div class="row">
                <div class="colTwo" runat="server" visible="<%# chkIsCreditCard.checked %>">
                    <label>�deme T�r� :</label>
                    <asp:DropDownList ID="ddlAuth" runat="server" Visible="<%# chkIsCreditCard.checked %>">
                        <asp:ListItem Value="Auth">Otorizasyon</asp:ListItem>
                        <asp:ListItem Value="PreAuth">&#214;n Otorizasyon</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="colTwo" runat="server" id="divSection" visible="false">
                    <label>B�l�m :</label>
                    <asp:DropDownList runat="server" ID="ddlSection">
                        <asp:ListItem Text="1" Value="1" />
                        <asp:ListItem Text="2" Value="2" />
                    </asp:DropDownList>
                </div>
            </div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lbl2" runat="server" Visible="False">Pos No : <asp:RequiredFieldValidator ID="rqPosNo" runat="server" ControlToValidate="txtPosNo" ErrorMessage="Pos No Girmelisiniz." Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator></asp:Label></label>
					<asp:TextBox ID="txtPosNo" runat="server" Visible="False"></asp:TextBox>
				</div>
				<div class="colTwo">
					<label><asp:Label ID="lbl1" runat="server" Visible="False">Xcip :</asp:Label></label>
					<asp:TextBox ID="txtXcip" runat="server" Visible="False"></asp:TextBox>
					<asp:RequiredFieldValidator ID="rqXcip" runat="server" ControlToValidate="txtXcip" ErrorMessage="Xcip girmelisiniz." Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lblId1" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos ID(Uye No/Client Id/Org.Kodu) :</asp:Label></label>
					<asp:TextBox ID="txtPosId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" ErrorMessage="Sanal Pos ID Girmelisiniz." ControlToValidate="txtPosId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lblId2" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Kullan�c� Ad�(Name/MID/F.Kodu) :</asp:Label></label>
					<asp:TextBox ID="txtPosUserId" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" ErrorMessage="Sanal Pos Kullan�c� Ad� Girmelisiniz." ControlToValidate="txtPosUserId" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
				<div class="colTwo">
					<label><asp:Label ID="lblId3" runat="server" Visible="<%# chkIsCreditCard.checked %>">Sanal Pos Parola(Password/TID/Terminal No) :</asp:Label></label>
					<asp:TextBox ID="txtPosPassword" runat="server" Visible="<%# chkIsCreditCard.checked %>"></asp:TextBox>
					<asp:RequiredFieldValidator ID="Requiredfieldvalidator8" runat="server" ErrorMessage="Sanal Pos Parola Girmelisiniz." ControlToValidate="txtPosPassword" Visible="<%# chkIsCreditCard.checked %>" Enabled="<%# chkIsCreditCard.checked %>">*</asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="colOne">
					<label><asp:Label ID="Label14" runat="server" Visible="<%# chkIsCreditCard.checked %>">3D G�venlik Aktif :</asp:Label></label>
					<label class="labelInput"><asp:CheckBox ID="chkUse3d" runat="server" Visible="<%# chkIsCreditCard.checked %>" Text='Sadece 3D deste�i olan bankalar i�in kullan�n�z.' AutoPostBack="True"></asp:CheckBox></label>
				</div>
			</div>
			<div class="row">
				<div class="colTwo">
					<label><asp:Label ID="lbl3DKey" runat="server" Visible="False">3D G�venlik Anahtar�(Storekey) :</asp:Label></label>
					<asp:TextBox ID="txt3DKey" runat="server" Visible="False"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="colOne">
					<label>A��klama : <small>(Bu alan �deme sayfas�nda banka ad�n�n yan�nda g�sterilecek)</small></label>
					<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" MaxLength="3000"></asp:TextBox>
				</div>
				<div class="colTwo"></div>
			</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="�ptal"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>