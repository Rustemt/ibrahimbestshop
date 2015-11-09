<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="HesapPusulasi.ascx.vb" Inherits="ASPNetPortal.HesapPusulasi" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>

<br>
<asp:Label ID="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:Label>
<asp:DropDownList ID="ddlFirmalar" runat="server" AutoPostBack="True" Width="204px" CssClass="Global_Normal_ComboBox"></asp:DropDownList>
<br>
<br>
<table id="pnl1" height="38" cellspacing="0" cellpadding="0" width="432" border="0" runat="server">
    <tr>
        <td height="18">
            <asp:Label ID="Label3" runat="server" CssClass="Global_Normal_Label">Lütfen Bordro seçiniz.</asp:Label></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Width="70px" CssClass="Global_Normal_Label"> Bordrolar:</asp:Label><asp:DropDownList ID="BordroList" runat="server" AutoPostBack="True" Width="356px" CssClass="Global_Normal_ComboBox"></asp:DropDownList></td>
    </tr>
</table>
<br>
<asp:Label ID="msg" runat="server" Visible="False" CssClass="Global_HataMesaji">* Rapor almak için en az bir personel seçmelisiniz.</asp:Label>
<br>
<table id="pnl2" height="51" cellspacing="0" cellpadding="0" width="444" border="0" runat="server">
    <tr>
        <td colspan="3">
            <asp:Label ID="Label2" runat="server" CssClass="Global_Normal_Label">Lütfen Rapor alacaðýnýz personeli seçiniz.</asp:Label></td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:DataGrid ID="DgPusulaList" runat="server" Width="444px" ShowFooter="True" AutoGenerateColumns="False">
                <HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>
                <PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
                <ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
                <AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
                <FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
                <Columns>
                    <asp:TemplateColumn Visible="False" HeaderText="SE&#199;ÝM">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chk"></asp:CheckBox>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="PERSONELIND" HeaderText="PERSONELIND">
                        <HeaderStyle Width="0px"></HeaderStyle>
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="SSKSICILNO" HeaderText="SSK SÝCÝL NO"></asp:BoundColumn>
                    <asp:BoundColumn DataField="AD" HeaderText="AD"></asp:BoundColumn>
                    <asp:BoundColumn DataField="SOYAD" HeaderText="SOYAD"></asp:BoundColumn>
                    <%-- <asp:HyperLinkColumn Text="G&#214;STER" Target="_blank" DataNavigateUrlField="PERSONELIND" DataNavigateUrlFormatString="ViewReport.aspx?report=RpHesapPusulasi.aspx&amp;Mode=Print&amp;PIND={0}"
                        HeaderText="RAPOR"></asp:HyperLinkColumn>--%>
                    <asp:TemplateColumn HeaderText="RAPOR">
                        <ItemTemplate>
                            <asp:HyperLink ID="hypedit" Target="_blank" NavigateUrl='<%# getThemePath() & "/vega/ViewReport.aspx?report=RpHesapPusulasi.aspx&amp;Mode=Print&amp;PIND=" & Container.DataItem("PERSONELIND") %>' Text="GOSTER" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid></td>
    </tr>
    <tr>
        <td align="right" colspan="3">
            <asp:LinkButton ID="lnkPrint" runat="server" Width="58px" Visible="False" CssClass="Global_Normal_Link">Yazdýr</asp:LinkButton></td>
    </tr>
</table>
