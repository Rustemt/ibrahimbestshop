<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="uc1" TagName="CFileList" Src="CFileList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CImageList" Src="CImageList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CTabList" Src="CTabList.ascx" %>
<%@ Register Src="MultiAdmin.ascx" TagName="MultiAdmin" TagPrefix="uc2" %>
<%--<%@ Register TagPrefix="HB" Namespace="Bean.Controls" Assembly="TabControl" %>--%>
<%@ Register TagPrefix="uc1" TagName="CUnitList" Src="CUnitList.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CDiscountList" Src="CBulkDiscount.ascx" %>
<%--<%@ Register TagPrefix="uc1" TagName="cproductsizelist" Src="cproductsizelist.ascx" %>--%>

<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProduct" CodeBehind="editproduct.aspx.vb" %>

<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title>Ürün Düzenle</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <script type="text/javascript">
        function SelectCat() {
            document.getElementById("txtCategories").value = ob_t2_list_checked();
        }

        function SelectCat2(e) {

            if (e.checked == true) {
                document.getElementById("txtCategories").value = document.getElementById("txtCategories").value + e.id.replace("chk_", "") + ","

            }
            else {
                document.getElementById("txtCategories").value = document.getElementById("txtCategories").value.replace(e.id.replace("chk_", "") + ",", "")

            }
        }

        function AuthorSelected(source, eventArgs) {
            hidobj = document.getElementById("<%#AuthorHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }
        function PublisherSelected(source, eventArgs) {
            hidobj = document.getElementById("<%#PublisherHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }

        function MarkSelected(source, eventArgs) {
            hidobj = document.getElementById("<%#MarkHiddenField.ClientID%>");
            hidobj.value = eventArgs.get_value();
        }
        function CalcDesi() {
            var xen = document.getElementById("txtBEn").value.toString().replace(",", ".");
            var xboy = document.getElementById("txtBBoy").value.toString().replace(",", ".");
            var xyuk = document.getElementById("txtBYukseklik").value.toString().replace(",", ".");
            var m3 = Number(xen) * Number(xboy) * Number(xyuk)
            document.getElementById("txtBDesi").value = String(m3 / 3000).replace(".", ",");
        }


        function UploadChecked(s) {
            if (s.checked) {
                var txt = document.getElementById('txtFileName')
                var lbl = document.getElementById('lblDosyaAdi')
                var oFile = document.getElementById('oFile')
                oFile.style.display = "block";
                txt.style.display = "none";
                lbl.style.display = "none";
            }
            else {
                var txt = document.getElementById('txtFileName')
                var lbl = document.getElementById('lblDosyaAdi')
                var oFile = document.getElementById('oFile')
                oFile.style.display = "none";
                txt.style.display = "block";
                lbl.style.display = "block";
            }
        }

    </script>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="pagePopup pageProductEdit" style="width: 1360px">
            <div class="boxToggle" id="TabContainer" runat="server">
                <div class="toggleTitle toggleMini">
                    <div class="titleText">Ürün Düzenle</div>
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#tab_1"><%=GetGlobalResourceObject("admin", "ProductInformation")%></a></li>
                            <li><a href="#tab_2"><%=GetGlobalResourceObject("admin", "ProductDetails")%>(html)</a></li>
                            <li><a href="#tab_3"><%=GetGlobalResourceObject("admin", "ProductSpecialCodes")%></a></li>
                            <li><a href="#tab_4"><%=GetGlobalResourceObject("admin", "UnitDefinitions")%></a></li>
                            <li><a href="#tab_5"><%=GetGlobalResourceObject("admin", "ProductImages")%></a></li>
                            <li><a href="#tab_6"><%=GetGlobalResourceObject("admin", "ProductFiles")%></a></li>
                            <li><a href="#tab_7"><%=GetGlobalResourceObject("admin", "SeoDefinitions")%></a></li>
                            <li runat="server" id="tab_8_link"><a href="#<%= tab_8.ClientId %>">Karşılaştırma Siteleri</a></li>
                            <li><a href="#tab_9"><%=GetGlobalResourceObject("admin", "ExtraTabs")%></a></li>
                            <li><a href="#tab_10"><%=GetGlobalResourceObject("admin", "Integration")%></a></li>
                            <li><a href="#tab_11">Adetli Satış</a></li>
                        </ul>
                    </div>
                </div>
                <div class="toggleContent">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Label Text="" ID="lbl" runat="server" />
                    <div class="alert alert-error" id="div1" runat="server" visible="false">
                        <asp:Label ID="lbllicance" Text="Bu Ürün Domaininize Ait Değildir.Detaylı bilgi için info@proticaret.org adresimizden bize ulaşabilirsiniz." runat="server"></asp:Label>
                    </div>
                    <div class="tabContent">
                        <div class="tab" id="tab_1">
                            <div class="alert alert-info" id="divalert" runat="server" visible="false">
                                <asp:Label ID="lblErr" runat="server"></asp:Label>
                            </div>
                            <div class="dataForm">
                                <div class="col1-1">
                                    <div class="boxToggle">
                                        <div class="toggleTitle">
                                            <div class="titleText">
                                                <asp:Label ID="Label51" runat="server"><%=GetGlobalResourceObject("admin", "Categories")%></asp:Label>
                                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="<%$ Resources:admin,CategoriesProductMsg1 %>" Enabled="false" ControlToValidate="txtCategories">*</asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="toggleContent">
                                            <div style="height: 600px; overflow: scroll;">
                                                <asp:Literal ID="TreeView" runat="server" EnableViewState="False"></asp:Literal>
                                            </div>

                                            <label>
                                                <asp:Label ID="Label52" runat="server" Width="100%"><%=GetGlobalResourceObject("admin", "RelatedCategories")%> :</asp:Label></label>
                                            <asp:Label ID="lblCategories" runat="server" CssClass="alert alert-info textRed"></asp:Label>

                                            <asp:TextBox ID="txtCatgoryCode" runat="server" Style="visibility: hidden;" Width="0px"></asp:TextBox>
                                            <asp:TextBox ID="txtCategories" runat="server" Style="visibility: hidden;" Width="0px"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="col1-3">
                                    <div class="dataForm">
                                        <div class="row">
                                            <div class="colTwo">
                                                <div class="boxToggle">
                                                    <div class="toggleTitle">
                                                        <div class="titleText"><%=GetGlobalResourceObject("admin", "ProductInformation")%></div>
                                                    </div>
                                                    <div class="toggleContent">
                                                        <div class="dataForm">
                                                            <div class="row">
                                                                <div class="colOne">
                                                                    <label>
                                                                        <%=GetGlobalResourceObject("admin", "ProductCode2")%> :
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStokKodu" ErrorMessage="Lütfen Stok Kodu giriniz.">*</asp:RequiredFieldValidator></label>
                                                                    <asp:TextBox ID="txtStokKodu" runat="server" MaxLength="99"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colOne">
                                                                    <label>
                                                                        <%=GetGlobalResourceObject("admin", "ProductName")%> :
                                                                        <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ControlToValidate="txtUrunAdi" ErrorMessage="Lütfen Ürün Adı giriniz.">*</asp:RequiredFieldValidator></label>
                                                                    <asp:TextBox ID="txtUrunAdi" runat="server" MaxLength="254" TextMode="MultiLine"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "ProductType")%> :</label>
                                                                    <asp:DropDownList ID="ddlstoktype" runat="server" AutoPostBack="True">
                                                                        <asp:ListItem></asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label>&nbsp;</label>
                                                                    <asp:DropDownList ID="ddlStokSubType" runat="server" Enabled="False"></asp:DropDownList>
                                                                    <asp:Label ID="lblHata" Visible="false" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colOne">
                                                                    <div class="alert alert-info" id="divalert2" runat="server" visible="false">
                                                                        <asp:Label ID="lblErr2" runat="server" EnableViewState="False" Font-Size="Smaller" ForeColor="Red"></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "PaymentMethod")%> :</label>
                                                                    <asp:DropDownList ID="ddlFcampain" runat="server"></asp:DropDownList>
                                                                </div>
                                                                <div class="colTwo colBtn">
                                                                    <label><%=GetGlobalResourceObject("admin", "Brand")%> :</label>
                                                                    <asp:TextBox ID="txtMark" autocomplete="off" runat="server"></asp:TextBox>
                                                                    <cc1:AutoCompleteExtender ID="MarkExt" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="MarkSelected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></cc1:AutoCompleteExtender>
                                                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />

                                                                    <%--lnkMarks.NavigateUrl = "Javascript:var PopUpWin = window.open(""EditMark.aspx?IND=" & 0 & "&CID=0"","""",""width=800,height=570,scrollbars=1,status=1,toolbar=0,resizable=1"")"--%>
                                                                    <a href="javascript:void(0)" id="lnkMarks" runat="server" class="btnDefault" onclick="popupWindow(800,570,50,'EditMark.aspx?IND=0&CID=0','popup');"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "New2")%></a>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "Tax")%> :</label>
                                                                    <asp:DropDownList ID="ddlKdv" runat="server"></asp:DropDownList>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "TextileFormat")%> :</label>
                                                                    <asp:DropDownList ID="ddlProductSizeOptions" runat="server" onChange="textilChange()"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "StockQuantity")%> :</label>
                                                                    <ew:NumericBox ID="txtStockAdedi" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="7">0</ew:NumericBox>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "NoStockSell")%> :</label>
                                                                    <label class="labelInput">
                                                                        <asp:CheckBox ID="chkSellNoneStock" runat="server"></asp:CheckBox>
                                                                        Aktif/Pasif</label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "StatusActive")%> :</label>
                                                                    <label class="labelInput">
                                                                        <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox></label>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "HomePageShow")%> :</label>
                                                                    <label class="labelInput">
                                                                        <asp:CheckBox ID="chkShowInMainPage" runat="server" Text="Aktif/Pasif"></asp:CheckBox></label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "ShowOrder")%> :</label>
                                                                    <ew:NumericBox ID="txtShowOrder" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">100</ew:NumericBox>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "XmlSource")%> :</label>
                                                                    <asp:DropDownList ID="ddlIsPenta" runat="server"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "Provider")%> :</label>
                                                                    <asp:DropDownList ID="ddlProvider" runat="server"></asp:DropDownList>
                                                                    <asp:TextBox ID="txtProvider" runat="server" MaxLength="254" Visible="False"></asp:TextBox>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "ManufacturerCode")%> :</label>
                                                                    <asp:TextBox ID="txtProviderStockCode" runat="server" MaxLength="254"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "ProductResponsible")%> :</label>
                                                                    <asp:DropDownList ID="ddlUser" runat="server"></asp:DropDownList>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "MaximumQuantitySales")%> :</label>
                                                                    <ew:NumericBox ID="txtMaxQty" runat="server" DecimalSign="," GroupingSeparator=" ">0</ew:NumericBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "DescriptionProducts")%> :</label>
                                                                    <asp:TextBox ID="txtAcıklama" runat="server" MaxLength="500" Height="100" TextMode="MultiLine"></asp:TextBox>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "Keywords")%> :</label>
                                                                    <asp:TextBox ID="txtSearchKeywords" runat="server" MaxLength="3000" Height="100" TextMode="MultiLine"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "SalesStartDate")%> :</label>
                                                                    <ew:CalendarPopup ID="txtStartDate" runat="server" AllowArbitraryText="False" CalendarLocation="Bottom"
                                                                        ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True"
                                                                        ShowGoToToday="True" Text="..." Width="80px" Height="28px" CssClass="fLeft">
                                                                    </ew:CalendarPopup>
                                                                    <ew:TimePicker ID="txtStartTime" runat="server" ClearTimeText="Sil" DisableTextBoxEntry="False"
                                                                        LowerBoundTime="2011-03-24" MinuteInterval="30" Nullable="True" PopupHeight=""
                                                                        PopupWidth="" ShowClearTimeText="True" UpperBoundTime="03/24/2011 23:30:00" Width="60px" Height="28px">
                                                                    </ew:TimePicker>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "SalesEndDate")%> :</label>
                                                                    <ew:CalendarPopup ID="txtEndDate" runat="server" AllowArbitraryText="False" CalendarLocation="Bottom"
                                                                        ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True"
                                                                        ShowGoToToday="True" Text="..." Width="80px" Height="28px" CssClass="fLeft">
                                                                    </ew:CalendarPopup>
                                                                    <ew:TimePicker ID="txtEndTime" runat="server" ClearTimeText="Sil" DisableTextBoxEntry="False"
                                                                        LowerBoundTime="2011-03-24" MinuteInterval="30" Nullable="True" PopupHeight=""
                                                                        PopupWidth="" ShowClearTimeText="True" UpperBoundTime="03/24/2011 23:30:00" Width="60px" Height="28px">
                                                                    </ew:TimePicker>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="colTwo">
                                                <div class="boxToggle">
                                                    <div class="toggleTitle">
                                                        <div class="titleText"><%=GetGlobalResourceObject("admin", "DefaultUnitInformation")%></div>
                                                    </div>
                                                    <div class="toggleContent">
                                                        <div class="dataForm noneDataForm">
                                                            <div class="row">
                                                                <div class="colOne">
                                                                    <table cellpadding="2" cellspacing="0" border="0" width="100%">
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label23" runat="server"><%=GetGlobalResourceObject("admin", "Barcode")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtBBarcode" runat="server" MaxLength="254"></asp:TextBox></td>
                                                                            <td align="center" rowspan="4" valign="top" colspan="2">
                                                                                <table>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Image ID="imge" runat="server" /></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center" valign="middle" style="white-space: nowrap;">
                                                                                            <input id="oFile" runat="server" style="background-color: #ddd; width: 125px; font-size: xx-small; border: 1px solid; height: auto;" type="file" />
                                                                                            <div class="row">
                                                                                                <ul class="tabMenu">
                                                                                                    <li></li>
                                                                                                    <li></li>
                                                                                                    <li></li>
                                                                                                    <li></li>
                                                                                                    <li>
                                                                                                        <asp:HyperLink ID="lnkEditImage" NavigateUrl="#tab_5" runat="server"><%=GetGlobalResourceObject("admin", "Edit")%></asp:HyperLink></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label18" runat="server"><%=GetGlobalResourceObject("admin", "UnitName")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <asp:TextBox ID="txtBBirimAdi" runat="server" MaxLength="254">Adet</asp:TextBox>
                                                                                <asp:TextBox ID="txtBAciklama" runat="server" MaxLength="254" Visible="False" Width="5px">Adet</asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label19" runat="server"><%=GetGlobalResourceObject("admin", "Multiplier")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBCarpan" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">1</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" valign="top"></td>
                                                                            <td valign="top"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label48" runat="server"><%=GetGlobalResourceObject("admin", "OldPurchasePrice")%>:</asp:Label></strong></td>
                                                                            <td style="white-space: nowrap">
                                                                                <asp:Label ID="txtEAlisFiyati" runat="server"></asp:Label></td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label33" runat="server"><%=GetGlobalResourceObject("admin", "PriceChangeDate")%>:</asp:Label></strong></td>
                                                                            <td colspan="3">
                                                                                <asp:Label ID="lblTarih" runat="server"></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("admin", "IncludedTax")%>:</asp:Label></strong></td>
                                                                            <td>
                                                                                <asp:CheckBox ID="chkKdvDahil" runat="server"></asp:CheckBox></td>
                                                                            <td>
                                                                                <asp:Label ID="Label46" runat="server"><%=GetGlobalResourceObject("admin", "AvailsProduct")%>%(xml)</asp:Label></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label13" runat="server"><%=GetGlobalResourceObject("admin", "PurchasePrice")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBAlisFiyati" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="114px">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlAPb" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAddA" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label17" runat="server"><%=GetGlobalResourceObject("admin", "MarketPrice")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBPiyasaFiyati" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="114px">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPbP" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtAddP" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label43" runat="server"><%=GetGlobalResourceObject("admin", "TransferPrice")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati0" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="114px">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb0" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd0" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <asp:Label ID="Label1" runat="server"><%=GetGlobalResourceObject("admin", "Discount")%>(%) :</asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label20" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice1Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati1" runat="server" Width="114px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb1" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd1" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtIsk1" runat="server" Width="65px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right" style="white-space: nowrap"><strong>
                                                                                <asp:Label ID="Label21" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice2Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati2" runat="server" Width="114px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb2" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd2" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtIsk2" runat="server" Width="65px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label22" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice3Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati3" runat="server" Width="114px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb3" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd3" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtIsk3" runat="server" Width="65px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label45" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice4Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="114px">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb4" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtIsk4" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label69" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice5Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="114px">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb5" runat="server"></asp:DropDownList></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtAdd5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px"></ew:NumericBox></td>
                                                                            <td>
                                                                                <ew:NumericBox
                                                                                    ID="txtIsk5" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right" Width="65px">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="white-space: nowrap" align="right"><strong>
                                                                                <asp:Label ID="Label24" runat="server" Width="120px"><%=GetGlobalResourceObject("admin", "TopLengthHeight")%>(cm) :</asp:Label></strong></td>
                                                                            <td colspan="3">
                                                                                <ew:NumericBox ID="txtBEn" runat="server" Width="63px" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                                                <ew:NumericBox ID="txtBBoy" runat="server" Width="63px" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                                                <ew:NumericBox ID="txtBYukseklik" runat="server" Width="63px" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Labeldesi30" runat="server"><%=GetGlobalResourceObject("admin", "LoadWeight")%>:</asp:Label></strong></td>
                                                                            <td colspan="3">
                                                                                <ew:NumericBox ID="txtBDesi" runat="server" Width="96px" TextAlign="Right" DecimalSign="," GroupingSeparator=" " PositiveNumber="True">0</ew:NumericBox>
                                                                                <a href="javascript:CalcDesi();" class="btnDefault" title="" style="margin-left: 10px;"><i class="fa fa-calculator"></i> <%=GetGlobalResourceObject("admin", "CalculateWeight")%></a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("admin", "CalculateShipping")%> :</asp:Label></strong></td>
                                                                            <td colspan="3">
                                                                                <asp:DropDownList ID="ddlForceCargo" runat="server" Width="189px">
                                                                                    <asp:ListItem Text="<%$ Resources:admin,IsDefault %>" Selected="True" Value="0"></asp:ListItem>
                                                                                    <asp:ListItem Text="<%$ Resources:admin,CalculateShipping %>" Value="1"></asp:ListItem>
                                                                                    <asp:ListItem Text="<%$ Resources:admin,FreeShipping %>" Value="2"></asp:ListItem>
                                                                                </asp:DropDownList></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label27" runat="server"><%=GetGlobalResourceObject("admin", "Weight")%>(gr):</asp:Label></strong></td>
                                                                            <td colspan="3">
                                                                                <ew:NumericBox ID="txtBAgirlik" runat="server" Width="189px" DecimalSign="," GroupingSeparator=" " TextAlign="Right" PositiveNumber="True">0</ew:NumericBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="4">
                                                                                <p>
                                                                                    <strong>
                                                                                        <asp:Label ID="Label25" runat="server" Width="100%"><%=GetGlobalResourceObject("admin", "ProductStatusInformation")%> :</asp:Label></strong>
                                                                                </p>
                                                                                <div style="background-color: #FFF; padding: 10px;">
                                                                                    <div class="dataForm">
                                                                                        <div class="row margin-none">
                                                                                            <div class="colTwo margin-none">
                                                                                                <div class="checkList">
                                                                                                    <ul>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkHizliKargo" runat="server" Text="<%$ Resources:admin,FastShipping %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkEnUcuzUrun" runat="server" Text="<%$ Resources:admin,BestCheapProduct %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkAyniGunTeslim" runat="server" Text="<%$ Resources:admin,SameDayDelivery %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkOzelUrun" runat="server" Text="<%$ Resources:admin,SpecialtyProducts %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkIndirimliUrun" runat="server" Text="<%$ Resources:admin,DiscountProduct %>" ToolTip="" /></li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="colTwo margin-none">
                                                                                                <div class="checkList">
                                                                                                    <ul>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkSinirliSayidaUrun" runat="server" Text="<%$ Resources:admin,LimitedNumberProducts %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkFirsatUrunu" runat="server" Text="<%$ Resources:admin,OpportunityProduct %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkYeniUrun" runat="server" Text="<%$ Resources:admin,NewProducts %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkSokFiyatliUrun" runat="server" Text="<%$ Resources:admin,PricedShockProduct %>" ToolTip="" /></li>
                                                                                                        <li>
                                                                                                            <asp:CheckBox ID="chkHediyeliUrun" runat="server" Text="<%$ Resources:admin,GiftProducts %>" ToolTip="" /></li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </table>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_2">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label>Ürün Detay</label>
                                        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" EnableViewState="false" Height="500px" BasePath="/FCKeditor/"></FCKeditorV2:FCKeditor>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_3">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label>Ürün Özel Kodları / Özellikler</label>
                                    </div>
                                </div>
                                <div class="col1-1">
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code1")%>:</label>
                                            <asp:DropDownList ID="ddlCode1" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(1)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code2")%>:</label>
                                            <asp:DropDownList ID="ddlCode2" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(2)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code3")%>:</label>
                                            <asp:DropDownList ID="ddlCode3" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(3)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code4")%>:</label>
                                            <asp:DropDownList ID="ddlCode4" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(4)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code5")%>:</label>
                                            <asp:DropDownList ID="ddlCode5" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(5)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col1-1">
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code6")%>:</label>
                                            <asp:DropDownList ID="ddlCode6" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(6)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code7")%>:</label>
                                            <asp:DropDownList ID="ddlCode7" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(7)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code8")%>:</label>
                                            <asp:DropDownList ID="ddlCode8" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(8)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code9")%>:</label>
                                            <asp:DropDownList ID="ddlCode9" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(9)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code10")%>:</label>
                                            <asp:DropDownList ID="ddlCode10" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(10)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col1-1">
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code11")%>:</label>
                                            <asp:DropDownList ID="ddlCode11" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(11)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code12")%>:</label>
                                            <asp:DropDownList ID="ddlCode12" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(12)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Code13")%>:</label>
                                            <asp:DropDownList ID="ddlCode13" runat="server" AppendDataBoundItems="True"></asp:DropDownList>
                                            <a class="btnDefault" href="#" onclick="Code(13)"><i class="fa fa-plus"></i><%=GetGlobalResourceObject("admin", "Add")%></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label><%=GetGlobalResourceObject("admin", "Code14")%>: <small style="font-size: 9px;">*<%=GetGlobalResourceObject("admin", "Code1415ProductMsg1")%></small></label>
                                            <asp:TextBox runat="server" ID="txtKod14" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label><%=GetGlobalResourceObject("admin", "Code15")%>: <small style="font-size: 9px;">*<%=GetGlobalResourceObject("admin", "Code1415ProductMsg1")%></small></label>
                                            <asp:TextBox runat="server" ID="txtKod15" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col1-1">
                                    <div class="row">
                                        <div class="colOne">
                                            <label>
                                                <asp:Label ID="lblAuthor" runat="server"><%=GetGlobalResourceObject("admin", "AuthorName")%> :</asp:Label></label>
                                            <asp:TextBox autocomplete="off" ID="txtAuthor" runat="server"></asp:TextBox>
                                            <cc1:AutoCompleteExtender ID="AuthorExt" runat="server" TargetControlID="txtAuthor" ServicePath="~/services/MarkService.asmx"
                                                ServiceMethod="GetAuthors" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true"
                                                EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="AuthorSelected"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                            </cc1:AutoCompleteExtender>
                                            <asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label>
                                                <asp:Label ID="lblPublisher" runat="server"><%=GetGlobalResourceObject("admin", "PublisherName")%> :</asp:Label></label>
                                            <asp:TextBox autocomplete="off" ID="txtPublisher" runat="server"></asp:TextBox>
                                            <cc1:AutoCompleteExtender ID="PublisherExt" runat="server" TargetControlID="txtPublisher" ServicePath="~/services/MarkService.asmx"
                                                ServiceMethod="GetPublishers" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true"
                                                EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="PublisherSelected"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                            </cc1:AutoCompleteExtender>
                                            <asp:HiddenField ID="PublisherHiddenField" runat="server" Value="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_4">
                            <uc1:CUnitList ID="CUnitList1" runat="server"></uc1:CUnitList>
                        </div>
                        <div class="tab" id="tab_5">
                            <uc1:CImageList ID="CImageList1" runat="server"></uc1:CImageList>
                        </div>
                        <div class="tab" id="tab_6">
                            <uc1:CFileList ID="CFileList1" runat="server"></uc1:CFileList>
                        </div>
                        <div class="tab" id="tab_7">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <div class="dataForm">
                                            <div class="row">
                                                <div class="colOne">
                                                    <label>Seo Tanımları</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label><%=GetGlobalResourceObject("admin", "PageTitleSeo")%> :</label>
                                                    <asp:TextBox ID="txttitle" runat="server" MaxLength="99"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label><%=GetGlobalResourceObject("admin", "PageDescriptionSeo")%> :</label>
                                                    <asp:TextBox ID="txtdescription" runat="server" MaxLength="254"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label><%=GetGlobalResourceObject("admin", "PageKeywordsSeo")%> :</label>
                                                    <asp:TextBox ID="txtkeywords" runat="server" MaxLength="254"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label>
                                                        <asp:Label ID="Label53" runat="server" CssClass="Admin_Modul_Label2">Meta Tag:</asp:Label></label>
                                                    <asp:TextBox ID="txtMetatag" runat="server" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <div class="alert alert-info">* <%=GetGlobalResourceObject("admin", "SeoMsg1")%> <%=GetGlobalResourceObject("admin", "SeoMsg2")%></div>
                                                    <div class="alert">
                                                        <asp:Label ID="Label54" runat="server">&lt;meta name="robots" content="INDEX,FOLLOW" /&gt;</asp:Label><br />
                                                        <asp:Label ID="Label55" runat="server">&lt;meta name="robots" content="all" /&gt;</asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="tab" id="tab_8" runat="server">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colOne">
                                        <label>Karşılaştırma Sitesi</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Ürün sayfası :</label>
                                        <asp:TextBox ID="txtCompareUrl" runat="server" MaxLength="254"></asp:TextBox>
                                    </div>
                                    <div class="colTwo">
                                        <label>En Ucuz Site :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblSite" runat="server" ForeColor="#C00000"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>Tarama Zamanı :</label>
                                        <label class="labelInput">
                                            <asp:Label ID="lblLastCompare" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <div class="row">
                                            <div class="colOne" style="margin: 0;">
                                                <label>En Ucuz Fiyat :</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="colTwo">
                                                <label class="labelInput">
                                                    <asp:Label ID="lblComparePrice" runat="server" ForeColor="#C00000"></asp:Label></label>
                                            </div>
                                            <div class="colTwo">
                                                <label class="labelInput">
                                                    <asp:Label ID="lblComparePrice2" runat="server" ForeColor="#C00000"></asp:Label></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label>Sizin siteniz</label>
                                        <hr />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            Alış Fiyatı :
                                            <asp:Label ID="lblCompareAFiyati" runat="server"></asp:Label></label>
                                        <label class="labelInput">
                                            <asp:CheckBox ID="chkCompareActive" runat="server" Text="Fiyatı Otomatik Ayarla"></asp:CheckBox>
                                            <asp:Label ID="lblCompareAFiyati2" runat="server"></asp:Label></label>
                                    </div>
                                    <div class="colTwo">
                                        <label>
                                            Havale Fiyatı : Minimum Kar(%)
                                            <asp:Label ID="lblCompareHFiyati" runat="server"></asp:Label>
                                            <asp:Label ID="lblCompareHFiyati2" runat="server"></asp:Label></label>
                                        <ew:NumericBox ID="txtCompareHKar" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Left">0</ew:NumericBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            1. Satıs Fiyatı : Minimum Kar(%)
                                            <asp:Label ID="lblCompareSFiyati" runat="server"></asp:Label>
                                            <asp:Label ID="lblCompareSFiyati2" runat="server"></asp:Label></label>
                                        <ew:NumericBox ID="txtCompareSKar" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Left">0</ew:NumericBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab" id="tab_9">
                            <uc1:CTabList ID="CTabList1" runat="server"></uc1:CTabList>
                        </div>
                        <div class="tab" id="tab_10">
                            <uc2:MultiAdmin ID="MultiAdmin" runat="server" />
                        </div>
                        <div class="tab" id="tab_11">
                            <uc1:CDiscountList ID="CDiscountList" runat="server"></uc1:CDiscountList>
                            <div class="alert alert-info" id="divalerttoptan" runat="server">
                                <asp:Label Text="Toptan-Seri Lisansınız Bulunmamaktadır" runat="server" />
                            </div>
                        </div>

                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Kaydet&amp;Kapat" Visible="False" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnCopy" runat="server" Text="<%$ Resources:admin,CopyClone %>" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnCancel" runat="server" Text="<%$ Resources:admin,Close %>" CausesValidation="False" CssClass="btnDefault"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function textilChange() {
                var type = document.getElementById("ddlProductSizeOptions").value
                if (type == 0) {
                    $("#txtStockAdedi").attr('disabled', '');
                    $("#chkSellNoneStock").attr('disabled', '');
                }
                else {
                    $("#txtStockAdedi").attr('disabled', 'disabled');
                    $("#chkSellNoneStock").attr('disabled', 'disabled').attr('checked', false);
                }
            }
            function funStoktypeChange() {
                var stoktype = document.getElementById("ddlstoktype").value
                if (stoktype == 0) {
                    $("#ddlProductSizeOptions").attr('disabled', '');
                }
                else {
                    $("#ddlProductSizeOptions").val(0);
                    $("#ddlProductSizeOptions").attr('disabled', 'disabled');
                    $("#txtStockAdedi").attr('disabled', '');
                    $("#chkSellNoneStock").attr('disabled', '');

                }
            }
        </script>
    </form>
</body>
</html>
<script type="text/javascript">
    function Code(code_no) {
        var a = "<%= CatId  %>";
        popupWindow(600, 200, 50, '/admin/ecommerce/product/EditProductCode.aspx?IND=0&CatId=' + a + '&CID=' + code_no, 'popup');
    }

</script>
