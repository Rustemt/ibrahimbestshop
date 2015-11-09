<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="UcretBordrosu.ascx.vb" Inherits="ASPNetPortal.CUcretBordrosu" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>

<br>
<br>
<asp:Label ID="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:Label>
<asp:DropDownList ID="ddlFirmalar" runat="server" AutoPostBack="True" Width="204px" CssClass="Global_Normal_ComboBox"></asp:DropDownList>
<p>
    <asp:DataGrid ID="DgBordroList" runat="server" Width="540px" ShowFooter="True" AutoGenerateColumns="False">
        <HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>
        <PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
        <ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
        <AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
        <FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
        <Columns>
            <asp:BoundColumn DataField="TARIH" HeaderText="TARIH" DataFormatString="{0:d}"></asp:BoundColumn>
            <asp:BoundColumn DataField="ACIKLAMA" HeaderText="A&#199;IKLAMA"></asp:BoundColumn>
            <asp:BoundColumn DataField="YIL" HeaderText="YIL"></asp:BoundColumn>
            <asp:BoundColumn DataField="AY" HeaderText="AY"></asp:BoundColumn>
            <asp:BoundColumn DataField="SUBE" HeaderText="ÞUBE"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="RAPOR">
                <ItemTemplate>
                    <asp:HyperLink ID="hypedit" Target="_blank"  NavigateUrl='<%# getThemePath() & "/vega/ViewReport.aspx?report=RpUcretBordrosu.aspx&amp;Mode=Print&amp;BIND=" & Container.DataItem("IND") %>' Text="GOSTER" runat="server" />
                </ItemTemplate>
            </asp:TemplateColumn>
            <%--<asp:HyperLinkColumn Text="GOSTER" Target="_blank" DataNavigateUrlField="IND" DataNavigateUrlFormatString="/ViewReport.aspx?report=RpUcretBordrosu.aspx&amp;Mode=Print&amp;BIND={0}"--%>
            <%-- <asp:HyperLinkColumn Text="GOSTER" Target="_blank" DataNavigateUrlField="IND" NavigateUrl="<%# getThemePath() %>"  DataNavigateUrlFormatString='<%# getThemePath() %>ViewReport.aspx?report=RpUcretBordrosu.aspx&amp;Mode=Print&amp;BIND={0}'
                HeaderText="RAPOR"></asp:HyperLinkColumn>--%>
        </Columns>
    </asp:DataGrid>
</p>
