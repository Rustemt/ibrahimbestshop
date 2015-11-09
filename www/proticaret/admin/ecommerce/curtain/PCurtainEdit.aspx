<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PCurtainEdit.aspx.vb" Inherits=".PCurtainEdit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Perde Ölçü Tanımları</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Perde Ölçü Tanımları</div>
		</div>
		<div class="toggleContent">
			<asp:Label Text="" ID="lbl" runat="server" />
			<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
			<asp:Panel ID="pnlCurtainAdd" runat="server">
				<asp:Label ID="lblAddError" runat="server"></asp:Label>
				<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblype">
				<tr>
				<td>
				<div class="dataForm">
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "PropertyName")%> :</label>
							<asp:TextBox ID="txtAddCurtainName" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label>&nbsp;</label>
							<label class="labelInput"><asp:CheckBox ID="cbAddCurtainActive" runat="server" /> <%=GetGlobalResourceObject("admin", "PropertyActive")%></label>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute1")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt1" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute2")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt2" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute3")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt3" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute4")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt4" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute5")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt5" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute6")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt6" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute7")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt7" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute8")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt8" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute9")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt9" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute10")%> :</label>
							<asp:TextBox ID="txtAddCurtainOpt10" runat="server"></asp:TextBox>
						</div>
					</div>
				</div>
				<div class="buttonGroup">
					<asp:Button ID="btnCurtainAddSave" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Add %>" />
					<asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" />
				</div>
				</td>
				</tr>
				</table>
			</asp:Panel>
			<asp:Panel ID="pnlCurtainEdit" runat="server">
				<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server" id="tblType">
				<tr>
				<td>
				<div class="dataForm">
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "PropertyName")%> :</label>
							<asp:TextBox ID="txtEditCurtainName" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label>&nbsp;</label>
							<label class="labelInput"><asp:CheckBox ID="cbEditCurtainActive" runat="server" /> <%=GetGlobalResourceObject("admin", "PropertyActive")%></label>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute1")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt1" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute2")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt2" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute3")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt3" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute4")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt4" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute5")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt5" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute6")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt6" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute7")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt7" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute8")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt8" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute9")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt9" runat="server"></asp:TextBox>
						</div>
						<div class="colTwo">
							<label><%=GetGlobalResourceObject("admin", "Attribute10")%> :</label>
							<asp:TextBox ID="txtEditCurtainOpt10" runat="server"></asp:TextBox>
						</div>
					</div>
				</div>
				<div class="buttonGroup">
					<asp:Button ID="btnCurtainEditUpdate" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Save %>" />
					<asp:Button ID="btnCancel2" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Close %>" />
				</div>
				</td>
				</tr>
				</table>
			</asp:Panel>
		</div>
	</div>
</div>
</form>
</body>
</html>