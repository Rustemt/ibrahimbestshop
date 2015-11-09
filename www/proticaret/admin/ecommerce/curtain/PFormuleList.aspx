<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PFormuleList.aspx.vb" Inherits=".PFormuleList" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Formül Ekranı</title>
</head>
<body>
<form id="form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Formül Ekranı</div>
		</div>
		<div class="toggleContent">
			<table width="100%" cellspacing="0" cellpadding="0" border="0" runat="server">
			<tr>
			<td>
			<div class="dataForm">
				<asp:Label ID="lbl" runat="server" Text="" />
				<p><asp:Label ID="lblTitle" runat="server"></asp:Label></p>
				
				<div class="row">
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt1" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt1" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt2" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt2" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt3" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt3" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt4" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt4" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt5" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt5" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt6" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt6" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt7" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt7" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt8" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt8" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt9" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt9" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<asp:TextBox ID="txtOpt10" runat="server" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnOpt10" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo colBtn">
						<label>&nbsp;</label>
						<asp:TextBox ID="txtTotal" runat="server" Text="<%$ Resources:admin,UnitPrice %>" Enabled="false" ReadOnly="True"></asp:TextBox>
						<asp:Button ID="btnTotal" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
					<div class="colTwo colBtn">
						<label><%=GetGlobalResourceObject("admin", "FixedValue")%> :</label>
						<asp:TextBox ID="txtOpsOpt" runat="server"></asp:TextBox>
						<cc1:FilteredTextBoxExtender ID="txtOpsOpt_FilteredTextBoxExtender" runat="server" Enabled="True" TargetControlID="txtOpsOpt" ValidChars="1234567890."></cc1:FilteredTextBoxExtender>
						<asp:Button ID="btnOpsOpt" runat="server" Text="<%$ Resources:admin,Add %>" CssClass="btnDefault" CausesValidation="False" />
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<div class="buttonGroup" style="margin:0;">
							<asp:Button ID="btnTopla" runat="server" Text="+" Font-Bold="True" Width="50px" CssClass="btnDefault" CausesValidation="False" />
							<asp:Button ID="btnCikar" runat="server" Text="-" Font-Bold="True" Width="50px" CssClass="btnDefault" CausesValidation="False" />
							<asp:Button ID="btnCarpma" runat="server" Text="*" Font-Bold="True" Width="50px" CssClass="btnDefault" CausesValidation="False" />
							<asp:Button ID="btnBol" runat="server" Text="/" Font-Bold="True" Width="50px" CssClass="btnDefault" CausesValidation="False" />
						</div>
					</div>
					<div class="colTwo">
						<asp:Label ID="lblFormul" runat="server" Font-Bold="True" Font-Size="24px" ForeColor="#000099"></asp:Label>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "FormulaName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFormuleName" ErrorMessage="*" ValidationGroup="aa"></asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtFormuleName" runat="server"></asp:TextBox>
					</div>
				</div>
				
				<p>* <%=GetGlobalResourceObject("admin", "FormulaMsg1")%></p>
				
				<div class="buttonGroup">
					<asp:Button ID="btnAddFormule" runat="server" ValidationGroup="aa" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>" />
					<asp:Button ID="btnClear" runat="server" CausesValidation="False" CssClass="btnDefault" Text="<%$ Resources:admin,Clear %>" />
				</div>
			</div>
			</td>
			</tr>
			</table>			
		</div>
	</div>
</div>
</form>
</body>
</html>