<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editGGorder.aspx.vb" Inherits="ASPNetPortal.editGGorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Sipariş Detayı</title>
    <script type="text/JavaScript">
        function printdiv(printpage) {
            var headstr = "<html><head ></head><body>";
            var footstr = "</body>";
            if (document.getElementById != null) {
                var newstr = document.getElementById(printpage).innerHTML;
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            else {
                //document.all.item(printpage).innerHTML;
                var newstr = document.all.item(printpage).innerHTML
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
            }
            return false;
        }
    </script>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup" id="orderDetail" runat="server">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText"><%=GetGlobalResourceObject("admin", "OrderDetails")%></div>
                </div>
                <div class="toggleContent">
                    <asp:Label ID="lblErr" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <div id="div_print">
                        <div class="dataForm">
                            <div class="row">
                                <div class="colOne margin-none-bottom">
                                    <div class="dataForm">
                                        <div class="row">
                                            <div class="colThree">
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "OrderId")%> :</label>
                                                        <asp:Label ID="OrderId" runat="server"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "GGOrderId")%> :</label>
                                                        <asp:Label ID="Note" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "OrderDate")%> :</label>
                                                        <asp:Label ID="OrderDate" runat="server"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "PaymentMethod")%> :</label>
                                                        <asp:Label ID="PaymentType" runat="server"></asp:Label>&nbsp;
                                                        <asp:Label ID="CardName" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "PaymentReferenceCode")%> :</label>
                                                        <asp:Label ID="lblPaymentOrderCode" runat="server"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "PaymentTypeOrder")%> :</label>
                                                        <asp:Label ID="Taksit" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "FullName")%> :</label>
                                                        <asp:HyperLink ID="FullName" runat="server">[FullName]</asp:HyperLink>&nbsp;
                                                        <asp:HyperLink ID="lnkUserOrders" runat="server" ForeColor="Red"></asp:HyperLink>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
                                                        <asp:Label ID="lblEmail" runat="server"></asp:Label>&nbsp;
                                                        <asp:HyperLink ID="lnkEmail" runat="server" ForeColor="Red"></asp:HyperLink>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="colThree">
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Status")%> :</label>
                                                        <asp:HyperLink ID="edit" runat="server" CssClass="btnDefault">Düzenle</asp:HyperLink>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "DeliveryDate")%> :</label>
                                                        <asp:Label ID="ShipDate" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Points")%> :</label>
                                                        <asp:HyperLink ID="editPoint" runat="server"><%=GetGlobalResourceObject("admin", "Edit")%></asp:HyperLink>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "XmlListIpAddress")%> :</label>
                                                        <asp:HyperLink ID="lnkIp" runat="server" ForeColor="Red"></asp:HyperLink>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Currency")%> :</label>
                                                        <asp:Label runat="server" ID="lblParaBirimi"></asp:Label>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "UserIsViewingCurrency")%> :</label>
                                                        <asp:Label runat="server" ID="lblMusteriParaBirimi"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="colThree">
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "DescriptionMember")%> :</label>
                                                        <asp:TextBox ID="txtAciklamaUye" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "DescriptionAdministrator")%> :</label>
                                                        <asp:TextBox ID="txtAciklama" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colOne">
                                                        <div class="buttonGroup margin-none-top">
                                                            <asp:HyperLink ID="hypWhole" runat="Server" CssClass="btnDefault" ToolTip="Seri Detayı" Visible="false">Seri Detayı </asp:HyperLink>
                                                            <asp:HyperLink ID="hlCurtain" runat="Server" CssClass="btnDefault" ToolTip="Perde Detayı" Visible="false">Perde Detayı </asp:HyperLink>
                                                            <asp:HyperLink ID="hypPoster" runat="Server" CssClass="btnDefault" ToolTip="Poster Detayı" Visible="false">Poster Detayı </asp:HyperLink>
                                                            <asp:HyperLink ID="hypFood" runat="Server" CssClass="btnDefault" ToolTip="Yemek Detayı" Visible="false">Yemek Detayı </asp:HyperLink>
                                                            <asp:HyperLink ID="hypFlower" runat="Server" CssClass="btnDefault" ToolTip="Çiçek Detayı" Visible="false">Çiçek Detayı </asp:HyperLink>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colOne">
                                    <div class="dataTable">
                                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundColumn DataField="OrderDetailsId" HeaderText="ID"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductCode %>" ItemStyle-Width="110">
                                                    <ItemTemplate>
                                                        <a href="javascript:void(0)" class="btnLink" onclick="<%# "popupWindow(1100,750,50,'/admin/ecommerce/product/EditProduct.aspx?IND=" & DataBinder.Eval(Container.DataItem, "ProductId") & "','popup');"%>">
                                                            <%#DataBinder.Eval(Container, "DataItem.ProductCode")%> <%#IIf(ChkNullString(DataBinder.Eval(Container, "DataItem.ProductBarcode")) <> "", "<br>Barkod:" & DataBinder.Eval(Container, "DataItem.ProductBarcode"), "")%></a>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:BoundColumn DataField="ProductName" HeaderText="<%$ Resources:admin,ProductName %>"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,ProductFeatures %>">
                                                    <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Description").ToString.Replace("<div>","").Replace("</div>","")%> <%# iif(ChkNullString(DataBinder.Eval(Container, "DataItem.ProductSizeBarcode"))<>"","<br>Barkod:" & DataBinder.Eval(Container, "DataItem.ProductSizeBarcode"),"")%></ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Provider %>">
                                                    <ItemTemplate>
                                                        <a href="javascript:void(0)" class="textRed" onclick="<%# "popupWindow(700,750,50,'/admin/ecommerce/providers/ProviderInfo.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ProviderId") & "&DIND=" & DataBinder.Eval(Container.DataItem,"OrderId") & "','popup');"%>"><%#Eval("ProviderName")%></a>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:BoundColumn DataField="Personel" HeaderText="<%$ Resources:admin,Responsible %>"></asp:BoundColumn>
                                                <asp:BoundColumn DataField="MarkName" HeaderText="<%$ Resources:admin,MarkName %>"></asp:BoundColumn>
                                                <asp:BoundColumn DataField="Quantity" HeaderText="<%$ Resources:admin,Quantity %>" Visible="false" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Quantity %>" HeaderStyle-HorizontalAlign="Right">
                                                    <ItemTemplate><%#DataBinder.Eval(Container, "DataItem.Quantity")%> <%#DataBinder.Eval(Container, "DataItem.BirimAdi")%> </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:BoundColumn Visible="False" DataField="BirimIndirimOrani" HeaderText="Stok İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                                                <asp:BoundColumn Visible="False" DataField="CariIndirimOrani" HeaderText="Cari İndirimi(%)" DataFormatString="{0:0.00}"></asp:BoundColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,CurrencyAmount %>">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label35" runat="server" Text='<%# FormatCurDoviz(Eval("SatisFiyati") / Eval("CurrencyRate")) & " " & Eval("CurrencyCode") %>'> </asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,UnitPrice %>">
                                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# FormatCurDoviz(CalcRate(CalcIndirim(CalcIndirim(container.dataitem("SatisFiyati") , ChkNullToDecimal(container.dataitem("BirimIndirimOrani"))),ChkNullToDecimal (container.dataitem("CariIndirimOrani"))), ChkNullToDecimal( container.dataitem("Rate") )/ container.dataitem("CurrencyRate")))  & " " & container.dataitem("CurrencyCode")%>' ID="BirimFiyat"> </asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,PurchasePrice %>">
                                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                    <ItemTemplate>
                                                        <asp:Label ID="AlisTutar" runat="server" Text='<%# FormatCurDoviz(CalcRate(container.dataitem("AlisFiyati") , container.dataitem("AlisRate") / container.dataitem("CurrencyRate")) * container.dataitem("Quantity")) & " " & container.dataitem("CurrencyCode")%>'> </asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Tax %>">
                                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                    <ItemTemplate><%# formatCurDoviz(CalcKdv(CalcRate(CalcIndirim(CalcIndirim(Container.DataItem("SatisFiyati"), Container.DataItem("BirimIndirimOrani")),ChkNullToDecimal( Container.DataItem("CariIndirimOrani"))) * Container.DataItem("Quantity"), Container.DataItem("Rate") / Container.DataItem("CurrencyRate")), Container.DataItem("KdvRate"))) & " " & Container.DataItem("CurrencyCode") %> </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Amount %>">
                                                    <HeaderStyle HorizontalAlign="Right"></HeaderStyle>
                                                    <ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Tutar" runat="server" Text='<%# FormatCurDoviz(CalcIndirim(CalcIndirim(CalcRate(container.dataitem("SatisFiyati") , container.dataitem("Rate") / Container.DataItem("CurrencyRate") ),container.dataitem("BirimIndirimOrani")),ChkNullToDecimal(container.dataitem("CariIndirimOrani"))) * container.dataitem("Quantity")) & " " & Container.DataItem("CurrencyCode") %>'> </asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateColumn>
                                                <asp:TemplateColumn HeaderText="<%$ Resources:admin,Status %>">
                                                    <ItemTemplate>
                                                        <%--<asp:HyperLink ID="HyperLink1" CssClass="textRed" runat="Server" Enabled="<%#update%>" NavigateUrl='<%# "Javascript:var PopUpWin = window.open(""EditStatus.aspx?IND=" & DataBinder.Eval(Container.DataItem,"OrderDetailsId") & "&DIND=" & DataBinder.Eval(Container.DataItem,"OrderId") & ""","""",""width=430,height=200,top=1,left=1,scrollbars=yes,toolbar=0,status=1,resizable=1"")" %> '><%#DataBinder.Eval(Container, "DataItem.StatusName2")%></asp:HyperLink>--%>
                                                        <a href="javascript:void(0)" class="textRed" onclick="<%# "popupWindow(430,200,50,'EditStatus.aspx?IND=" & DataBinder.Eval(Container.DataItem, "OrderDetailsId") & "&DIND=" & DataBinder.Eval(Container.DataItem, "OrderId") & "','popup');"%>"><%#Eval("StatusName2")%></a>
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
                                    <div class="boxToggle">
                                        <div class="toggleTitle">
                                            <div class="titleText"><%=GetGlobalResourceObject("admin", "Information")%></div>
                                        </div>
                                        <div class="toggleContent">
                                            <table width="100%" cellspacing="0" cellpadding="5" runat="server">
                                                <tbody>
                                                    <tr>
                                                        <td valign="top" width="33%">
                                                            <table width="100%" cellpadding="5" cellspacing="0" runat="server">
                                                                <tbody>
                                                                    <tr class="title">
                                                                        <td colspan="2"><b><%=GetGlobalResourceObject("admin", "DeliveryInformation")%></b></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="95"><%=GetGlobalResourceObject("admin", "CargoName")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingCargoName" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingName" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "PhoneNumberOrder")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingPhoneNo" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "MobilePhoneNumber")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingMobilePhone" runat="server"></asp:Label>
                                                                            <asp:HyperLink ID="lnkSendSms" runat="server"></asp:HyperLink>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "CountryCityDistrict")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingCityName" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "Address")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ShippingAddress" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="33%">
                                                            <table width="100%" cellpadding="5" cellspacing="0" border="0" runat="server">
                                                                <tbody>
                                                                    <tr class="title">
                                                                        <td colspan="2"><b><%=GetGlobalResourceObject("admin", "BillingInformation")%></b></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="95"><%=GetGlobalResourceObject("admin", "ShippingUsersName")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingName" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TaxAdministration")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingTaxOffice" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "BillingMsg2")%>:</td>
                                                                        <td>
                                                                            <asp:Label ID="lblMail" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TaxNo")%>/<%=GetGlobalResourceObject("admin", "IdentyNumber")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="lblVergiNo" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "PhoneNumberOrder")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingPhoneNo" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "MobilePhoneNumber")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingMobilePhone" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "CountryCityDistrict")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingCityName" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "Address")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="BillingAddress" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <p></p>
                                                            <table width="100%" cellpadding="5" cellspacing="0" border="0" runat="server">
                                                                <tbody>
                                                                    <tr class="title">
                                                                        <td colspan="2"><b>Toplam</b></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalAmount")%> :</td>
                                                                        <td>
                                                                            <asp:Label CssClass="textRed" ID="lblToplamTutar2" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalPurchaseAmount")%> :</td>
                                                                        <td>
                                                                            <asp:Label CssClass="textRed" ID="lblToplamAlis2" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalAvailsAmount")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="lblkar" CssClass="textRed" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                        <td valign="top" width="33%">
                                                            <table width="100%" cellpadding="5" cellspacing="0" border="0">
                                                                <tbody>
                                                                    <tr class="title">
                                                                        <td colspan="2"><b><%=GetGlobalResourceObject("admin", "Totals")%></b></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalWeight")%>(gr) :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamAgirlik" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalVolume")%>(cm3) :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamHacim" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalLoadWeight")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamDesi" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalDiscount")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamIndirim" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalAmount")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamTutar" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalVat")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamKdv" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "VatIncludedTotal")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="AraToplam" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "GiftVoucherDiscount")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="HediyeCekiToplam" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "SubTotal")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="KdvDahilToplam" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalShipping")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="ToplamKargo" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "ShippingTotal")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="KargoDahilToplam" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><%=GetGlobalResourceObject("admin", "TotalAmountPaid")%> :</td>
                                                                        <td>
                                                                            <asp:Label ID="OdenenToplamTutar" runat="server"></asp:Label>
                                                                            <asp:Label ID="CurrencyCode" Visible="false" runat="server"></asp:Label></td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Save %>"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,Close %>" CausesValidation="False"></asp:Button>
                        <asp:HyperLink ID="btnPrint" Text="<%$ Resources:admin,Print %>" runat="server" CssClass="btnDefault" NavigateUrl="javascript:void(printdiv('div_print'));" ToolTip="Sayfayı Yazdır"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
