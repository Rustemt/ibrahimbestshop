<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditCategory.aspx.vb" Inherits=".EditCategory1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%= GetGlobalResourceObject("admin","CategoryEdit") %></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","CategoryEdit") %></div>
		</div>
		<div class="toggleContent">
        	<asp:Label ID="lblErr" runat="server"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
        	<div class="dataForm">
                <div class="row">
                    <div class="colTwo">
                    	<label runat="server"><%= GetGlobalResourceObject("admin","CategoryName") %> : <asp:RequiredFieldValidator ID="rq1" runat="server" ControlToValidate="txtCategory" ErrorMessage="<%$ Resources:admin,EnterCategoryName %>">*</asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
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
