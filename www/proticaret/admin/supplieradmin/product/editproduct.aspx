<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="uc1" TagName="CFileList" Src="~/admin/supplieradmin/product/cfilelist.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CImageList" Src="~/admin/supplieradmin/product/cimagelist.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CTabList" Src="~/admin/supplieradmin/product/ctablist.ascx" %>
<%--<%@ Register TagPrefix="HB" Namespace="Bean.Controls" Assembly="TabControl" %>--%>
<%@ Register TagPrefix="uc1" TagName="CUnitList" Src="~/admin/supplieradmin/product/cunitlist.ascx" %>
<%--<%@ Register TagPrefix="uc1" TagName="cproductsizelist" Src="cproductsizelist.ascx" %>--%>

<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.EditProduct1"
    CodeBehind="EditProduct.aspx.vb" %>

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
    <style type="text/css">
        div.TabContainer .ui-priority-primary
        {
            padding: 4px 4px 4px 4px !important;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div id="module" class="module">
        <div id="module_content">
            <div>
                <div id="TabContainer" class="TabContainer">
                    <ul>
                        <li><a href="#tab_1">Ürün Bilgileri</a></li>
                        <li><a href="#tab_2">Ürün Detayý(html)</a></li>
                        <li><a href="#tab_3">Ürün Özel Kodlarý</a></li>
                        <%--<li><a href="#tab_9">Renk Beden Tanýmlarý</a></li>--%>
                        <li><a href="#tab_4">Birim Tanýmlarý</a></li>
                        <li><a href="#tab_5">Ürün Resimleri</a></li>
                        <li><a href="#tab_6">Ürün Dosyalarý</a></li>
                        <li><a href="#tab_7">Seo Tanýmlarý</a></li>
                        <li runat="server" id="tab_8_link"><a href="#<%= tab_8.ClientId %>">Karþýlaþtýrma Siteleri</a></li>
                        <li><a href="#tab_9">Ekstra Tablar</a></li>
                    </ul>
                    <div id="tab_1">
                        <table id="pnl" cellpadding="0">
                            <tr>
                                <td valign="top">
                                    <div style="width: 190px; height: 550px; overflow: auto;">
                                        <asp:Label ID="Label52" CssClass="Admin_Normal_Banner" runat="server" Width="100%">Ýliþkili Kategoriler :</asp:Label>
                                        <asp:Label ID="lblCategories" CssClass="Admin_Modul_Label2" runat="server" Font-Size="Smaller"></asp:Label>
                                        <div style="white-space: nowrap">
                                            <asp:Label ID="Label51" runat="server" Width="100%" CssClass="Admin_Normal_Banner">Kategoriler</asp:Label>
                                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ErrorMessage="Lütfen Kategori Seçiniz."
                                                ControlToValidate="txtCategories">*</asp:RequiredFieldValidator>
                                        </div>
                                        <asp:Literal ID="TreeView" runat="server" EnableViewState="False"></asp:Literal>
                                        <asp:TextBox ID="txtCategories" runat="server" Style="visibility: hidden;" Width="0px"></asp:TextBox>
                                        <asp:Label ID="lblMsg" runat="server" CssClass="Admin_HataMesaji"></asp:Label></div>
                                </td>
                                <td valign="top">
                                    <table id="Table3" width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td valign="top">
                                                Ürün Bilgileri
                                                <table cellpadding="2" width="100%">
                                                    <tr>
                                                        <td align="right">
                                                            Stok Kodu :
                                                        </td>
                                                        <td style="white-space: nowrap;">
                                                            <asp:TextBox ID="txtStokKodu" runat="server" MaxLength="99"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStokKodu"
                                                                ErrorMessage="Lütfen Stok Kodu giriniz.">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" valign="top">
                                                            Ürün Adý :
                                                        </td>
                                                        <td style="white-space: nowrap;">
                                                            <asp:TextBox ID="txtUrunAdi" runat="server" MaxLength="254" TextMode="MultiLine"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ControlToValidate="txtUrunAdi"
                                                                ErrorMessage="Lütfen Ürün Adý giriniz.">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Marka :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtMark" autocomplete="off" Width="100px" runat="server"></asp:TextBox>
                                                            <cc1:AutoCompleteExtender ID="MarkExt" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx"
                                                                ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true"
                                                                EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="MarkSelected"
                                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                                            </cc1:AutoCompleteExtender>
                                                            <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                                            <asp:HyperLink ID="lnkMarks" runat="server" data-width="300" data-height="150" CssClass="fancyContent">Yeni</asp:HyperLink>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Kdv :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlKdv" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Tekstil Formatý :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlProductSizeOptions" runat="server" onChange="textilChange()">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Stok Adedi :
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtStockAdedi" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Stokta Yoksa Sat :
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkSellNoneStock" runat="server"></asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Durumu(Aktif) :
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox>
                                                            <asp:CheckBox ID="chkShowInMainPage" runat="server" Text="Ana Sayfada Göster :" TextAlign="Left">
                                                            </asp:CheckBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Gösterim Sýrasý :
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtShowOrder" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">100</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Xml Kaynaðý :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlIsPenta" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Tedarikçi :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlProvider" runat="server">
                                                            </asp:DropDownList>
                                                            <asp:TextBox ID="txtProvider" runat="server" MaxLength="254" Visible="False"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Üretici Kodu :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtProviderStockCode" runat="server" MaxLength="254"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Ürün Sorumlusu :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlUser" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none;">
                                                        <td align="right">
                                                            Ödeme Þekli :
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlFcampain" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            Max Satýþ Adedi :
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtMaxQty" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="44px">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" valign="top">
                                                            Kýsa Açýklama :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAcýklama" runat="server" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" valign="top" style="white-space: nowrap;">
                                                            Anahtar Kelimeler :<br />
                                                            Ürün aramada
                                                            <br />
                                                            kullanýlacak
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSearchKeywords" runat="server" MaxLength="3000" TextMode="MultiLine"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" style="white-space: nowrap;">
                                                            Satýþ Baþlama Tarihi :
                                                        </td>
                                                        <td>
                                                            <ew:CalendarPopup ID="txtStartDate" runat="server" AllowArbitraryText="False" CalendarLocation="Bottom"
                                                                ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True"
                                                                ShowGoToToday="True" Text="..." Width="60px">
                                                            </ew:CalendarPopup>
                                                            <ew:TimePicker ID="txtStartTime" runat="server" ClearTimeText="Sil" DisableTextBoxEntry="False"
                                                                LowerBoundTime="2011-03-24" MinuteInterval="30" Nullable="True" PopupHeight=""
                                                                PopupWidth="" ShowClearTimeText="True" UpperBoundTime="03/24/2011 23:30:00" Width="35px">
                                                            </ew:TimePicker>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" style="white-space: nowrap;">
                                                            Satýþ Bitiþ Tarihi :
                                                        </td>
                                                        <td>
                                                            <ew:CalendarPopup ID="txtEndDate" runat="server" AllowArbitraryText="False" CalendarLocation="Bottom"
                                                                ClearDateText="Sil" DisableTextBoxEntry="False" GoToTodayText="Bu Gün:" Nullable="True"
                                                                ShowGoToToday="True" Text="..." Width="60px">
                                                            </ew:CalendarPopup>
                                                            <ew:TimePicker ID="txtEndTime" runat="server" ClearTimeText="Sil" DisableTextBoxEntry="False"
                                                                LowerBoundTime="2011-03-24" MinuteInterval="30" Nullable="True" PopupHeight=""
                                                                PopupWidth="" ShowClearTimeText="True" UpperBoundTime="03/24/2011 23:30:00" Width="35px">
                                                            </ew:TimePicker>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td valign="top">
                                                Varsayýlan Birim Bilgileri
                                                <table cellpadding="2" width="100%">
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label23" runat="server">Barkod :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtBBarcode" runat="server" MaxLength="254"></asp:TextBox>
                                                        </td>
                                                        <td align="center" rowspan="4" valign="top" colspan="2">
                                                            <table width="143px">
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Image ID="imge" runat="server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" style="white-space: nowrap;">
                                                                        <input id="oFile" runat="server" style="background-color: #ddd; width: 125px; font-size: xx-small;
                                                                            border: 1px solid" type="file"  /><asp:HyperLink ID="lnkEditImage" NavigateUrl="#"
                                                                                onclick="$('#TabContainer').tabs('select', 4);" runat="server">Düzenle</asp:HyperLink>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label18" runat="server">Birim Adý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtBBirimAdi" runat="server" MaxLength="254">Adet</asp:TextBox><asp:TextBox
                                                                ID="txtBAciklama" runat="server" MaxLength="254" Visible="False" Width="5px">Adet</asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label19" runat="server">Çarpan :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBCarpan" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">1</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" valign="top">
                                                        </td>
                                                        <td valign="top">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label48" runat="server">Eski Alýþ Fiyatý:</asp:Label>
                                                        </td>
                                                        <td style="white-space: nowrap">
                                                            <asp:Label ID="txtEAlisFiyati" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label2" runat="server">Kdv Dahil:</asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:CheckBox ID="chkKdvDahil" runat="server"></asp:CheckBox>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label46" runat="server">Kâr%(xml)</asp:Label>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label13" runat="server">Alýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBAlisFiyati" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="64px">0</ew:NumericBox><asp:DropDownList ID="ddlAPb" runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAddA" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label17" runat="server">Piyasa Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBPiyasaFiyati" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="64px">0</ew:NumericBox><asp:DropDownList ID="ddlBPbP" runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAddP" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label43" runat="server">Havale Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati0" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="64px">0</ew:NumericBox><asp:DropDownList ID="ddlBPb0" runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd0" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label1" runat="server">Ýndirim(%) :</asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label20" runat="server">1.Satýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati1" runat="server" Width="64px" DecimalSign=","
                                                                GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox><asp:DropDownList ID="ddlBPb1"
                                                                    runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd1" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtIsk1" runat="server" Width="40px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" style="white-space: nowrap">
                                                            <asp:Label ID="Label21" runat="server">2.Satýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati2" runat="server" Width="64px" DecimalSign=","
                                                                GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox><asp:DropDownList ID="ddlBPb2"
                                                                    runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd2" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtIsk2" runat="server" Width="40px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label22" runat="server">3.Satýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati3" runat="server" Width="64px" DecimalSign=","
                                                                GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox><asp:DropDownList ID="ddlBPb3"
                                                                    runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd3" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtIsk3" runat="server" Width="40px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label45" runat="server">4.Satýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati4" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="64px">0</ew:NumericBox><asp:DropDownList ID="ddlBPb4" runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd4" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtIsk4" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label69" runat="server">5.Satýþ Fiyatý :</asp:Label>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtBSatisFiyati5" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="64px">0</ew:NumericBox><asp:DropDownList ID="ddlBPb5" runat="server">
                                                                </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtAdd5" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px"></ew:NumericBox>
                                                        </td>
                                                        <td>
                                                            <ew:NumericBox ID="txtIsk5" runat="server" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" Width="40px">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="white-space: nowrap" align="right">
                                                            <asp:Label ID="Label24" runat="server" Width="120px">En-Boy-Yüks(cm) :</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <ew:NumericBox ID="txtBEn" runat="server" Width="63px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                            <ew:NumericBox ID="txtBBoy" runat="server" Width="60px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                            <ew:NumericBox ID="txtBYukseklik" runat="server" Width="57px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Labeldesi30" runat="server">Desi:</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <ew:NumericBox ID="txtBDesi" runat="server" Width="64px" TextAlign="Right" DecimalSign=","
                                                                GroupingSeparator=" " PositiveNumber="True">0</ew:NumericBox><a href="javascript:CalcDesi();"
                                                                    class="Admin_Normal_link" title="Desi Hesapla">Desi Hesapla</a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label6" runat="server">Kargo Hesapla :</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:DropDownList ID="ddlForceCargo" runat="server" Width="110px">
                                                                <asp:ListItem Selected="True" Value="0">Varsayýlan</asp:ListItem>
                                                                <asp:ListItem Value="1">Kargo Hesapla</asp:ListItem>
                                                                <asp:ListItem Value="2">&#220;cretsiz Kargo</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label27" runat="server">Aðýrlýk(gr):</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <ew:NumericBox ID="txtBAgirlik" runat="server" Width="64px" DecimalSign="," GroupingSeparator=" "
                                                                TextAlign="Right" PositiveNumber="True">0</ew:NumericBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <asp:Label ID="Label33" runat="server">Fiy. Deðiþim Tarihi:</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <asp:Label ID="lblTarih" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" valign="top">
                                                            <asp:Label ID="Label25" runat="server" Width="100%">Ürün Durum Bilgileri :</asp:Label>
                                                        </td>
                                                        <td colspan="3">
                                                            <table cellpadding="0">
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkHizliKargo" runat="server" Text="Hýzlý Kargo" ToolTip="" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkEnUcuzUrun" runat="server" Text="En Ucuz Ürün" ToolTip="" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkAyniGunTeslim" runat="server" Text="Ayný Gün Teslim" ToolTip="" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkOzelUrun" runat="server" Text="Özel Ürün" ToolTip="" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkIndirimliUrun" runat="server" Text="Ýndirimli Ürün" ToolTip="" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkSinirliSayidaUrun" runat="server" Text="Sýnýrlý Sayýda" ToolTip="" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkFirsatUrunu" runat="server" Text="Fýrsat Ürünü" ToolTip="" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkYeniUrun" runat="server" Text="Yeni Ürün" ToolTip="" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkSokFiyatliUrun" runat="server" Text="Þok Fiyatlý Ürün" ToolTip="" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:CheckBox ID="chkHediyeliUrun" runat="server" Text="Hediyeli Ürün" ToolTip="" />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="lblErr" runat="server"></asp:Label>
                    </div>
                    <div id="tab_2">
                        <div id="cproviders" class="module">
                            <div id="module_content">
                                <div id="module_title">
                                    <span><span id="module_title_icon"></span>Ürün Özel Kodlarý / Özellikler </span>
                                </div>
                                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Width="800px" EnableViewState="false"
                                    Height="500px" BasePath="/FCKeditor/">
                                </FCKeditorV2:FCKeditor>
                            </div>
                        </div>
                    </div>
                    <div id="tab_3">
                        <div id="cproviders" class="module">
                            <div id="module_content">
                                <div id="module_title">
                                    <span><span id="module_title_icon"></span>Ürün Özel Kodlarý / Özellikler </span>
                                </div>
                                <table>
                                    <tr>
                                        <td valign="top">
                                            <table cellpadding="2">
                                                <tr>
                                                    <td align="right">
                                                        Kod 1:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode1" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 2:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode2" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 3:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode3" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 4:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode4" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 5:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode5" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 6:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode6" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 7:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode7" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 8:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode8" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 8:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode9" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 10:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode10" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 11:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode11" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 12:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode12" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 13:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode13" runat="server" MaxLength="254"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 14:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode14" runat="server" MaxLength="254"></asp:TextBox>
                                                        *Bu alan Ürün Listesinde Açýklama üstünde görüntülenir.
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        Kod 15:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCode15" runat="server" MaxLength="254"></asp:TextBox>
                                                        *Bu alan Ürün Listesinde Açýklama üstünde görüntülenir.
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td valign="top">
                                            <table cellpadding="2">
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="lblAuthor" runat="server">Yazar Adý :</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox autocomplete="off" ID="txtAuthor" runat="server"></asp:TextBox>
                                                        <cc1:AutoCompleteExtender ID="AuthorExt" runat="server" TargetControlID="txtAuthor"
                                                            ServicePath="~/services/MarkService.asmx" ServiceMethod="GetAuthors" MinimumPrefixLength="2"
                                                            CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12"
                                                            OnClientItemSelected="AuthorSelected" CompletionListCssClass="autocomplete_completionListElement"
                                                            CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                                        </cc1:AutoCompleteExtender>
                                                        <asp:HiddenField ID="AuthorHiddenField" runat="server" Value="" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right">
                                                        <asp:Label ID="lblPublisher" runat="server">Yayýnevi Adý :</asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox autocomplete="off" ID="txtPublisher" runat="server"></asp:TextBox>
                                                        <cc1:AutoCompleteExtender ID="PublisherExt" runat="server" TargetControlID="txtPublisher"
                                                            ServicePath="~/services/MarkService.asmx" ServiceMethod="GetPublishers" MinimumPrefixLength="2"
                                                            CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12"
                                                            OnClientItemSelected="PublisherSelected" CompletionListCssClass="autocomplete_completionListElement"
                                                            CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem">
                                                        </cc1:AutoCompleteExtender>
                                                        <asp:HiddenField ID="PublisherHiddenField" runat="server" Value="" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <%--<div id="tab_9">
<uc1:cproductsizelist ID="cproductsizelist1" runat="server"></uc1:cproductsizelist>
</div>--%>
                    <div id="tab_4">
                        <uc1:CUnitList ID="CUnitList1" runat="server"></uc1:CUnitList>
                    </div>
                    <div id="tab_5">
                        <uc1:CImageList ID="CImageList1" runat="server"></uc1:CImageList>
                    </div>
                    <div id="tab_6">
                        <uc1:CFileList ID="CFileList1" runat="server"></uc1:CFileList>
                    </div>
                    <div id="tab_7">
                        <div id="cproviders" class="module">
                            <div id="module_content">
                                <div id="module_title">
                                    <span><span id="module_title_icon"></span>Seo Tanýmlarý </span>
                                </div>
                                <table cellpadding="2">
                                    <tr>
                                        <td align="right">
                                            Sayfa Baþlýðý(title) :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txttitle" runat="server" MaxLength="99"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Sayfa Açýklamasý(description) :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtdescription" runat="server" MaxLength="254"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Anahtar Kelimeler(keywords) :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtkeywords" runat="server" MaxLength="254"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" valign="top">
                                            <asp:Label ID="Label53" runat="server" CssClass="Admin_Modul_Label2">Meta Tag:</asp:Label>
                                        </td>
                                        <td valign="top">
                                            <asp:TextBox ID="txtMetatag" runat="server" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td valign="top">
                                            * Boþ býrakýldýðýnda ürünlerin indeklenmesi için aþaðýdaki metalarý sayfaya ekler.
                                            <br />
                                            Doldurulduðunda sadece eklediðiniz metalarý ekler.
                                            <br />
                                            <asp:Label ID="Label54" runat="server">&lt;meta name="robots" content="INDEX,FOLLOW" /&gt;</asp:Label>
                                            <br />
                                            <asp:Label ID="Label55" runat="server">&lt;meta name="robots" content="all" /&gt;</asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="tab_8" runat="server">
                        <div id="cproviders" class="module">
                            <div id="module_content">
                                <div id="module_title">
                                    <span><span id="module_title_icon"></span>Karþýlaþtýrma Sitesi </span>
                                </div>
                                <table cellpadding="2" width="100%">
                                    <tr>
                                        <td align="right">
                                            Ürün sayfasý :
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtCompareUrl" runat="server" MaxLength="254" Width="400px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            En Ucuz Site :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblSite" runat="server" ForeColor="#C00000"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Tarama Zamaný :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblLastCompare" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            En Ucuz Fiyat :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblComparePrice" runat="server" ForeColor="#C00000"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblComparePrice2" runat="server" ForeColor="#C00000"></asp:Label>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            Sizin siteniz
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Alýþ Fiyatý :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareAFiyati" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareAFiyati2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:CheckBox ID="chkCompareActive" runat="server" Text="Fiyatý Otomatik Ayarla">
                                            </asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            Havale Fiyatý :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareHFiyati" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareHFiyati2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Minimum Kar(%):<ew:NumericBox ID="txtCompareHKar" runat="server" DecimalSign=","
                                                GroupingSeparator=" " TextAlign="Right" Width="40px">0</ew:NumericBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            1. Satýs Fiyatý :
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareSFiyati" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblCompareSFiyati2" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            Minimum Kar(%):<ew:NumericBox ID="txtCompareSKar" runat="server" DecimalSign=","
                                                GroupingSeparator=" " TextAlign="Right" Width="40px">0</ew:NumericBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="tab_9">
                        <uc1:CTabList ID="CTabList1" runat="server"></uc1:CTabList>
                    </div>
                </div>
                <script type="text/javascript">
                    $("#TabContainer").tabs({ selected: 0 });

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
                </script>
                <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="button"></asp:Button>
                <asp:Button ID="btnAdd" runat="server" Text="Kaydet&amp;Kapat" Visible="False" CssClass="button">
                </asp:Button>
                <asp:Button ID="btnCopy" runat="server" Text="Kopyala/Klonla" CssClass="button">
                </asp:Button>
                <asp:Button ID="btnCancel" runat="server" Text="Kapat" CausesValidation="False" CssClass="button">
                </asp:Button>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
            </div>
        </div>
    </div>
    </form>
    <script src="/admin/js/rendermodules.js" type="text/javascript"></script>
</body>
</html>
