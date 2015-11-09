<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.EditImage1" Codebehind="EditImage.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Resim Düzenle</title>
<script  type="text/javascript"> 
  function UploadChecked(s)
    	{
    	if(s.checked)
    	{
    	var txt = document.getElementById('txtFileName')
    	var lbl = document.getElementById('lblDosyaAdi')
    	var oFile = document.getElementById('oFile')
    	oFile.style.display = "block";
    	txt.style.display = "none";
    	//lbl.style.display = "none";
    	lbl.innerHTML = "Dosya Seç :";
    	}
    	else
    	{
		var txt = document.getElementById('txtFileName')
    	var lbl = document.getElementById('lblDosyaAdi')
    	var oFile = document.getElementById('oFile')
    	oFile.style.display = "none";
    	txt.style.display = "block";
    	lbl.innerHTML = "Dosya Adý :";
    	}    
    	}
    </script>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Resim Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
						<label>Açýklama : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="Açýklama giriniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtDescription" runat="server">resim</asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Varsayýlan :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsDefault" runat="server" Checked="True"></asp:CheckBox> Evet/Hayýr</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lbldosya" runat="server">Dosya Gönder :</asp:Label></label>
						<label class="labelInput"><asp:CheckBox ID="CheckBox1" onclick="UploadChecked(this);" runat="server" Checked="True"></asp:CheckBox> Evet/Hayýr</label>
					</div>
					<div class="colTwo">
						<label><asp:Label ID="lblUrl" runat="server">Xml Url:</asp:Label></label>
						<asp:HyperLink ID="lnkUrl" runat="server" Target="_blank">[lnkUrl]</asp:HyperLink>
						<asp:Button ID="btnUrl" runat="server" CssClass="btnDefault" Text="indir" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><asp:Label ID="lblDosyaAdi" runat="server">Dosya Seç :</asp:Label></label>
						<asp:TextBox ID="txtFileName" Style="display: none" runat="server"></asp:TextBox>
						<input id="oFile" type="file" size="13" name="oFile" runat="server" />
					</div>
				</div>
				<div class="row">
					<div class="colOne"><asp:Image ID="imge" runat="server"></asp:Image></div>
				</div>
			</div>
			<div class="buttonGroup">
				<asp:Button ID="btnSaveExit" runat="server" CssClass="btnDefault" Text="Kaydet &amp; Kapat"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="Ýptal" CausesValidation="False"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>