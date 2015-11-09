<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="rapor.aspx.vb" Inherits="ASPNetPortal.raports" %>

<html>
<head runat="server">

<META http-equiv=content-type content=text/html;charset=iso-8859-9/>
<META http-equiv=content-type content=text/html;charset=windows-1254/>
<META http-equiv=content-type content=text/html;charset=x-mac-turkish/>

    <title></title>
    <style type="text/css">
        table {
            font-size: x-small !important;
        }

            table tr {
                font-size: x-small !important;
            }

                table tr td {
                    font-size: x-small !important;
                    font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif;
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnPdf" runat="server" CssClass="button" Text="Export To PDF" />
        <asp:Panel runat="server" ID="pnlSecure">

            <table width="95%">
                <tr>
                    <td width="35%" height="80px" align="left" valign="bottom"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;"><b>
                        <asp:Literal runat="server" ID="ltrTopLeft"></asp:Literal></b></span></td>
                    <td width="35%" height="80px" align="left" valign="bottom">
                        <div align="center" style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: medium;">
                            <b>Proforma Fatura</b>
                    </td>
                    <td width="35%" height="80px" align="right" valign="bottom">
                        <img runat="server" id="imglogo" align="right" width="50" /></td>
                </tr>
            </table>
            <table width="95%">
                <tr>
                    <td width="50%" height="50px" align="left" valign="Top">
                        <span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;"><b>
                            <asp:Literal runat="server" ID="ltrUser"></asp:Literal></b></span>
                    </td>
                    <td width="50%" height="50px" align="right" valign="Top">
                        <span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;"><b>
                            <asp:Label runat="server" ID="ltrTopRight"></asp:Label><br />
                            Teklifi Veren :
                            <asp:Literal ID="ltr1" runat="server"></asp:Literal></b></span>
                    </td>
                </tr>
            </table>

            <asp:Repeater runat="server" ID="rptProduc">
                <HeaderTemplate>
                    <table width="96%" align="left">
                        <tr>
                            <td bgcolor="#ccc" align="center" valign="middle"><span style="font-size: small;"><b>Poz No</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle" wrap="nowrap" width="200"><span style="font-size: small;"><b>Model / Kod</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle" width="400"><span style="font-size: small;"><b>Ürün Adı</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle"><span style="font-size: small;"><b>Marka</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle"><span style="font-size: small;"><b>Adet</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle"><span style="font-size: small;"><b>Ind.Birim Fiyat</b></span></td>
                            <td bgcolor="#ccc" align="center" valign="middle"><span style="font-size: small;"><b>Ind.Toplam Fiyat</b></span></td>
                        </tr>
                </HeaderTemplate>
                <AlternatingItemTemplate>
                    <tr>
                        <td bgcolor="#f6f6f6" align="center" valign="top"><span style="font-size: small;"><b><%# Eval("Note") %></b></span></td>
                        <td bgcolor="#f6f6f6" align="center" valign="top" wrap="nowrap" width="200"><span style="font-size: small;"><b><%# Eval("ProductCode") %></b></span><br />
                            <img id="img" runat="server" width="100" src='<%# Server.MapPath("/Uploads/productsimages/" & container.dataitem("Path") & "") %>' /></td>
                        <td bgcolor="#f6f6f6" align="Left" valign="top" width="400"><span style="font-size: small;"><b><%# Eval("ProductName") %></b><br />
                            <%# Eval("Details") %></span></td>
                        <td bgcolor="#f6f6f6" align="center" valign="top"><span style="font-size: small;"><b><%# Eval("MarKName") %></b></span></td>
                        <td bgcolor="#f6f6f6" align="center" valign="top"><span style="font-size: small;"><b><%# Eval("Qty") %></b></span></td>
                        <td bgcolor="#f6f6f6" align="center" valign="top"><span style="font-size: small;"><b><%# Eval("CurrencySymbolLeft") & " " & Eval("DiscQtyPrice") & "  " & Eval("CurrencySymbolRight") %></b></span></td>
                        <td bgcolor="#f6f6f6" align="center" valign="top"><span style="font-size: small;"><b><%# Eval("CurrencySymbolLeft") & " " & Eval("DTP") & "  " & Eval("CurrencySymbolRight")%></b></span></td>
                    </tr>
                </AlternatingItemTemplate>

                <ItemTemplate>
                    <tr>
                        <td align="center" valign="top"><span style="font-size: small;"><b><%# Eval("Note") %></b></span></td>
                        <td align="center" valign="top" wrap="nowrap" width="200"><span style="font-size: small;"><b><%# Eval("ProductCode") %></b></span><br />
                            <img id="img" runat="server" width="100" src='<%# Server.MapPath("/Uploads/productsimages/" & container.dataitem("Path") & "") %>' /></td>
                        <td align="left" valign="top" wrap="nowrap" width="400"><span style="font-size: small;"><b><%# Eval("ProductName") %></b><br />
                            <%# Eval("Details") %></span></td>
                        <td align="center" valign="top"><span style="font-size: small;"><b><%# Eval("MarKName") %></b></span></td>
                        <td align="center" valign="top"><span style="font-size: small;"><b><%# Eval("Qty") %></b></span></td>
                        <td align="center" valign="top"><span style="font-size: small;"><b><%# Eval("CurrencySymbolLeft") & " " & Eval("DiscQtyPrice") & "  " & Eval("CurrencySymbolRight") %></b></span></td>
                        <td align="center" valign="top"><span style="font-size: small;"><b><%# Eval("CurrencySymbolLeft") & " " & Eval("DTP") & "  " & Eval("CurrencySymbolRight")%></b></span></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>


            <table width="95%">
                <tr>
                    <td width="50%" height="50px" align="left" valign="Top">
                        <span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;"><b>Son Gücelleme Tarihi :
                            <asp:Literal ID="lblLastUpdate" runat="server"></asp:Literal><br />
                            Son Güncelleyen :
                            <asp:Literal ID="lblUpdater" runat="server"></asp:Literal></b></span>
                    </td>
                    <td width="50%" height="50px" align="right" valign="Top">
                        <span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small; float: right;"><b>
                            <asp:Literal ID="ltrSum2" runat="server"></asp:Literal></b></span>
                    </td>
                </tr>
            </table>

            <table width="95%">
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small; font-style: ;"><b>Teklifle ilgili Bilgiler</b></span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">1.Fiyatlarımıza KDV dahil degildir. Yukardaki fiyatlarımız iskonto yapılmıs net fiyatlarımızdır.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">2.Döviz fatura tarihindeki T.C.M.B. Efektif satıs kurudur.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">3.Her türlü tesisat isleri (Elektrik, Sıcak Soguk Su ve Sübab, LG, NG veya Havagazı, Havalandırma vs...) teklif dısıdır.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">4.Teslim Tarihi :
                        <asp:Literal ID="ltr2" runat="server"></asp:Literal>
                        'dir.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">5.Ödeme Şekli : Siparis onayı ile birlikte ödeme
                        <asp:Literal ID="ltr4" runat="server"></asp:Literal>
                        ile olacaktır.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">6.Nakliye :
                        <asp:Literal ID="ltr3" runat="server"></asp:Literal>.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">7.Montaj :
                        <asp:Literal ID="ltr5" runat="server"></asp:Literal>.</span></td>
                </tr>
                >
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">8.Teklif Notu :
                        <asp:Literal ID="ltr6" runat="server"></asp:Literal>.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">9.Proje kapsamında yapılan özel imalat ürünler kesinlikle geri iade alınamaz.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">10.Montaj : Proje Montajı esnasında ALICI imza yetkilisinin santiyede bulunması ve Proje Montaj Tutanağını kaseli<br />
                        olarak imzalaması zorunludur.</span></td>
                </tr>
                <tr>
                    <td align="left"><span style="font-family: Arial, 'DejaVu Sans', 'Liberation Sans', Freesans, sans-serif; font-size: small;">11.Teklif Geçerlilik Süresi :
                        <asp:Literal ID="ltr7" runat="server"></asp:Literal>
                        'dir.</span></td>
                </tr>
            </table>

        </asp:Panel>
    </form>
</body>

</html>
