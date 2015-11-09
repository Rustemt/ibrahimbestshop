<%@ Page AutoEventWireup="false" CodeBehind="editmail.aspx.vb" Inherits="ASPNetPortal.editmail" Language="vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title><%= GetGlobalResourceObject("admin","AddNeworEditEmail") %></title>
</head>
<body>
<form id="form1" runat="server">
<div id="editMail" class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","AddNeworEditEmail") %></div>
		</div>
		<div class="toggleContent">
        	<asp:Label ID="lbl" runat="server"></asp:Label>
			<div class="dataForm">
                <div class="row">
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailPopServer") %> <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtMailServer" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtMailServer"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailSmtpServer") %> <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtMailSmtpServer" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtMailSmtpServer"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailSmtpPort") %>  <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtServerSmtpPort" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtServerSmtpPort"></asp:TextBox>
                    </div>
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailPop3Port") %> <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtServerPop3Port" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtServerPop3Port"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailSsl") %> </label>
                        <asp:DropDownList runat="server" ID="ddlServerUseSsl">
                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailUserName") %> <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtMailUserName" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtMailUserName"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","EmailPassword") %> <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="txtMailPassword" runat="server" /></label>
                        <asp:TextBox runat="server" ID="txtMailPassword" ></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="buttonGroup">
                <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault" />
                <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CssClass="btnDefault" />
            </div>
        </div>
	</div>
</div>

</form>
</body>
</html>
