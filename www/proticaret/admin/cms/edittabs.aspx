<%@ Page Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.edittabs" Codebehind="edittabs.aspx.vb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
<title><%=GetGlobalResourceObject("admin", "ThemesBackUp")%></title>
</head>
<body>
<form id="Form1" method="post" runat="server">
<div class="pagePopup">
	<div class="boxToggle">
		<div class="toggleTitle">
			<div class="titleText">Tema Yedekleme</div>
		</div>
		<div class="toggleContent" runat="server">
			<div id="BackupAlert" visible="false" runat="server" class="alert alert-info"><asp:Label ID="lblBackupInfo" runat="Server" EnableViewState="False"></asp:Label></div>
			<%=GetGlobalResourceObject("admin", "Themes")%> : <asp:Label ID="lblTemplate" runat="Server" Font-Bold="true"></asp:Label>
			<p><asp:LinkButton ID="btnBackup"  runat="server" CssClass="btnDefault"><i class="fa fa-copy"></i> <%=GetGlobalResourceObject("admin","BackUp") %></asp:LinkButton></p>
			
			<p runat="server"><b><%=GetGlobalResourceObject("admin", "PreviouslyReceivedReserves")%></b></p>
			<div id="RestoreAlert" visible="false" runat="server" class="alert"><asp:Label ID="lblRestoreInfo" runat="Server" EnableViewState="False"></asp:Label></div>
			
			<div class="dataTable">
				<asp:DataGrid ID="dg" runat="server" GridLines="None" PageSize="20" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
					<Columns>
					<asp:BoundColumn DataField="Name" Visible="false"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="<%$ Resources:admin,FileName %>">
						<ItemTemplate>
							<asp:HyperLink ID="lnkdownload" runat="Server" NavigateUrl='<%# "/themes/" & DataBinder.Eval(Container, "DataItem.Name") %> '> <%# DataBinder.Eval(Container, "DataItem.Name") %> </asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="<%$ Resources:admin,Restore %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnRestore" runat="server" CssClass="btnIcon"   CausesValidation="false" CommandName="Update"><i class="fa fa-clock-o"></i></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="<%$ Resources:admin,DeleteFile %>"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
						<ItemTemplate>
							<asp:LinkButton ID="lnkbtnDelete" runat="server" CssClass="btnIcon"  CausesValidation="false" CommandName="Delete"><i class="fa fa-trash-o"></i></asp:LinkButton>
						</ItemTemplate>
					</asp:TemplateColumn>
					</Columns>
					<PagerStyle CssClass="dataPager"></PagerStyle>
				</asp:DataGrid>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>