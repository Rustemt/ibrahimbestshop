<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditMark1" Codebehind="EditMark.aspx.vb" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Marka D�zenle</title>    
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup" style="width:670px;">
	<div class="boxToggle" id="TabContainer">
		<div class="toggleTitle toggleMini">
			<div class="titleText">Marka D�zenle</div>
			<div class="titleTab">
				<ul class="tabMenu">
					<li><a href="#tab_1">Marka Bilgileri</a></li>
					<li><a href="#tab_2">Marka Detay�(html)</a></li>
					<li><a href="#tab_3">Xml Entegrasyonu</a></li>
					<li><a href="#tab_4">Seo Bilgileri</a></li>
				</ul>
			</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server" ></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ></asp:ValidationSummary>
			<div class="tabContent">
				<div class="tab" id="tab_1">
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label>Marka Ad� : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMarkName" ErrorMessage="Marka Ad� Girmelisiniz." >*</asp:RequiredFieldValidator></label>
								<asp:TextBox ID="txtMarkName" runat="server"></asp:TextBox>
							</div>
							<div class="colTwo colBtn">
								<label>Marka Logosu :</label>
								<asp:TextBox ID="Src" runat="server"></asp:TextBox>
								<asp:HyperLink ID="showGalleryButton" runat="server" NavigateUrl="#" CssClass="btnDefault" onclick="BrowseServer('Src');" Text="Galeri"></asp:HyperLink>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>Marka Aktif :</label>
								<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server"  Checked="True"></asp:CheckBox> Aktif/Pasif</label>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label><asp:Label ID="lblSearchKeywords" runat="server"  Visible="False">Anahtar Kelimeler(tag) :</asp:Label></label>
								<asp:TextBox ID="txtSearchKeywords" runat="server"  MaxLength="3000" TextMode="MultiLine" Visible="False"></asp:TextBox>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_2">
					<div class="dataForm">
						<div class="row">
							<div class="colOne">
								<label>Marka A��klama :</label>
								<FCKeditorV2:FCKeditor ID="txtDetail" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath=" /FCKeditor/"></FCKeditorV2:FCKeditor>
							</div>
						</div>
						<div class="row">
							<div class="colOne">
								<label>Marka A��klama 2 :</label>
								<FCKeditorV2:FCKeditor ID="txtDetail2" runat="server" Height="300px" ToolbarSet="BasicPlus" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_3">
					<div class="dataForm">
						<div class="row">
							<div class="colOne"><b>Xml Entegrasyonu K�r Oranlar�</b></div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>Al�� Fiyat� Oran� % :</label>
								<ew:numericbox id="txtFA" runat="server"></ew:numericbox>
							</div>
							<div class="colTwo">
								<label>Piyasa Fiyat� Oran� % :</label>
								<ew:numericbox id="txtFP" runat="server"></ew:numericbox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>Havale Fiyat Oran� % :</label>
								<ew:numericbox id="txtF0" runat="server"></ew:numericbox>
							</div>
							<div class="colTwo">
								<label>1.Fiyat Oran� % :</label>
								<ew:numericbox id="txtF1" runat="server"></ew:numericbox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>2.Fiyat Oran� % :</label>
								<ew:numericbox id="txtF2" runat="server"></ew:numericbox>
							</div>
							<div class="colTwo">
								<label>3.Fiyat Oran� % :</label>
								<ew:numericbox id="txtF3" runat="server"></ew:numericbox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>4.Fiyat Oran� % :</label>
								<ew:numericbox id="txtF4" runat="server"></ew:numericbox>
							</div>
							<div class="colTwo">
								<label>5.Fiyat Oran� % :</label>
								<ew:numericbox id="txtF5" runat="server"></ew:numericbox>
							</div>
						</div>
					</div>
				</div>
				<div class="tab" id="tab_4">
					<div class="dataForm">
						<div class="row">
							<div class="colTwo">
								<label>Sayfa Ba�l���(title) :</label>
								<asp:TextBox ID="txttitle" runat="server"  MaxLength="99"></asp:TextBox>
							</div>
							<div class="colTwo">
								<label>Sayfa A��klamas�(description) :</label>
								<asp:TextBox ID="txtdescription" runat="server"  MaxLength="254"></asp:TextBox>
							</div>
						</div>
						<div class="row">
							<div class="colTwo">
								<label>Anahtar Kelimeler(keywords) :</label>
								<asp:TextBox ID="txtkeywords" runat="server"  MaxLength="254"></asp:TextBox>
							</div>
							<div class="colTwo"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="Kaydet"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="�ptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>