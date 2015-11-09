<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.logdetails" CodeBehind="logdetails.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "LogDetail")%></title>
</head>
<body>
<form id="Form1" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Log Detayý</div>
		</div>
		<div class="toggleContent" runat="server">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label>IND :</label>
                            <label class="labelInput"><asp:Label ID="lblEventId" runat="server"></asp:Label></label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "LogDate2")%> :</label>
                            <label class="labelInput"><asp:Label ID="lblLogDateTime" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                        <label><%=GetGlobalResourceObject("admin", "Source")%> :</label>
                        <label class="labelInput"><asp:Label ID="lblSource" runat="server"></asp:Label></label>
                        </div>
                        <div class="colTwo">
                        <label>Form :</label>
                        <label class="labelInput"><asp:Label ID="lblForm" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                        <label>Query String :</label>
                        <label class="labelInput"><asp:Label ID="lblQueryString" runat="server"></asp:Label></label>
                        </div>
                        <div class="colTwo">
                        <label>Target :</label>
                        <label class="labelInput"><asp:Label ID="lblTarget" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="row">
                    	<div class="colTwo">
                        <label>Ip :</label>
                        <label class="labelInput"><asp:Label ID="lblIp" runat="server"></asp:Label></label>
                        </div>
                        <div class="colTwo">
                        <label>Referer :</label>
                        <label class="labelInput"><asp:Label ID="lblReferer" runat="server"></asp:Label></label>
                        </div>
                    </div>
                    <div class="row">
                         <div class="colOne">
                        <label>Trace :</label>
                        <asp:Label ID="lblTrace" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="colOne">
                        <label><%=GetGlobalResourceObject("admin", "Message")%> :</label>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="buttonGroup">
                <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                </div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>