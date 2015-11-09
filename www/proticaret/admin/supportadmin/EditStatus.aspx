<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditStatus.aspx.vb" Inherits=".EditStatus1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title><%= GetGlobalResourceObject("admin","StatusEdit") %></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","StatusEdit") %></div>
		</div>
		<div class="toggleContent">
        	<asp:Label ID="lblErr" runat="server"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
            <div class="dataForm">
                <div class="row">
                    <div class="colTwo">
                        <label runat="server"><%= GetGlobalResourceObject("admin","StatusName") %> : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtDurum" ErrorMessage="<%$ Resources:admin,EnterStatusName %>">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtDurum" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="buttonGroup">
                <asp:Button ID="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
            </div>
        </div>
	</div>
</div>
</form>
</body>
</html>