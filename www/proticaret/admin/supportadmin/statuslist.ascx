<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="statuslist.ascx.vb" Inherits=".statuslist1" %>
<div class="pageSupportStatus">
	<asp:Label ID="lblerr" runat="server"></asp:Label>
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent" NavigateUrl="/admin/supportadmin/EditStatus.aspx?IND=0"><i class="fa fa-plus"></i> <%=GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	<div class="dataTable">
		<asp:DataGrid ID="stList" runat="server" GridLines="None" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>                     
				<asp:BoundColumn DataField="SupportStatusId" HeaderText="IND" Visible="false" ></asp:BoundColumn> 
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,StatusName %>">
					<ItemTemplate>
						<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/supportadmin/EditStatus.aspx?IND=" & DataBinder.Eval(Container.DataItem, "SupportStatusId") & "&MID=" & 0 & ""%> '><%# Eval("SupportStatusName")%></asp:HyperLink>
					</ItemTemplate>
				</asp:TemplateColumn>
				<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate>
					<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"  ><i class="fa fa-trash-o"></i></asp:LinkButton>
				</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>
<script type="text/javascript">
    var newwindow;
    function popup(url) {
        newwindow = window.open(url, 'name', 'width=350,height=150,scrollbars=1,toolbar=0,status=1,resizable=1');
        if (window.focus) { newwindow.focus() }
    }
</script>