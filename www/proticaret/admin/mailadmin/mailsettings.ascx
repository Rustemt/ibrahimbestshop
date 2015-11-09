<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="mailsettings.ascx.vb" Inherits=".mailsettings" %>
<div class="pageMailSettings">
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label> 
	<div class="dataForm">
		<div class="row">
			<div class="col1-3">
				<div class="row">
					<div class="colOne">
						<label><%= GetGlobalResourceObject("admin", "SenderName")%></label>
						<asp:TextBox runat="server" ID="txtFromName"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label>Mail Smtp Server </label>
						<asp:TextBox runat="server" ID="txtMailSmtpServer"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label>Mail Smtp Port </label>
						<asp:TextBox runat="server" ID="txtServerSmtpPort"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "UserName")%></label>
						<asp:TextBox runat="server" ID="txtMailUserName"></asp:TextBox>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MailPassword")%></label>
						<asp:TextBox runat="server" ID="txtMailPassword"></asp:TextBox>
					</div>
				</div>
				<div class="row">
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "MailSSL")%> ? </label>
						<asp:DropDownList runat="server" ID="ddlServerUseSsl">
							<asp:ListItem Text="<%$ Resources:admin,Active %>" Value="True"></asp:ListItem>
							<asp:ListItem Selected="True" Text="<%$ Resources:admin,Passive %>" Value="False"></asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="colTwo">
						<label><%=GetGlobalResourceObject("admin", "DoNotWantToReceiveEMailFeatureActiveOrPassive")%> ?</label>
						<asp:DropDownList runat="server" ID="ddlActive">
							<asp:ListItem Selected="True" Text="<%$ Resources:admin,Active %>" Value="True"></asp:ListItem>
							<asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="False"></asp:ListItem>
						</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="colOne">
						<label>&nbsp;</label>
						<asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>