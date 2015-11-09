<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="salesmanprim.ascx.vb" Inherits="ASPNetPortal.salesmanprim" %>
<div class="pageSalesmanPrim">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<div class="dataTable">
		<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
			<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
			<Columns>
				<asp:BoundColumn DataField="PlasiyerId" HeaderText="IND" Visible="false" ></asp:BoundColumn>
				<asp:BoundColumn DataField="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Prim" HeaderText="<%$ Resources:admin,BonusRate %>"></asp:BoundColumn>
				<asp:BoundColumn DataField="Toplam" DataFormatString="{0:###,###.00} TL" HeaderText="<%$ Resources:admin,TotalBonus %>"></asp:BoundColumn>
			</Columns>
		</asp:DataGrid>
	</div>
	<div class="dataCount">
		<ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%>:<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%>:<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>:<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
		</ul>
	</div>
</div>
