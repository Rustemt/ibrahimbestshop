<%@ Control Language="vb" AutoEventWireup="false" Inherits="ucPrintInvoice" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="ASPNetPortal" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Text" %>
<script language="javascript">
    function PrintDivData(crtlid) {
        var ctrlcontent = document.getElementById(crtlid);
        var printscreen = window.open('', '', 'left=1,top=1,width=1,height=1,toolbar=0,scrollbars=0,status=0');
        printscreen.document.write(ctrlcontent.innerHTML);
        printscreen.document.close();
        printscreen.focus();
        printscreen.print();
        printscreen.close();
    }

</script>


<input id="Button1" type="button" name="Print" value="Yazdır" onclick="javascript: PrintDivData('orderdetail');"
    runat="Server" class="button" /><asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>
&nbsp;<table cellpadding="0" cellspacing="0" style="width: 21cm; height: 29.7cm;" id="orderdetail">
    <tr>
        <td valign="top">

            <table style="width: 100%">
                <tr>
                    <td style="width: 30%" align="center" valign="middle">&nbsp;</td>
                    <td style="width: 30%" align="center" valign="middle">&nbsp;</td>
                    <td style="width: 30%" align="right" valign="middle">
                        <label>
                            <asp:Label ID="OrderDate" runat="server"></asp:Label>
                        </label>
                        <br />
                        <label>
                            <asp:Label ID="ShipDate" runat="server"></asp:Label>
                        </label>
                        <br />
                        <label>
                            <asp:Label ID="lblUpdateTime" runat="server"></asp:Label>
                        </label>
                        <br />
                        <label>
                            <asp:Label ID="OrderId" runat="server"></asp:Label>
                        </label>
                    </td>
                </tr>
            </table>
            <table cellpadding="3" cellspacing="0" border="0" width="100%">
                <tr>
                    <td valign="top">
                        <label>
                            <b>
                                <%=GetGlobalResourceObject("lang", "BillingAddres")%></b></label>
                        <table cellpadding="3" cellspacing="0" border="0" width="100%">
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "BillingName")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="BillingName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TaxOffice")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="BillingTaxOffice" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TaxNo")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="BillingTaxNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "City")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="BillingCityName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "Address")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="BillingAddress" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="display: none">
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top">
                        <label>
                            <b>
                                <%=GetGlobalResourceObject("lang", "ShippingAddres")%></b></label>
                        <table cellpadding="3" cellspacing="0" border="0" width="100%">
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "CargoName")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingCargoName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "ShippingName")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "PhoneNumber")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingPhoneNo" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "PhoneGsm")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingMobilePhone" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "City")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingCityName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "Address")%>
                                </td>
                                <td>:
                                </td>
                                <td>
                                    <asp:Label ID="ShippingAddress" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:DataGrid ID="Datagrid1" runat="server" AutoGenerateColumns="False" CellPadding="3"
                Width="100%" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none"
                ItemStyle-CssClass="row">
                <Columns>
                    <asp:BoundColumn Visible="False" DataField="OrderDetailsId" HeaderText="ID"></asp:BoundColumn>
                    <asp:BoundColumn DataField="ProductCode" HeaderText="<%$ Resources:lang, ProductCode%>"></asp:BoundColumn>
                    <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, ProductName%>">
                        <ItemTemplate>
                            <asp:Label ID="lblProductName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ProductName")  %>'></asp:Label>
                            <asp:Label ID="lblDescription" runat="server" Text='<%# container.dataitem("Description")  %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Quantity%>">
                        <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label ID="Quantity" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Quantity") & " " & DataBinder.Eval(Container.DataItem, "BirimAdi") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>" Visible="false">
                        <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label ID="lblDoviz" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) ) & " " & container.dataitem("Pb1Name") %>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, QtyPrice%>">
                        <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# CurrencySymbolLeft & " " & formatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") ,container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")),container.dataitem("Rate")) / container.dataitem("CurrencyRate")) & " " & container.dataitem("CurrencyCode") %>' ID="BirimFiyat"> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="KdvRate" DataFormatString="{0:0.00}" HeaderText="<%$ Resources:lang, TaxRate%>" Visible="False"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Total%>">
                        <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label ID="Tutar" runat="server" Text='<%# formatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate")/ container.dataitem("CurrencyRate")),container.dataitem("BirimIndirimOrani")),container.dataitem("CariIndirimOrani")) * container.dataitem("Quantity"))  & " " & container.dataitem("CurrencyCode")%>'> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="<%$ Resources:lang, Status%>">
                        <HeaderStyle HorizontalAlign="center"></HeaderStyle>
                        <ItemStyle HorizontalAlign="center"></ItemStyle>
                        <ItemTemplate>
                            <asp:Label ID="HyperLink1" runat="Server"> <%# DataBinder.Eval(Container, "DataItem.StatusName") %> </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>

            <asp:Repeater ID="rptKdv" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
                <ItemTemplate>
                    <li>
                        <span><%# Container.DataItem("KdvRate")%> </span>
                        <asp:Label runat="server" Text='<%# formatCurDoviz(Container.DataItem("Total"))%>' ID="Label8" CssClass="none"></asp:Label>

                    </li>
                </ItemTemplate>
            </asp:Repeater>

            <table style="width: 98%">
                <tr>
                    <td valign="top">
                        <label>
                            <b>
                                <%--<asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:lang, ProductName%>"></asp:BoundColumn>--%></b></label>
                        <table cellpadding="3" cellspacing="0" border="0" width="100%">
                            <tr>
                                <td>
                                    <%# DataBinder.Eval(Container, "DataItem.StatusName") %>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="ToplamTutar" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "Totals")%>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="ToplamKdv" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="display: none;">
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TotalPrice")%>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="AraToplam" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="display: none;">
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TotalTax")%>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="KdvDahilToplam" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr style="display: none;">
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TotalIncludeTax")%>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="KargoDahilToplam" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%=GetGlobalResourceObject("lang", "TotalIncludeTax")%>
                                </td>
                                <td>:
                                </td>
                                <td align="right">
                                    <asp:Label ID="BankaToplamTutar" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td align="right">
                                    <asp:Label ID="lblString" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <div style="width: 100%" align="left" dir="ltr">
                <%=GetGlobalResourceObject("lang", "TotalIncludeCargo")%>:   
                            <asp:Label ID="PaymentType" runat="server"></asp:Label>
            </div>
        </td>
    </tr>
</table>

<script runat="server">
    
    Private IND As String
    Private cnn As New DatabaseDB

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

      
        CheckStoreType(Request.Url.AbsolutePath)
        IND = Request.QueryString("OrderIdList")

        If Not IsPostBack Then
            If IND <> "" Then
                bindsss(IND)
            End If

        End If

        'utils.SetDefaultPage(Me.Page, txtIl, btnAdd)
        'utils.Cancel(btnCancel)
        'utils.Focus(Me, txtIl)
        utils.UpdateUserOnlineState("Sipariş Detay")

    End Sub

    Public Sub bindsss(ByVal ind As String)
        Try
            Label1.Text = ""
    
            Dim conf As New AppConfig()

            '   If IsNumeric(ind) Then
            Dim cart As ShoppingCartDB = New ShoppingCartDB
            Dim cartId As String = GetShoppingCartId()

                       
        
            Dim sql As String = "SELECT  CONVERT(varchar(20), OrderDate, 108)  as UpdateTime, dbo.OrderStatus.StatusName AS Status, dbo.Users.FullName, dbo.Orders.* FROM  dbo.Orders LEFT OUTER JOIN                      dbo.Users ON dbo.Orders.CustomerId = dbo.Users.UserId LEFT OUTER JOIN                       dbo.OrderStatus ON dbo.Orders.Status = dbo.OrderStatus.StatusId where  OrderId=@OrderId"

            Dim cmd As New SqlCommand(sql, cnn.conn)
            'cmd.Parameters.AddWithValue("@CustomerId", cartId)
            cmd.Parameters.AddWithValue("@OrderId", ind)
            cnn.connectDb()

            Dim dr As SqlDataReader = cmd.ExecuteReader
            If dr.Read() Then
                'txtIl.Text = ChkNullString(dr("StatusName"))
                OrderId.Text = ChkNullString(dr("OrderCode"))
                OrderDate.Text = Left(ChkNullString(dr("OrderDate")), 10)
                ShipDate.Text = Left(ChkNullString(dr("OrderDate")), 10)
                lblUpdateTime.Text = ChkNullString(dr("UpdateTime"))
                PaymentType.Text = ChkNullString(dr("PaymentType"))
                ' Note.Text = ChkNullString(dr("note"))



                Dim kdvDahilToplm As Decimal = (ChkNullToDecimal(dr("ToplamTutar")) + ChkNullToDecimal(dr("ToplamKdv"))) / ChkNullToDecimal(dr("CurrencyRate"))
                Dim cekIndirim As Decimal = ChkNullToDecimal(dr("CekIndirimi"))
                Dim kargo As Decimal = ChkNullToDecimal(dr("ToplamKargo"))
                Dim kargodahil As Decimal = (kdvDahilToplm - ChkNullToDecimal(dr("CekIndirimi"))) + ChkNullToDecimal(dr("ToplamKargo"))


                'toplamlar
                'AraToplam.Text = formatCurTL(ChkNullToDecimal(dr("CekIndirimi")) + ChkNullToDecimal(dr("KdvDahilToplam")))
                AraToplam.Text = formatCurDoviz((ChkNullToDecimal(dr("CekIndirimi") / (ChkNullToDecimal(dr("CurrencyRate")))) + ChkNullToDecimal(dr("KdvDahilToplam")) / ChkNullToDecimal(dr("CurrencyRate")))) & " " & ChkNullEmptyString(dr("CurrencyCode"), "TL")

                'HediyeCekiToplam.Text = formatCurTL(ChkNullToDecimal(dr("CekIndirimi")))
                ' HediyeCekiToplam.Text = formatCurDoviz(ChkNullToDecimal(dr("CekIndirimi")) / (ChkNullToDecimal(dr("CurrencyRate")))) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                'ToplamTutar.Text = formatCurTL(ChkNullToDecimal(dr("ToplamTutar")))
                ToplamTutar.Text = formatCurDoviz(ChkNullToDecimal(dr("ToplamTutar")) / (ChkNullToDecimal(dr("CurrencyRate")))) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                'KdvDahilToplam.Text = formatCurTL(ChkNullToDecimal(dr("KdvDahilToplam")))
                KdvDahilToplam.Text = formatCurDoviz(kdvDahilToplm - cekIndirim) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                'ToplamKdv.Text = formatCurTL(ChkNullToDecimal(dr("ToplamKdv")))
                ToplamKdv.Text = formatCurDoviz(ChkNullToDecimal(dr("ToplamKdv")) / (ChkNullToDecimal(dr("CurrencyRate")))) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                'ToplamKargo.Text = formatCurTL(ChkNullToDecimal(dr("ToplamKargo")))
                'ToplamKargo.Text = formatCurDoviz(ChkNullToDecimal(dr("ToplamKargo"))) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                'KargoDahilToplam.Text = formatCurTL(ChkNullToDecimal(dr("KargoDahilToplamTutar")))
                Dim kargodahils As Decimal = (kdvDahilToplm - cekIndirim) + kargo
                KargoDahilToplam.Text = formatCurDoviz(kargodahils) & " " & ChkNullEmptyString(dr("CurrencyCode"))


                'ToplamIndirim.Text = formatCurTL(ChkNullToDecimal(dr("ToplamIndirim")))
                ' ToplamIndirim.Text = formatCurDoviz(ChkNullToDecimal(dr("ToplamIndirim")) / (ChkNullToDecimal(dr("CurrencyRate")))) & " " & ChkNullEmptyString(dr("CurrencyCode"))

                '   ToplamHacim.Text = formatNumberEx(ChkNullToDecimal(dr("ToplamHacim")))
                '  Status.Text = ChkNullString(dr("Status"))
                'FullName.Text = ChkNullString(dr("FullName"))

                ShippingName.Text = ChkNullString(dr("ShippingName"))
                ShippingPhoneNo.Text = ChkNullString(dr("ShippingPhoneNo"))
                ShippingMobilePhone.Text = ChkNullString(dr("ShippingMobilePhone"))
                ShippingCityName.Text = ChkNullString(dr("ShippingCityName"))
                ShippingAddress.Text = ChkNullString(dr("ShippingAddress"))
                ShippingCargoName.Text = ChkNullString(dr("ShippingCargoName"))

                BillingName.Text = ChkNullString(dr("BillingName"))
                BillingTaxOffice.Text = ChkNullString(dr("BillingTaxOffice"))
                BillingTaxNo.Text = ChkNullString(dr("BillingTaxNo"))
                BillingCityName.Text = ChkNullString(dr("BillingCityName"))
                BillingAddress.Text = ChkNullString(dr("BillingAddress"))
                'BankaToplamTutar.Text = formatCurTL(ChkNullToDecimal(dr("BankaToplamTutar")))


                'BankaToplamTutar.Text = formatCurTL(ChkNullToDecimal(dr("BankaToplamTutar")))

                If ChkNullToDecimal(dr("ToplamKargo")) > 0 And ChkNullToDecimal(dr("KargoDahilToplamTutar")) > ChkNullToDecimal(dr("BankaToplamTutar")) Then
                    Dim bankaTopla As Decimal = ChkNullToDecimal(dr("BankaToplamTutar")) - ChkNullToDecimal(dr("ToplamKargo")) + ChkNullToDecimal(dr("CekIndirimi"))
                    bankaTopla = (bankaTopla / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi") + dr("ToplamKargo")
                    BankaToplamTutar.Text = formatCurDoviz(ChkNullToDecimal(bankaTopla)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                ElseIf ChkNullToDecimal(dr("ToplamKargo")) > 0 And ChkNullToDecimal(dr("KargoDahilToplamTutar")) < ChkNullToDecimal(dr("BankaToplamTutar")) Then
                    Dim disCount As Decimal = CalcYuzdeIndirim(ChkNullToDecimal(dr("KargoDahilToplamTutar")), ChkNullToDecimal(dr("BankaToplamTutar")))
                    Dim kdvdahilToplasm As Decimal = ChkNullToDecimal(dr("KdvDahilToplam")) + ChkNullToDecimal(dr("CekIndirimi"))
                    kdvdahilToplasm = (kdvdahilToplasm / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi")
                    Dim kargoDahilToplamtsutar As Decimal = (kdvdahilToplasm) + dr("ToplamKargo")
                    BankaToplamTutar.Text = formatCurDoviz(CalcIndirim(kargoDahilToplamtsutar, disCount)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                    
                ElseIf ChkNullToDecimal(dr("ToplamKargo")) = 0 And ChkNullToDecimal(dr("KargoDahilToplamTutar")) > ChkNullToDecimal(dr("BankaToplamTutar")) Then
                    
                    If ChkNullToDecimal(dr("CekIndirimi")) > 0 Then
                        If dr("PaymentType") = "Banka Havalesi" Or dr("PaymentType") = "Paypal" Or dr("PaymentType") = "Kredi Kartı" Or dr("PaymentType") = "iPara" Then
                            Dim bankaTopla As Decimal = ChkNullToDecimal(dr("BankaToplamTutar")) - ChkNullToDecimal(dr("ToplamKargo")) + ChkNullToDecimal(dr("CekIndirimi"))
                            bankaTopla = (bankaTopla / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi") + dr("ToplamKargo")
                            BankaToplamTutar.Text = formatCurDoviz(ChkNullToDecimal(bankaTopla)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                        Else
                            'diğer ödeme tanımlamaları
                            Dim disCount As Decimal = CalcYuzdeIndirim(ChkNullToDecimal(dr("KargoDahilToplamTutar")), ChkNullToDecimal(dr("BankaToplamTutar")))
                            Dim bankaToplas As Decimal = Math.Round(ChkNullToDecimal(dr("KdvDahilToplam")) + ChkNullToDecimal(dr("CekIndirimi")), 2)
                            bankaToplas = (bankaToplas / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi") + dr("ToplamKargo")
                            BankaToplamTutar.Text = formatCurDoviz(CalcIndirim((bankaToplas), disCount)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                        End If
                    Else
                        Dim disCount As Decimal = CalcYuzdeIndirim(ChkNullToDecimal(dr("KargoDahilToplamTutar")), ChkNullToDecimal(dr("BankaToplamTutar")))
                        Dim bankaToplas As Decimal = Math.Round(ChkNullToDecimal(dr("KdvDahilToplam")) + ChkNullToDecimal(dr("CekIndirimi")), 2)
                        bankaToplas = (bankaToplas / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi") + dr("ToplamKargo")
                        BankaToplamTutar.Text = formatCurDoviz(CalcIndirim((bankaToplas), disCount)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                    End If
                Else
                    Dim disCount As Decimal = CalcYuzdeIndirim(ChkNullToDecimal(dr("KargoDahilToplamTutar")), ChkNullToDecimal(dr("BankaToplamTutar")))
                    Dim kdvdahilToplasm As Decimal = ChkNullToDecimal(dr("KdvDahilToplam")) + ChkNullToDecimal(dr("CekIndirimi"))
                    kdvdahilToplasm = (kdvdahilToplasm / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi")
                    Dim kargoDahilToplamtutasr As Decimal = (kdvdahilToplasm) + dr("ToplamKargo")
                    BankaToplamTutar.Text = formatCurDoviz(CalcIndirim(kargoDahilToplamtutasr, disCount)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                End If

                If dr("PaymentType") = "Teslimatta Ödeme" Then
                    Dim a As Decimal = ChkNullToDecimal(dr("KargoDahilToplamTutar")) - ChkNullToDecimal(dr("BankaToplamTutar"))
                    BankaToplamTutar.Text = formatCurDoviz(ChkNullToDecimal(kargodahil - a)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                End If
                If dr("Taksit") > 1 Then
                    Dim taksitRate As Decimal = ChkNullToDecimal(dr("TaksitRate"))
                    Dim bankaTopla As Decimal = ChkNullToDecimal(dr("BankaToplamTutar")) - ChkNullToDecimal(dr("ToplamKargo")) + ChkNullToDecimal(dr("CekIndirimi"))
                    bankaTopla = (bankaTopla / (ChkNullToDecimal(dr("CurrencyRate")))) - dr("CekIndirimi") + dr("ToplamKargo")
                    BankaToplamTutar.Text = formatCurDoviz(CalcKdvDahil(bankaTopla, taksitRate)) & " " & ChkNullEmptyString(dr("CurrencyCode"))
                End If

                lblString.Text = utils.funConvert(BankaToplamTutar.Text.ToString.Substring(0, BankaToplamTutar.Text.ToString.Length - 3))
             
                
                dr.Close()
                Dim sql0 As String = "SELECT Orders.CurrencyCode,Orders.CurrencyRate,   dbo.OrderStatus.StatusName , dbo.OrderDetails.*, Currencys_2.CurrencyName AS Pb1Name,   Currencys_1.CurrencyName AS APbName FROM   Orders inner join OrderDetails on Orders.OrderId=OrderDetails.OrderId INNER JOIN             dbo.OrderStatus ON dbo.OrderDetails.Status = dbo.OrderStatus.StatusId LEFT OUTER JOIN   dbo.Currencys Currencys_1 ON dbo.OrderDetails.APb = Currencys_1.CurrencyId LEFT OUTER JOIN     dbo.Currencys Currencys_2 ON dbo.OrderDetails.Pb1 = Currencys_2.CurrencyId where  Orders.OrderID=@OrderId"
                Dim cmd1 As New SqlCommand(sql0, cnn.conn)
                cmd1.Parameters.AddWithValue("@OrderId", ind)
                Datagrid1.DataKeyField = "OrderDetailsId"
                Datagrid1.DataSource = cmd1.ExecuteReader(CommandBehavior.CloseConnection)
                Datagrid1.DataBind()
                
                Dim sql1 As String = "select KdvRate,sum((SatisFiyati*KdvRate/100*Rate*Quantity)) as 'Total'  from OrderDetails where OrderID=@OrderID group by KdvRate"
                Dim cmd2 As New SqlDataAdapter(sql1, cnn.conn)
                cmd2.SelectCommand.Parameters.AddWithValue("@OrderID", ind)
                Dim dt As New DataTable
                cmd2.Fill(dt)
                rptKdv.DataSource = dt
                rptKdv.DataBind()
                cnn.disconnectDb()
                              
                
            End If

            If Not dr.IsClosed Then
                dr.Close()
            End If

        Catch ex As Exception
            Label1.Text = "Yanlız bır fatura seçe bilirsiniz"
        End Try
    End Sub

   
</script>
