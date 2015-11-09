<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="editreports.aspx.vb" Inherits="ASPNetPortal.editreports" %>

<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText">Rapor Detayı</div>
                </div>
                <div class="toggleContent">

                    <div class="colGroup" id="divgroup" runat="server" >
                        <div class="col2 colBtn">
                            <label>Tarih</label>
                            <ew:CalendarPopup ID="Tarih12" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <ew:CalendarPopup ID="Tarih13" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                            <asp:LinkButton ID="btnsearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> Ara</asp:LinkButton>

                        </div>
                        <div class="col">
                            <asp:Label ID="lblArea" runat="server" Text="Satış Bölgesi Seçiniz:" Visible="false"></asp:Label>
                            <asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true" Visible="false"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="lblPlace" runat="server" Text="Satış Yeri Seçiniz:" Visible="false"></asp:Label>
                            <asp:DropDownList ID="ddlPlace" runat="server" AutoPostBack="true" Visible="false"></asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="lblGroup" runat="server" Text="Satış Grubu Seçiniz:" Visible="false"></asp:Label>
                            <asp:DropDownList ID="ddlgroup" runat="server" AutoPostBack="true" Visible="false"></asp:DropDownList>
                        </div>
                    </div>
                    <div id="report_button" runat="server" >
                        <asp:Button ID="btnDay" CssClass="lightbox btnDefault" runat="server" Text="Gün" />
                        <asp:Button ID="btnWeek" CssClass="lightbox btnDefault" runat="server" Text="Hafta" />
                        <asp:Button ID="btnMonth" CssClass="lightbox btnDefault" runat="server" Text="Ay" />
                        <asp:Button ID="btnYear" CssClass="lightbox btnDefault" runat="server" Text="Yıl" />
                        <asp:DropDownList runat="server" ID="ddlmail" Visible="false"></asp:DropDownList>
                        <label id="lbl1" runat="server" visible="false">Saat</label>
                        <asp:DropDownList runat="server" ID="ddlstart" Visible="false">
                            <asp:ListItem Text="Seçiniz" Value="0" />
                            <asp:ListItem Text="00:00" Value="00" />
                            <asp:ListItem Text="01:00" Value="01" />
                            <asp:ListItem Text="02:00" Value="02" />
                            <asp:ListItem Text="03:00" Value="03" />
                            <asp:ListItem Text="04:00" Value="04" />
                            <asp:ListItem Text="05:00" Value="05" />
                            <asp:ListItem Text="06:00" Value="06" />
                            <asp:ListItem Text="07:00" Value="07" />
                            <asp:ListItem Text="08:00" Value="08" />
                            <asp:ListItem Text="09:00" Value="09" />
                            <asp:ListItem Text="10:00" Value="10" />
                            <asp:ListItem Text="11:00" Value="11" />
                            <asp:ListItem Text="12:00" Value="12" />
                            <asp:ListItem Text="13:00" Value="13" />
                            <asp:ListItem Text="14:00" Value="14" />
                            <asp:ListItem Text="15:00" Value="15" />
                            <asp:ListItem Text="16:00" Value="16" />
                            <asp:ListItem Text="17:00" Value="17" />
                            <asp:ListItem Text="18:00" Value="18" />
                            <asp:ListItem Text="19:00" Value="19" />
                            <asp:ListItem Text="20:00" Value="20" />
                            <asp:ListItem Text="21:00" Value="21" />
                            <asp:ListItem Text="22:00" Value="22" />
                            <asp:ListItem Text="23:00" Value="23" />
                        </asp:DropDownList>

                        <asp:DropDownList runat="server" ID="ddlend" Visible="false">
                            <asp:ListItem Text="Seçiniz" Value="0" />
                            <asp:ListItem Text="00:00" Value="00" />
                            <asp:ListItem Text="01:00" Value="01" />
                            <asp:ListItem Text="02:00" Value="02" />
                            <asp:ListItem Text="03:00" Value="03" />
                            <asp:ListItem Text="04:00" Value="04" />
                            <asp:ListItem Text="05:00" Value="05" />
                            <asp:ListItem Text="06:00" Value="06" />
                            <asp:ListItem Text="07:00" Value="07" />
                            <asp:ListItem Text="08:00" Value="08" />
                            <asp:ListItem Text="09:00" Value="09" />
                            <asp:ListItem Text="10:00" Value="10" />
                            <asp:ListItem Text="11:00" Value="11" />
                            <asp:ListItem Text="12:00" Value="12" />
                            <asp:ListItem Text="13:00" Value="13" />
                            <asp:ListItem Text="14:00" Value="14" />
                            <asp:ListItem Text="15:00" Value="15" />
                            <asp:ListItem Text="16:00" Value="16" />
                            <asp:ListItem Text="17:00" Value="17" />
                            <asp:ListItem Text="18:00" Value="18" />
                            <asp:ListItem Text="19:00" Value="19" />
                            <asp:ListItem Text="20:00" Value="20" />
                            <asp:ListItem Text="21:00" Value="21" />
                            <asp:ListItem Text="22:00" Value="22" />
                            <asp:ListItem Text="23:00" Value="23" />
                        </asp:DropDownList>
                    </div>
                    <asp:DropDownList ID="ddlCampaign" AutoPostBack="True" runat="server" Visible="false"></asp:DropDownList>
                    <div class="user">
                        <asp:Label ID="lblScript" runat="server" />
                        <asp:Label ID="lblScript1" runat="server" />
                        <asp:Label ID="lblScript2" runat="server" />
                        <asp:Label ID="lblScript3" runat="server" />
                        <asp:Label ID="lblScript4" runat="server" />
                        <div id='userDay' class="user"></div>
                        <div id='userDayTable' class="daytable"></div>

                        <div id='BankOrderCount2'></div>
                        <div id='BankOredCountTable2'></div>
                        <div id='BankOrderCount3'></div>
                        <div id='BankOredCountTable3'></div>

                        <div id='BankOrderCount'></div>
                        <div id='BankOrderCountTable'></div>
                        <div id='BankOrderCount4'></div>
                        <div id='BankOredCountTable4'></div>


                    </div>

                    <div class="product">

                        <asp:Label ID="lblScriptProductByDate" runat="server" />
                        <asp:Label ID="lblScriptProductByCategory" runat="server" />
                        <asp:Label ID="lblScriptProductByBrand" runat="server" />
                        <asp:Label ID="lblScriptProductBySupplier" runat="server" />
                        <asp:Label ID="lblScriptProductByStatus" runat="server" />
                        <asp:Label ID="lblScriptProductByManager" runat="server" />
                        <asp:Label ID="lblScriptProductByTextileGroup" runat="server" />
                        <asp:Label ID="lblScriptProductByStock" runat="server" />
                        <asp:Label ID="lblScriptProductByPrice" runat="server" />
                        <asp:Label ID="lblScriptProductByAuthor" runat="server" />
                        <asp:Label ID="lblScriptProductByPublisher" runat="server" />

                        <div id='lineProductByDate' class="user"></div>
                        <div id='tableProductByDate' class="daytable"></div>
                        <div id='pieProductByCategory'></div>
                        <div id='tableProductByBrand'></div>
                        <div id='pieProductByBrand'></div>
                        <div id='tableProductByCategory'></div>

                        <div id='pieProductBySupplier'></div>
                        <div id='tableProductBySupplier'></div>
                        <div id='pieProductByStatus'></div>
                        <div id='tableProductByStatus'></div>

                        <div id='pieProductByManager'></div>
                        <div id='tableProductByManager'></div>
                        <div id='pieProductByTextileGroup'></div>
                        <div id='tableProductByTextileGroup'></div>

                        <div id='pieProductByStock'></div>
                        <div id='tableProductByStock'></div>
                        <div id='pieProductByPrice'></div>
                        <div id='tableProductByPrice'></div>

                        <div id='pieProductByAuthor'></div>
                        <div id='tableProductByAuthor'></div>
                        <div id='pieProductByPublisher'></div>
                        <div id='tableProductByPublisher'></div>
                    </div>

                    <div class="order">
                        <asp:Label ID="lblScriptOrderByDate" runat="server" />
                        <asp:Label ID="lblScriptOrderByStatus" runat="server" />
                        <asp:Label ID="lblScriptOrderByPayType" runat="server" />
                        <asp:Label ID="lblScriptOrderByBank" runat="server" />
                        <asp:Label ID="lblScriptOrderByCargo" runat="server" />
                        <asp:Label ID="lblScriptOrderByCity" runat="server" />

                        <div class="clear"></div>
                        <div id='lineOrderByDate' class="user"></div>
                        <div id='tableOrderByDate' class="daytable"></div>

                        <div id='pieOrderByStatus'></div>
                        <div id='tableOrderByStatus'></div>
                        <div class="clear"></div>
                        <div id='pieOrderByPayType'></div>
                        <div id='tableOrderByPayType'></div>
                        <div class="clear"></div>
                        <div id='pieOrderByBank'></div>
                        <div id='tableOrderByBank'></div>
                        <div class="clear"></div>
                        <div id='pieOrderByCargo'></div>
                        <div id='tableOrderByCargo'></div>
                        <div class="clear"></div>
                        <div id='pieOrderByCity'></div>
                        <div class="clear"></div>
                        <div id='tableOrderByCity'></div>
                    </div>

                    <div class="cart-adet">

                        <asp:Label ID="lblScriptCartOrderByDate" runat="server" />
                        <asp:Label ID="lblScriptCartOrderByStatus" runat="server" />
                        <asp:Label ID="lblScriptCartOrderByPayType" runat="server" />
                        <asp:Label ID="lblScriptCartOrderByBank" runat="server" />
                        <asp:Label ID="lblScriptCartOrderByCargo" runat="server" />
                        <asp:Label ID="lblScriptCartOrderByCity" runat="server" />

                        <div id='lineCartOrderByDate' class="user"></div>
                        <div id='tableCartOrderByDate' class="daytable"></div>

                        <div id='pieCartOrderByPayType'></div>
                        <div id='pieCartOrderByBank'></div>
                        <div id='tableCartOrderByPayType'></div>
                        <div id='tableCartOrderByBank'></div>
                        <div class="clear"></div>
                        <div id='pieCartOrderByCargo'></div>
                        <div id='pieCartOrderByCity'></div>
                        <div id='tableCartOrderByCargo'></div>
                        <div id='tableCartOrderByCity'></div>

                    </div>

                    <div class="cart-fiyat">

                        <asp:Label ID="lblScriptCartSaleByDate" runat="server" />
                        <asp:Label ID="lblScriptCartSaleByStatus" runat="server" />
                        <asp:Label ID="lblScriptCartSaleByPayType" runat="server" />
                        <asp:Label ID="lblScriptCartSaleByBank" runat="server" />
                        <asp:Label ID="lblScriptCartSaleByCargo" runat="server" />
                        <asp:Label ID="lblScriptCartSaleByCity" runat="server" />
                        <div id='lineCartSaleByDate' class="user"></div>
                        <div id='tableCartSaleByDate' class="daytable"></div>
                        <div id='pieCartSaleByPayType'></div>
                        <div id='pieCartSaleByBank'></div>
                        <div id='tableCartSaleByPayType'></div>
                        <div id='tableCartSaleByBank'></div>
                        <div id='pieCartSaleByCargo'></div>
                        <div id='pieCartSaleByCity'></div>
                        <div id='tableCartSaleByCargo'></div>
                        <div id='tableCartSaleByCity'></div>

                    </div>

                    <div class="banks">
                        <asp:Label ID="lblScriptBankInstallmentByDate" runat="server" />
                        <asp:Label ID="lblScriptBankInstallmentByBank" runat="server" />
                        <div id='lineBankInstallmentByDate' class="user"></div>
                        <div id='tableBankInstallmentByDate' class="daytable"></div>
                        <asp:PlaceHolder ID="phLabel" runat="server"></asp:PlaceHolder>
                        <asp:PlaceHolder ID="phPie" runat="server"></asp:PlaceHolder>
                    </div>

                    <div class="sales">

                        <asp:Label ID="lblScriptSaleByDate" runat="server" />
                        <asp:Label ID="lblScriptSaleByStatus" runat="server" />
                        <asp:Label ID="lblScriptSaleByPayType" runat="server" />
                        <asp:Label ID="lblScriptSaleByBank" runat="server" />
                        <asp:Label ID="lblScriptSaleByCargo" runat="server" />
                        <asp:Label ID="lblScriptSaleByCity" runat="server" />
                        <div id='lineSaleByDate' class="user"></div>
                        <div id='tableSaleByDate' class="daytable"></div>
                        <div id='pieSaleByStatus'></div>
                        <div id='pieSaleByPayType'></div>
                        <div id='tableSaleByStatus'></div>
                        <div id='tableSaleByPayType'></div>
                        <div class="clear"></div>
                        <div id='pieSaleByBank'></div>
                        <div id='pieSaleByCargo'></div>
                        <div id='tableSaleByBank'></div>
                        <div id='tableSaleByCargo'></div>
                        <div class="clear"></div>
                        <div id='pieSaleByCity'></div>
                        <div class="clear"></div>
                        <div id='tableSaleByCity'></div>

                    </div>

                    <div class="mail-personel">

                        <span id="spn1" runat="server" visible="false">Personele Göre Ticket Sayısı</span>
                        <div id="pieMailByStatus"></div>
                        <div id="tableMailByStatus"></div>

                        <span id="spn2" runat="server" visible="false">Personele Göre Toplam Ticket Sayısı</span>
                        <div id="pieMailByBank"></div>
                        <div id="tableMailByBank"></div>

                    </div>

                    <div class="mail-ticket">


                        <span id="spn4" runat="server" visible="false">Günlük Ticket Sayısı</span>
                        <div id='lineMailByDate' class="user"></div>
                        <div id='tableMailByDate' class="daytable"></div>

                        <span id="spn3" runat="server" visible="false">Saate Göre Ticket Sayısı</span>
                        <div id="lineMailByHour" class="user"></div>
                        <div id="tableMailByHour" class="daytable"></div>

                    </div>

                    <div class="salesman">
                        <div id="PaymentTypeOrderCount"></div>
                        <div id="PaymentTypeOrderCountTable"></div>
                        <div id="cyrusTotalYear"></div>
                        <div id="cyrusTotalYearTable"></div>
                    </div>

                    <div class="mail" runat="server" id="divMail" visible="false">
                        <div class="toggleContent">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Kampanya Adı:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label7" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Kampanya Mail Sayısı:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label8" runat="server"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Gönderilen Mail Sayısı:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label9" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Gönderiliş Tarihi:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label10" runat="server"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Tıklanma Sayısı:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label12" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label>Complaint Sayısı:</label>
                                        <label class="labelInput">
                                            <asp:Label ID="Label13" runat="server"></asp:Label></label>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <asp:Label ID="Label1" runat="server" />
                                    <asp:Label ID="lblScriptClicked" runat="server" />
                                    <asp:Label ID="lblScriptOpenAndClick" runat="server" />
                                    <asp:Label ID="lblScriptBounce" runat="server" />
                                    <asp:Label ID="lblScriptSendAndBounce" runat="server" />
                                    <asp:Label ID="lblScriptSendAndComplaint" runat="server" />
                                </div>
                                <div>
                                    <div id='reportGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='reportTable' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='ClickedGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='ClickedTable' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='openedAndClickedGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <div id='openedAndClickedTable' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='bounceGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='bounceTable' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='sendAndBounceGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='sendAndBounceTable' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='sendAndComplaintGraph' style="margin: 0 auto; width: 800px;"></div>
                                    <br />
                                    <div id='sendAndComplaintTable' style="margin: 0 auto; width: 800px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
            <ProgressTemplate>
                <div class="modalPopup">
                    <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                    <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                </div>
            </ProgressTemplate>
        </asp:ModalUpdateProgress>
    </form>
</body>
</html>
