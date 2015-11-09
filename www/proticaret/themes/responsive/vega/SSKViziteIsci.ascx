<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="SSKViziteIsci.ascx.vb" Inherits="ASPNetPortal.SSKViziteIsci" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<p>
    <br>
    <asp:Label ID="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:Label><asp:DropDownList ID="ddlFirmalar" runat="server" Width="204px" AutoPostBack="True" CssClass="Global_Normal_ComboBox"></asp:DropDownList><br>
    <br>
    <asp:DataGrid ID="DgPersonelList" runat="server" Width="444px" AutoGenerateColumns="False" ShowFooter="True">
        <HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>
        <PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
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
            <%--			<asp:HyperLinkColumn Text="GOSTER" Target="_blank" DataNavigateUrlField="IND" DataNavigateUrlFormatString="ViewReport.aspx?report=RpSskViziteIsci.aspx&amp;Mode=Print&amp;PIND={0}"
				HeaderText="RAPOR"></asp:HyperLinkColumn>--%>
            <asp:TemplateColumn HeaderText="RAPOR">
                <ItemTemplate>
                    <asp:HyperLink ID="hypedit" Target="_blank" NavigateUrl='<%# getThemePath() & "/vega/ViewReport.aspx?report=RpSskViziteIsci.aspx&amp;Mode=Print&amp;PIND=" & Container.DataItem("IND") %>' Text="GOSTER" runat="server" />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
    </asp:DataGrid>
</p>
