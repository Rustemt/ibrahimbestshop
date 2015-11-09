<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditUnit1"  Codebehind="EditUnit.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Birim D�zenle</title>
<script type="text/javascript"> 
function CalcDesi()
{  
var xen = document.getElementById("txtBEn").value.toString().replace(",",".");
var xboy = document.getElementById("txtBBoy").value.toString().replace(",",".");
var xyuk = document.getElementById("txtBYukseklik").value.toString().replace(",",".");
var m3 =Number(xen)*Number(xboy)*Number(xyuk)
document.getElementById("txtBDesi").value=String(m3/3000).replace(".",",");
} 
function CalcHacim() {
var xen = document.getElementById("txtBEn").value.toString().replace(",",".");
var xboy = document.getElementById("txtBBoy").value.toString().replace(",",".");
var xyuk = document.getElementById("txtBYukseklik").value.toString().replace(",",".");
var m3 =Number(xen)*Number(xboy)*Number(xyuk)
document.getElementById("txtHacim").value=m3;    
}
</script>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Birim D�zenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo">
					<label>Barkod :</label>
					<asp:TextBox ID="txtBBarcode" runat="server" MaxLength="254"></asp:TextBox>
					</div>
					<div class="colTwo">
					<label>Birim Ad� :</label>
					<asp:TextBox ID="txtBBirimAdi" runat="server" MaxLength="254">Adet</asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>Durumu :</label>
					<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
					<label>Varsay�lan :</label>
					<label class="labelInput"><asp:CheckBox ID="chkBIsDefault" runat="server" ></asp:CheckBox> Evet/Hay�r</label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>�arpan :</label>
					<ew:NumericBox ID="txtBCarpan" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
					</div>
					<div class="colTwo colHalf">
					<label>Al�� Fiyat� :</label>
					<ew:NumericBox ID="txtBAlisFiyati" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					<asp:DropDownList ID="ddlAPb" runat="server" ></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>Piyasa Fiyat� :</label>
					<ew:NumericBox ID="txtBPiyasaFiyati" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" >0</ew:NumericBox>
					<asp:DropDownList ID="ddlPPb" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo colHalf">
					<label>Havale Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati0" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" >0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb0" runat="server" ></asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>1.Sat�� Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati1" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb1" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label><asp:Label ID="Label4" runat="server" >�ndirim(%):</asp:Label></label>
					<ew:NumericBox ID="txtIsk1" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>2.Sat�� Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati2" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb2" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label><asp:Label ID="Label6" runat="server" >�ndirim(%):</asp:Label></label>
					<ew:NumericBox ID="txtIsk2" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>3.Sat�� Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati3" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb3" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label><asp:Label ID="Label9" runat="server" >�ndirim(%):</asp:Label></label>
					<ew:NumericBox ID="txtIsk3" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>4.Sat�� Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" >0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb4" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label><asp:Label ID="Label11" runat="server" >�ndirim(%):</asp:Label></label>
					<ew:NumericBox ID="txtIsk4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colHalf">
					<label>5.Sat�� Fiyat� :</label>
					<ew:NumericBox ID="txtBSatisFiyati5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" >0</ew:NumericBox>
					<asp:DropDownList ID="ddlBPb5" runat="server" ></asp:DropDownList>
					</div>
					<div class="colTwo">
					<label><asp:Label ID="Label12" runat="server" >�ndirim(%):</asp:Label></label>
					<ew:NumericBox ID="txtIsk5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo colTriple">
					<label>En-Boy-Y�kseklik(cm) :</label>
					<ew:NumericBox ID="txtBEn" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " onChange="CalcHacim();">0</ew:NumericBox>
					<ew:NumericBox ID="txtBBoy" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " onChange="CalcHacim();">0</ew:NumericBox>
					<ew:NumericBox ID="txtBYukseklik" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " onChange="CalcHacim();">0</ew:NumericBox>
					</div>
					<div class="colTwo colBtn">
					<label>Desi :</label>
					<ew:NumericBox ID="txtBDesi" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" " PositiveNumber="True" DecimalPlaces="2">0</ew:NumericBox>
					<a href="javascript:CalcDesi();" class="btnDefault" title="Desi Hesapla">Desi Hesapla</a>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
					<label>A��rl�k(Kg) :</label>
					<ew:NumericBox ID="txtBAgirlik" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
					<div class="colTwo">
					<label>Hacim(cm�) :</label>
					<asp:TextBox ID="txtHacim" runat="server" BorderStyle="None" Enabled="False"></asp:TextBox>
					</div>
				</div>
			</div>
			</td>
			</tr>
			<tr visible="false" runat="server">
				<td>
				<label>A��klama :</label>
				<asp:TextBox ID="txtBAciklama" runat="server" MaxLength="254" Visible="False">1.Fiyat</asp:TextBox>
				</td>
			</tr>
			</table>
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