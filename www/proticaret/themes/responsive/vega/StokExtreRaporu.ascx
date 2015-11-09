<%@ Control Language="vb" AutoEventWireup="false" Codebehind="StokExtreRaporu.ascx.vb" Inherits="ASPNetPortal.StokExtreRaporu" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
 
<BR>
<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label>
<asp:dropdownlist id="ddlFirmalar" runat="server" Width="204px" AutoPostBack="True" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
<BR>
&nbsp;
<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label>
<asp:dropdownlist id="ddlDonem" runat="server" AutoPostBack="True" Width="160px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist>
<BR>
<BR>
<asp:datagrid id="StokList" runat="server" Width="444px" AutoGenerateColumns="False" ShowFooter="True">
	<HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>		<PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
	<ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
	<AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
	<FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
	<Columns>
		<asp:BoundColumn DataField="IND" HeaderText="IND">
			<HeaderStyle Width="0px"></HeaderStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="STOKKODU" HeaderText="STOK KODU"></asp:BoundColumn>
		<asp:BoundColumn DataField="MALINCINSI" HeaderText="MALIN CINSI"></asp:BoundColumn>
		<%--<asp:HyperLinkColumn Text="GOSTER" Target="_blank" DataNavigateUrlField="IND" DataNavigateUrlFormatString="ViewReport.aspx?report=RpStokExtresi.aspx&amp;Mode=Print&amp;CIND={0}"
			HeaderText="RAPOR"></asp:HyperLinkColumn>--%>
        <asp:TemplateColumn HeaderText="RAPOR">
                <ItemTemplate>
                    <asp:HyperLink ID="hypedit" Target="_blank" NavigateUrl='<%# getThemePath() & "/vega/ViewReport.aspx?report=RpStokExtresi.aspx&amp;Mode=Print&amp;CIND=" & Container.DataItem("IND") %>' Text="GOSTER" runat="server" />
                </ItemTemplate>
            </asp:TemplateColumn>
	</Columns>
</asp:datagrid>
