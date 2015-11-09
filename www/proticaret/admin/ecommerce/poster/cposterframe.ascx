<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cposterframe" CodeBehind="cposterframe.ascx.vb" %>
<div class="pagePosterFrame">
	<asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
	<asp:Label ID="lblSort" runat="server" Visible="False">Id DESC</asp:Label>
	
	<div class="buttonGroup">
		<asp:HyperLink ID="lnkAddNew" runat="server"  CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
	</div>
	
	<div class="dataTable">
		<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowSorting="true" AutoGenerateColumns="False" HeaderStyle-CssClass="title">
			<Columns>
			<asp:BoundColumn Visible="False" DataField="ID" HeaderText="IND"></asp:BoundColumn>
                 <asp:TemplateColumn SortExpression="FrameCode" HeaderText="<%$ Resources:admin,Code %>">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/poster/editframe.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 & ""%> '><%#Eval("FrameCode")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Preview %>">
			<ItemTemplate>
				<table border="0" align="center" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><img src="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/01.gif"></td>
							<td background="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/02.gif"></td>
							<td><img src="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/03.gif"></td>
						</tr>
						<tr>
							<td background="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/04.gif"></td>
							<td align="center" bgcolor="#336699"><img src="/store/makethumb.aspx?file=image.gif&intSize=30" vspace="4" hspace="4"></td>
							<td background="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/05.gif"></td>
						</tr>
						<tr>
							<td><img src="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/06.gif"></td>
							<td background="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/07.gif"></td>
							<td><img src="/uploads/poster/frames/<%#DataBinder.Eval(Container.DataItem,"FrameCode")%>/08.gif"></td>
						</tr>
					</tbody>
				</table>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn SortExpression="ShowOrder" DataField="ShowOrder" HeaderText="<%$ Resources:admin,ShowOrder %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:BoundColumn SortExpression="FrameProperty" DataField="FrameProperty" HeaderText="<%$ Resources:admin,FrameProperty %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:BoundColumn SortExpression="Material" DataField="Material" HeaderText="<%$ Resources:admin,Material %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:BoundColumn SortExpression="Type" DataField="Type" HeaderText="<%$ Resources:admin,Color %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:BoundColumn SortExpression="Width" DataField="Width" HeaderText="<%$ Resources:admin,Width %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:BoundColumn SortExpression="Thickness" DataField="Thickness" HeaderText="<%$ Resources:admin,Thickness %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,FramePricecm %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
				<ItemTemplate><%# DataBinder.Eval(Container.DataItem,"PricePerCm") %> TL</ItemTemplate>
			</asp:TemplateColumn>
			<%--
			<asp:BoundColumn DataField="PricePerCm" HeaderText="Fiyatý(cm)"></asp:BoundColumn>
			--%>
                  <asp:TemplateColumn HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>" SortExpression="IsActive" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblIsActive" runat="server" Text='<%#  IIf(DataBinder.Eval(Container.DataItem, "IsActive"), "Aktif", "Pasif") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Edit %>" Visible="false">
			<ItemTemplate>
				<asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/poster/editframe.aspx?IND=" & DataBinder.Eval(Container.DataItem, "Id") & "&MID=" & 0 & ""%> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Edit") %></asp:HyperLink>
			</ItemTemplate>
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>">
			<ItemTemplate>
				<asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
			</ItemTemplate>
			</asp:TemplateColumn>
			</Columns>
		</asp:DataGrid>
	</div>
</div>
