<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="report.aspx.vb" Inherits="ASPNetPortal.report" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title><%= GetGlobalResourceObject("admin","MailReports") %></title>
</head>
<body>
<form id="form1" runat="server">
	<div class="pagePopup">
		<div class="boxToggle">
			<div class="toggleTitle">
				<div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","MailReports") %></div>
			</div>
			<div class="toggleContent">
				<div class="dataForm">
					<div class="row">
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin","CampainName") %>:</label>
							<label class="labelInput"><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></label>
						</div>
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin", "CampaignMailCount")%>:</label>
							<label class="labelInput"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></label>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin", "SentMailCount")%>:</label>
							<label class="labelInput"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></label>
						</div>
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin", "SentDate")%>:</label>
							<label class="labelInput"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></label>
						</div>
					</div>
					<div class="row">
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin", "ClickCount")%>:</label>
							<label class="labelInput"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></label>
						</div>
						<div class="colTwo">
							<label runat="server"><%= GetGlobalResourceObject("admin", "ComplaintCount")%>:</label>
							<label class="labelInput"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></label>
						</div>
					</div>
				</div>
				<div>
		<div>
			<asp:Label ID="lblScript" runat="server" />
			<asp:Label ID="lblScriptClicked" runat="server" />
			<asp:Label ID="lblScriptOpenAndClick" runat="server" />
			<asp:Label ID="lblScriptBounce" runat="server" />
			<asp:Label ID="lblScriptSendAndBounce" runat="server" />
			<asp:Label ID="lblScriptSendAndComplaint" runat="server" />
		</div>
		<div>
			<div id='reportGraph' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='reportTable' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='ClickedGraph'style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='ClickedTable' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='openedAndClickedGraph' style="margin: 0 auto; width: 800px;"></div>
			<div id='openedAndClickedTable' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='bounceGraph' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='bounceTable' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='sendAndBounceGraph' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='sendAndBounceTable' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='sendAndComplaintGraph' style="margin: 0 auto; width: 800px;"></div>
			<br />
			<div id='sendAndComplaintTable' style="margin: 0 auto; width: 800px;"></div>
		</div>
	</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>
