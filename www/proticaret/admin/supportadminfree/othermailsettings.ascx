<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="othermailsettings.ascx.vb" Inherits=".othermailsettings" %>
<div class="pageSupportFreeSettings">
	<asp:Label ID="lblerr" runat="server"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="g1" runat="server" GridLines="None" AllowSorting="True" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>
				<asp:BoundColumn DataField="MailId" HeaderText="<%$ Resources:admin,EmailID %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailPopServer" HeaderText="<%$ Resources:admin,EmailPopServer %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailSmtpServer" HeaderText="<%$ Resources:admin,EmailSmtpServer %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailSmtpPort" HeaderText="<%$ Resources:admin,EmailSmtpPort %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailPop3Port" HeaderText="<%$ Resources:admin,EmailPop3Port %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailSsl" HeaderText="<%$ Resources:admin,EmailSsl %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="MailUserName" HeaderText="<%$ Resources:admin,EmailUserName %>"></asp:BoundColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:HyperLink ID="hypEditDetay" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/supportadminfree/editmail.aspx?IND=" & DataBinder.Eval(Container.DataItem, "MailId") & ""%> '><i class="fa fa-pencil"></i> </asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" >
					<ItemTemplate>
						<asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnIcon" ><i class="fa fa-trash-o"></i></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>

