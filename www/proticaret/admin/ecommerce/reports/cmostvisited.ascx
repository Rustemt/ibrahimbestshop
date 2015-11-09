<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="CMostVisited" enableViewState="True" Codebehind="CMostVisited.ascx.vb" %>
<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%"
	border="0">
	<TR >
				<TD Class="Admin_Modul_Banner"><asp:label id="Label1" CssClass="Admin_Normal_Label" runat="server">En Çok Ýncelenenler</asp:label></TD>
	</TR>
	<TR align="center" >
				<TD>
			<TABLE id="Table3" cellSpacing="0" cellPadding="0" border="0" runat="server" >
				<TR>
					<TD vAlign="bottom" align="center"  width="81">
                        <br />
                        <asp:label id="Label5" CssClass="Admin_Modul_Label2" runat="server">Kullanýcý :</asp:label><asp:dropdownlist id="ddlCategories" CssClass="Admin_Normal_ComboBox" runat="server" Width="180px"></asp:dropdownlist></TD>
					<TD vAlign="bottom" align="center" ><br/>
					</TD>
					<TD vAlign="bottom" align="center" ><br/>
					</TD>
					<TD vAlign="bottom" align="center" ><br/>
					</TD>
					<TD vAlign="bottom" align="center" ><br/>
					</TD>
					<TD vAlign="bottom" align="center" ><asp:button id="btnSearch" CssClass="Admin_Normal_Buton" runat="server" Text="Listele"></asp:button></TD>
				</TR>
			</TABLE>
		</TD>
	</TR>
	<TR align="center">
				<TD><asp:datagrid id="MyList" runat="server" Width="949px" BorderWidth="0px" AutoGenerateColumns="False"
				cellpadding="4">
				<FooterStyle CssClass="Admin_TabloBaslik"></FooterStyle>
				<AlternatingItemStyle CssClass="Admin_TabloAlternatifSatir"></AlternatingItemStyle>
				<ItemStyle CssClass="Admin_TabloSatir"></ItemStyle>
				<HeaderStyle CssClass="Admin_TabloBaslik"></HeaderStyle>
				<Columns>
					<asp:TemplateColumn HeaderText="Miktar">
						<HeaderStyle Wrap="False" HorizontalAlign="Left"></HeaderStyle>
						<ItemStyle Wrap="False" HorizontalAlign="Left"></ItemStyle>
						<ItemTemplate>
							<asp:HyperLink id="Hyperlink1" runat="server" CssClass="Admin_Normal_Link" text='<%# container.dataitem("Total")  %>' NavigateUrl='<%# string.format("../store/product.aspx?ProductId={0}",container.dataitem("ProductId")) %>'>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn HeaderText="&#220;r&#252;n Adý">
						<HeaderStyle Wrap="False"></HeaderStyle>
						<ItemTemplate>
							<asp:HyperLink id="Hyperlink7" runat="server" CssClass="Admin_Normal_Link" text='<%# container.dataitem("ProductName")  %>' NavigateUrl='<%# string.format("../store/product.aspx?ProductId={0}",container.dataitem("ProductId")) %>'>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
				<PagerStyle CssClass="dataPager"></PagerStyle>
			</asp:datagrid></TD>
	</TR>
	<TR>
		<TD height="7"><asp:label id="msg" CssClass="Admin_HataMesaji" runat="server"></asp:label></TD>
		<TD height="7"></TD>
	</TR>
</TABLE>
<br/>  