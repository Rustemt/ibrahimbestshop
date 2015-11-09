<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="report.aspx.vb" Inherits="report1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Servis tip Ekle</title>
    <link href="../admin/css/reset.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .baslik {
            width: 120px;
            text-align: right;
        }

        .icerik {
            width: 200px;
            text-align: left;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Button ID="btnPdf" runat="server" CssClass="button" Text="Export To PDF" />


        <asp:Panel runat="server" ID="pnlSecure" Enabled="False">
            <div id="module_title">SERVİS FORMU</div>
            <asp:Label ID="lblError" runat="server"></asp:Label>

            <table>
                <tr>
                    <td>Ad Soyad :</td>
                    <td>
                        <asp:Label ID="lblFullName" runat="server"></asp:Label></td>
                    <td>Servis Drumu : </td>
                    <td>
                        <asp:Label ID="lblServicesStatus" runat="server"></asp:Label></td>
                    <td>İşlem Türü</td>
                    <td>
                        <asp:Label ID="lblServicesType" runat="server"></asp:Label></td>
                    <td>Müşteri Şikayeti : </td>
                    <td valign="top">
                        <asp:Label ID="lblPlaint" runat="server"></asp:Label></td>
                    <td rowspan="9" align="center">
                        <asp:Panel ID="pnlOpt" runat="server" Width="250px">
                            <p>&nbsp;</p>
                            <div style="float: left; width: 130px;">
                                <div>
                                    <asp:Label ID="txtOpt1" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt1" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt2" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt2" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt3" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt3" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt4" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt4" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt5" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt5" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt6" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt6" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt7" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt7" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt8" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt8" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt9" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt9" runat="server"></asp:DropDownList></div>
                                <div>
                                    <asp:Label ID="txtOpt10" runat="server"></asp:Label>&nbsp;&nbsp;<asp:DropDownList ID="servicesOpt10" runat="server"></asp:DropDownList></div>
                                <div class="clear"></div>
                            </div>
                            <div style="float: left; width: 120px;">
                                <div>
                                    <asp:CheckBox ID="cbOpt1" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt2" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt3" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt4" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt5" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt6" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt7" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt8" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt9" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div>
                                    <asp:CheckBox ID="cbOpt10" runat="server" AutoPostBack="true" Text=""></asp:CheckBox></div>
                                <div class="clear"></div>
                            </div>
                            <p>&nbsp;</p>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td>Telefon : </td>
                    <td>
                        <asp:Label ID="lblPhone" runat="server"></asp:Label></td>
                    <td>Başvuru Tarihi : </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSaveDate" Enabled="False"></asp:TextBox></td>
                    <td>Cihaz Adı :</td>
                    <td>
                        <asp:Label ID="lblProductName" runat="server"></asp:Label></td>
                    <td>&nbsp;</td>
                    <td rowspan="3">
                        <asp:TextBox runat="server" ID="txtPlaint" TextMode="MultiLine" MaxLength="400" Width="125px" Height="100px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Cep Tel. : </td>
                    <td>
                        <asp:Label ID="lblMobilePhone" runat="server"></asp:Label></td>
                    <td>Kabul Tarihi : </td>
                    <td>
                        <asp:TextBox ID="txtAcceptDate" runat="server"></asp:TextBox></td>
                    <td>Marka :</td>
                    <td>
                        <asp:Label ID="lblMark" runat="server"></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>E Mail : </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                    <td>Belge Numarası : </td>
                    <td>
                        <asp:TextBox ID="txtDocNo" runat="server"></asp:TextBox></td>
                    <td>Model :</td>
                    <td>
                        <asp:Label ID="lblModel" runat="server"></asp:Label></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Ülke : </td>
                    <td>
                        <asp:Label ID="lblCustamerCity" runat="server"></asp:Label></td>
                    <td>Teslim Tarihi : </td>
                    <td>
                        <asp:TextBox ID="txtDeliveryDate" runat="server"></asp:TextBox></td>
                    <td>Seri No :</td>
                    <td>
                        <asp:TextBox ID="txtSerialNo" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>İl :</td>
                    <td>
                        <asp:Label ID="lblCustamerCountry" runat="server"></asp:Label></td>
                    <td>Şube : </td>
                    <td>
                        <asp:Label ID="lblCenter" runat="server"></asp:Label></td>
                    <td>Stok Kodu :</td>
                    <td>
                        <asp:TextBox ID="txtStockCode" runat="server"></asp:TextBox></td>
                    <td>Arızası :</td>
                    <td>
                        <asp:Label ID="lblFault" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td>Adres : </td>
                    <td rowspan="3" valign="top">
                        <asp:TextBox runat="server" ID="txtAdress" TextMode="MultiLine" MaxLength="400" Width="144px" Height="100px" Enabled="False"></asp:TextBox></td>
                    <td>Departman :</td>
                    <td>
                        <asp:DropDownList ID="ddlDepartment" runat="server"></asp:DropDownList></td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBox runat="server" ID="cbGuarantyType" Text="Garantili" /></td>
                    <td>Arıza Sonuc :</td>
                    <td>
                        <asp:DropDownList ID="ddlResault" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td></td>
                    <td>Personel : </td>
                    <td>
                        <asp:Label ID="lblPersonel" runat="server"></asp:Label></td>
                    <td>Fatura Tarihi :</td>
                    <td>
                        <asp:TextBox ID="txtBillDate" runat="server"></asp:TextBox></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Fatura No :</td>
                    <td>
                        <asp:TextBox runat="server" ID="txtBillNo"></asp:TextBox></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                    <td height="50" width="100"></td>
                </tr>
                <tr>
                    <td colspan="9">
                        <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="9">
                        <div style="width: 1400px; height: 350px; overflow: scroll">

                            <asp:GridView ID="GWServicesPartLİst" runat="server" CssClass="datalist" AutoGenerateColumns="False" DataKeyNames="id,JobID,PersonID" EnableModelValidation="True" Width="100%" ShowFooter="True">
                                <HeaderStyle CssClass="title" />
                                <Columns>

                                    <asp:BoundField DataField="id" HeaderText="IND" SortExpression="id" ReadOnly="True" />
                                    <asp:TemplateField HeaderText="İş Türü" SortExpression="JobName">
                                        <ItemTemplate>
                                            <asp:Label ID="lblJobName" runat="server" Text='<%# eval("JobName") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Barkod" SortExpression="Barcode">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBarcode" runat="server" Text='<%# Bind("Barcode") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stok Kodu" SortExpression="StockCode">
                                        <ItemTemplate>
                                            <asp:Label ID="lblProductCode" runat="server" Text='<%# Bind("ProductCode")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stok Adı" SortExpression="StockName">
                                        <ItemTemplate>
                                            <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Açıklama" SortExpression="PersonDesc">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPersonDesc" runat="server" Text='<%# Bind("PersonDesc") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Miktar" SortExpression="PartQty">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPartQty" runat="server" Text='<%# Bind("PartQty") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fiyat" SortExpression="Price">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Hiz. Fiyatı" SortExpression="ServicePrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblServicePrice" runat="server" Text='<%# Bind("ServicePrice")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İsk1" SortExpression="Discount1">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount1" runat="server" Text='<%# Bind("Discount1") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İsk2" SortExpression="Discount2">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount2" runat="server" Text='<%# Bind("Discount2") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İsk3" SortExpression="Discount3">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount3" runat="server" Text='<%# Bind("Discount3") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İsk4" SortExpression="Discount4">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount4" runat="server" Text='<%# Bind("Discount4") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İsk5" SortExpression="Discount5">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscount5" runat="server" Text='<%# Bind("Discount5") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Toplam Tutar" SortExpression="TotalPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTotalPrice" runat="server" Text='<%# Bind("TotalPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="İskTopTut" SortExpression="DiscTotPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDiscTotPrice" runat="server" Text='<%# Bind("DiscTotPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="NetTopTut" SortExpression="NetTotPrice">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNetTotPrice" runat="server" Text='<%# Bind("NetTotPrice") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="KDV" SortExpression="KdvRate">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKdvRate" runat="server" Text='<%# Bind("KdvRate")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="KdvTopTut" SortExpression="KdvTotPrice" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKdvNetTotPrice" runat="server" Text='<%# Bind("KdvNetTotPrice")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk 1" SortExpression="DeepDisc1" Visible="False">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDeepDisc1" runat="server" Text='<%# Bind("DeepDisc1")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk 2" SortExpression="DeepDisc2" Visible="False">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDeepDisc2" runat="server" Text='<%# Bind("DeepDisc2")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="TopTut" SortExpression="KdvTotPrice" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblKdvNetTotPrice2" runat="server" Text='<%# Bind("GenTotal")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk Gen Top 1" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGenTotal" runat="server" Text='<%# Bind("DeepGenDiscTotal1")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk Top 1" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGenTotal2" runat="server" Text='<%# Bind("DeepDiscTotal1")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk1 Kdv" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDeepDiscKdv1" runat="server" Text='<%# Bind("DeepDiscKdv1")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk Gen Top 2" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGenTotal3" runat="server" Text='<%# Bind("DeepGenDiscTotal2")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk Top 2" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGenTotal4" runat="server" Text='<%# Bind("DeepDiscTotal2")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Dip İsk2 Kdv" SortExpression="GenTotal" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDeepDiscKdv2" runat="server" Text='<%# Bind("DeepDiscKdv2")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Personel" SortExpression="PersonName">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPersonel" runat="server" Text='<%# Eval("PersonName")%>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" Wrap="False"></ItemStyle>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td width="100%" align="left" colspan="9">
                        <table align="left" width="1000" cellpadding="1" cellspacing="2" border="0">
                            <tr>
                                <td rowspan="6" valign="top" align="left">
                                    <label>Toplam Kayıt :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></label><br />
                                    <label>Toplam Sayfa :<asp:Label ID="lblPageCount" runat="server"></asp:Label></label><br />
                                    <label>Geçerli Sayfa :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></label><br />
                                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblSort" runat="server" Visible="False" CssClass="Admin_Normal_Label" Text=""></asp:Label>
                                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">Parça Toplamı : </td>
                                <td align="left">
                                    <asp:Label ID="lblparttotal" runat="server"></asp:Label>
                                </td>

                                <td align="right">İskonto 1% : </td>
                                <td align="left">
                                    <asp:TextBox runat="server" ID="txtDeepDisc1" Text="0"></asp:TextBox>
                                </td>

                                <td align="right">Matrah : </td>
                                <td align="left">
                                    <asp:Label ID="lblMatrah" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">Hizmet Toplamı : </td>
                                <td align="left">
                                    <asp:Label ID="lblServicesPrice" runat="server"></asp:Label>
                                </td>

                                <td align="right">İskonto 2% : </td>
                                <td align="left">
                                    <asp:TextBox runat="server" ID="txtDeepDisc2" Text="0"></asp:TextBox>
                                </td>

                                <td align="right">İskonto : </td>
                                <td align="left">
                                    <asp:Label ID="lblDiscTotale" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>

                                <td align="right">İskonto 1 Tutar : </td>
                                <td align="left">
                                    <asp:TextBox runat="server" ID="txtDeepDiscPrice1">0</asp:TextBox>
                                </td>

                                <td align="right">Ara Toplam : </td>
                                <td align="left">
                                    <asp:Label ID="lblSpaceTotal" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>

                                <td align="right">İskonto 4 Toplamı : </td>
                                <td align="left">
                                    <asp:TextBox runat="server" ID="txtDeepDiscPrice2">0</asp:TextBox>
                                </td>

                                <td align="right">KDV : </td>
                                <td align="left">
                                    <asp:Label ID="lblKdv" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>

                                <td align="right">&nbsp;</td>
                                <td align="left">&nbsp;</td>

                                <td align="right">Genel Toplam : </td>
                                <td align="left">
                                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                </tr>
            </table>


            <asp:Label Text="" runat="server" ID="lbl" />
        </asp:Panel>
    </form>

</body>
</html>
