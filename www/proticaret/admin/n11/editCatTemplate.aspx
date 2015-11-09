<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editCatTemplate.aspx.vb" Inherits="ASPNetPortal.editCatTemplate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
		<title><%= GetGlobalResourceObject("admin","DeliveryTemplateEdit") %></title>
</head>
<body>
<form id="Form1" runat="server">
 <div class="pagePopup pageProductEdit">
        <div class="boxToggle">
            <div class="toggleTitle toggleMini">
                <div class="titleText"><label runat="server"><%= GetGlobalResourceObject("admin","DeliveryTemplateEdit") %> :</label></div>
            </div>
            <div class="toggleContent">
            	<div class="dataForm">
                    <div class="row">
                        <div class="colOne">
                            <label runat="server"><%= GetGlobalResourceObject("admin","StatusEdit") %></label>
                            <asp:DropDownList id="ddlTemplateName" runat="server" ></asp:DropDownList>
                        </div>
                        <div class="buttonGroup">
                        	<label><asp:label id="lblErr" runat="server"></asp:label></label>
                            <asp:button id="btnAdd" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:button>
                            <asp:Button id="btnCancel" runat="server" Text="<%$ Resources:admin,Cancel %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                            <asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <div>
  

</div>
</form>
  <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>