<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.editframe" CodeBehind="editframe.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title>Çerçeve Düzenle</title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Çerçeve Düzenle</div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lblErr" runat="server"></asp:Label>
			<asp:Label ID="lbl" runat="server"></asp:Label>
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<div class="row">
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "FrameCode")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCode"  ErrorMessage="<%$ Resources:admin,FrameCodeMsg1 %>">*</asp:RequiredFieldValidator></label>
						<asp:DropDownList runat="server" ID="ddlCode" ></asp:DropDownList>
                        <a href="javascript:void(0)" runat="server" class="btnDefault" onclick="popupWindow(610,420,50,'/admin/ecommerce/poster/addframe.aspx?','popup');"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></a>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameProperty2")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtproperty" ErrorMessage="Çerçeve Modeli Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtproperty" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Material")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMaterial" ErrorMessage="Çerçeve Malzemesi Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtMaterial" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FrameColorName")%> :</label>
						<asp:TextBox ID="txtRenk" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Active")%> :</label>
						<label class="labelInput"><asp:CheckBox ID="chkIsActive" runat="server" Checked="True" /> Aktif/Pasif</label>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
						<ew:NumericBox ID="txtShowOrder" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" MaxLength="2">1</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Width")%> (cm) :</label>
						<ew:NumericBox ID="txtWidth" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "Thickness")%>  (cm) :</label>
						<ew:NumericBox ID="txtThich" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FramePricecm")%> : TL</label>
						<ew:NumericBox ID="txtFiyat" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
					</div>
				</div>
				<div class="row">
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr>
					<td id="tdframe" runat="server" visible="false">
						<div class="colTwo">
						<label><asp:Label ID="Label10" runat="server" Width="52px"><%=GetGlobalResourceObject("admin", "FramePreview")%></asp:Label></label>
						<table border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td><img src="/uploads/poster/frames/<%=frameid%>/01.gif"></td>
								<td background="/uploads/poster/frames/<%=frameid%>/02.gif"></td>
								<td><img src="/uploads/poster/frames/<%=frameid%>/03.gif"></td>
							</tr>
							<tr>
								<td background="/uploads/poster/frames/<%=frameid%>/04.gif"></td>
								<td align="center" bgcolor="#336699"><img src="/store/makethumb.aspx?file=image.gif&intSize=60" vspace="4" hspace="4"></td>
								<td background="/uploads/poster/frames/<%=frameid%>/05.gif"></td>
							</tr>
							<tr>
								<td><img src="/uploads/poster/frames/<%=frameid%>/06.gif"></td>
								<td background="/uploads/poster/frames/<%=frameid%>/07.gif"></td>
								<td><img src="/uploads/poster/frames/<%=frameid%>/08.gif"></td>
							</tr>
						</table>
						</div>
					</td>
					<td id="tdthumb" runat="server" visible="false">
					<div class="colTwo">
					<label><asp:Label ID="Label11" runat="server" Width="52px"><%=GetGlobalResourceObject("admin", "SelectionPreview")%></asp:Label></label>
					<img alt="" src="/uploads/poster/frames/<%=frameid%>/thumbnail.gif" width="100" height="100" />
					</div>
					</td>
					</tr>
					</table>
				</div>
			</div>
			</td>
			</tr>
			</table>
			<div class="buttonGroup">
				<asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
				<asp:Button ID="btnCancel" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>"></asp:Button>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>