<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="c2c_editproduct.aspx.vb" Inherits="ASPNetPortal.c2c_editproduct" %>

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
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
                            <li><a href="#tab_3"><%=GetGlobalResourceObject("admin", "SeoDefinitions")%></a></li>
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
                                                                    <asp:TextBox ID="txtUrunAdi" runat="server" MaxLength="254"></asp:TextBox>
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
                                                                    <label><%=GetGlobalResourceObject("admin", "Brand")%> :</label>
                                                                    <asp:TextBox ID="txtMark" autocomplete="off" runat="server"></asp:TextBox>
                                                                    <cc1:AutoCompleteExtender ID="MarkExt" runat="server" TargetControlID="txtMark" ServicePath="/services/MarkService.asmx" ServiceMethod="GetMarks" MinimumPrefixLength="2" CompletionInterval="500" FirstRowSelected="true" EnableCaching="true" CompletionSetCount="12" OnClientItemSelected="MarkSelected" CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"></cc1:AutoCompleteExtender>
                                                                    <asp:HiddenField ID="MarkHiddenField" runat="server" Value="" />
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "Tax")%> :</label>
                                                                    <asp:DropDownList ID="ddlKdv" runat="server"></asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="row">

                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "TextileFormat")%> :</label>
                                                                    <asp:DropDownList ID="ddlProductSizeOptions" runat="server" onChange="textilChange()"></asp:DropDownList>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "StockQuantity")%> :</label>
                                                                    <ew:NumericBox ID="txtStockAdedi" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="7">0</ew:NumericBox>
                                                                </div>
                                                            </div>
                                                            <div class="row">

                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "NoStockSell")%> :</label>
                                                                    <label class="labelInput">
                                                                        <asp:CheckBox ID="chkSellNoneStock" runat="server"></asp:CheckBox>
                                                                        Aktif/Pasif</label>
                                                                </div>
                                                                <div class="colTwo">
                                                                    <label><%=GetGlobalResourceObject("admin", "StatusActive")%> :</label>
                                                                    <label class="labelInput">
                                                                        <asp:CheckBox ID="chkIsActive" runat="server" Checked="True"></asp:CheckBox></label>
                                                                </div>
                                                            </div> 
                                                            <div class="row">

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

                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td align="right" valign="top"></td>
                                                                            <td valign="top"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label2" runat="server"><%=GetGlobalResourceObject("admin", "IncludedTax")%>:</asp:Label></strong></td>
                                                                            <td>
                                                                                <asp:CheckBox ID="chkKdvDahil" runat="server"></asp:CheckBox></td>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><strong>
                                                                                <asp:Label ID="Label20" runat="server"><%=GetGlobalResourceObject("admin", "SalesPrice1Products")%> :</asp:Label></strong></td>
                                                                            <td>
                                                                                <ew:NumericBox ID="txtBSatisFiyati1" runat="server" Width="114px" DecimalSign="," GroupingSeparator=" " TextAlign="Right">0</ew:NumericBox>
                                                                                <asp:DropDownList ID="ddlBPb1" runat="server"></asp:DropDownList></td>

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
                                                                                <a href="javascript:CalcDesi();" class="btnDefault" title="" style="margin-left: 10px;"><i class="fa fa-calculator"></i><%=GetGlobalResourceObject("admin", "CalculateWeight")%></a></td>
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

                    </div>
                    <div class="buttonGroup">
                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:admin,Save %>" CssClass="btnDefault"></asp:Button>
                        <asp:Button ID="btnAdd" runat="server" Text="Kaydet&amp;Kapat" Visible="False" CssClass="btnDefault"></asp:Button>
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
