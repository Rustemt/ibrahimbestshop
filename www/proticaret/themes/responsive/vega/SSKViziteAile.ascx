<%@ Control Language="vb" AutoEventWireup="false" Codebehind="SSKViziteAile.ascx.vb" Inherits="ASPNetPortal.SSKViziteAile" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<P><BR>
	<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label><asp:dropdownlist id="ddlFirmalar" runat="server" AutoPostBack="True" Width="204px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
	<BR>
	<asp:panel id="pnlPer" runat="server">
		<asp:label id="Label1" runat="server" CssClass="Global_Normal_Label">Personel Bilgileri:</asp:label>
		<asp:datagrid id="DgPersonelList" runat="server" Width="444px" ShowFooter="True" AutoGenerateColumns="False">
			<HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>		<PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
			<ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
			<AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
			<FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
			<Columns>
				<asp:BoundColumn DataField="IND" HeaderText="IND">
					<HeaderStyle Width="0px"></HeaderStyle>
				</asp:BoundColumn>
				<asp:BoundColumn DataField="AD" HeaderText="ADI"></asp:BoundColumn>
				<asp:BoundColumn DataField="SOYAD" HeaderText="SOYADI"></asp:BoundColumn>
				<asp:BoundColumn DataField="SUBEAD" HeaderText="SUBE ADI"></asp:BoundColumn>
				<asp:ButtonColumn Text="Aile Fertlerinden Se&#231;" CommandName="Select"></asp:ButtonColumn>
			</Columns>
		</asp:datagrid>
	</asp:panel></P>
<asp:panel id="pnlFert" runat="server">
	<TABLE id="tblSecim" height="32" cellSpacing="0" cellPadding="0" width="444" border="1"
		runat="server">
		<TR>
			<TD  width="133">
				<asp:Label id="Label5" runat="server" CssClass="Global_Normal_Label">Personel Bilgileri :</asp:Label></TD>
			<TD  align="right" colSpan="5">
				<asp:LinkButton id="btnSelectPer" runat="server">Personel Seç</asp:LinkButton></TD>
		</TR>
		<TR>
			<TD width="133">
				<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Adý:</asp:label>
				<asp:label id="lblAd" runat="server" CssClass="Global_Normal_Label"></asp:label></TD>
			<TD width="152">&nbsp;
				<asp:label id="Label2" runat="server" CssClass="Global_Normal_Label">Soyadý: </asp:label>
				<asp:label id="lblSoyad" runat="server" CssClass="Global_Normal_Label"></asp:label></TD>
			<TD>
				<asp:label id="Label6" runat="server" CssClass="Global_Normal_Label">Þube: </asp:label>
				<asp:label id="lblSube" runat="server" CssClass="Global_Normal_Label"></asp:label></TD>
		</TR>
	</TABLE>
	<BR>
	<asp:label id="Label4" runat="server" CssClass="Global_Normal_Label">Aile Fertleri:</asp:label>
	<asp:datagrid id="dgFertler" runat="server" Width="444px" ShowFooter="True" AutoGenerateColumns="False">
		<HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>		<PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
	<ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
	<AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle> 
	<FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
		<Columns>
			<asp:BoundColumn DataField="IND" HeaderText="IND">
				<HeaderStyle Width="0px"></HeaderStyle>
			</asp:BoundColumn>
			<asp:BoundColumn DataField="AD" HeaderText="ADI"></asp:BoundColumn>
			<asp:BoundColumn DataField="SOYAD" HeaderText="SOYADI"></asp:BoundColumn>
			<asp:BoundColumn DataField="YAKINLIK" HeaderText="YAKINLIK"></asp:BoundColumn>
			<%--<asp:HyperLinkColumn Text="GOSTER" Target="_blank" DataNavigateUrlField="IND" DataNavigateUrlFormatString="ViewReport.aspx?report=RpSskViziteAile.aspx&amp;Mode=Print&amp;PFIND={0}"
				HeaderText="RAPOR"></asp:HyperLinkColumn>--%>
             <asp:TemplateColumn HeaderText="RAPOR">
                <ItemTemplate>
                    <asp:HyperLink ID="hypedit" Target="_blank" NavigateUrl='<%# getThemePath() & "/vega/ViewReport.aspx?report=RpSskViziteAile.aspx&amp;Mode=Print&amp;PFIND=" & Container.DataItem("IND") %>' Text="GOSTER" runat="server" />
                </ItemTemplate>
            </asp:TemplateColumn>
		</Columns>
	</asp:datagrid>
</asp:panel>
