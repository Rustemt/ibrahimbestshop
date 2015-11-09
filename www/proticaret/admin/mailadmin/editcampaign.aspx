<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editcampaign.aspx.vb" Inherits="ASPNetPortal.editcampaign" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "CampaignEdit")%></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%=GetGlobalResourceObject("admin", "CampaignEdit")%></div>
		</div>
		<div class="toggleContent">
			<asp:Label ID="lbl" runat="server" ></asp:Label>
			<div class="alert alert-info" runat="server" id="alert2" visible="false" ><asp:Label ID="lblErr" runat="server"></asp:Label></div>
			<div id="alert" runat="server" class="alert alert-info" visible="false"><asp:Label ID="lblError" Font-Bold="true" runat="Server" EnableViewState="False"></asp:Label></div>
			
			<div class="dataForm">
				<div class="row">
					<div class="colOne">
						<label runat="server"><%=GetGlobalResourceObject("admin", "CampainName")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCmpName" ErrorMessage="Kampanya Adı Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtCmpName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label runat="server"><%=GetGlobalResourceObject("admin", "Subject")%> : <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject" ErrorMessage="Konu Girmelisiniz.">*</asp:RequiredFieldValidator></label>
						<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label runat="server"><%=GetGlobalResourceObject("admin", "FromEmail")%> :</label>
						<asp:TextBox ID="txtFromName" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label runat="server">Görünen Mail :</label>
						<asp:TextBox ID="txtFromMail" runat="server"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label runat="server"><%=GetGlobalResourceObject("admin", "ReplyEmail")%> :</label>
						<asp:TextBox ID="txtResMail" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>HTML Mail</label>
						<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" EnableViewState="false" Height="500px" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<div class="buttonGroup">
							<asp:LinkButton ID="btnAdd" runat="server"   CssClass="btnDefault"><i class="fa fa-floppy-o"></i> <%= GetGlobalResourceObject("admin","Save") %></asp:LinkButton>
							<asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>