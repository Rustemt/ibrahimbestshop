<%@ Control Language="vb" AutoEventWireup="false" Inherits="cxmlimport" CodeBehind="cxmlimport.ascx.vb" %>
<%@ Register Assembly="System.Web.Extensions" Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageXmlImport" runat="server">
    <asp:validationsummary id="ValidationSummary1" runat="server" showsummary="False" showmessagebox="True"></asp:validationsummary>
    <p><%= GetGlobalResourceObject("admin", "UserExcelMsg1")%>
        <asp:hyperlink id="showGalleryButton" runat="server" cssclass="textRed" navigateurl="javascript:BrowseServer();" text="<%$ Resources:admin,Gallery %>"></asp:hyperlink></p>
    <div class="dataForm">
        <div class="row">
            <div class="colTwo">
                <div class="dataForm">
                    <div class="row">
                        <div class="colOne">
                            <div class="dataForm">
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "ImportSuppliers")%> :</label>
                                        <asp:dropdownlist id="ddlProvider" runat="server" autopostback="True"></asp:dropdownlist>
                                    </div>
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "IntegrationType")%> :</label>
                                        <label class="labelInput">
                                            <asp:radiobuttonlist id="rbListType" repeatdirection="Horizontal" CssClass="radioList" runat="server" autopostback="True">
                                                <asp:ListItem Text="<%$ Resources:admin,ImportFile %>" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,ImportOnline %>" Value="0" Selected="True"></asp:ListItem>
                                            </asp:radiobuttonlist>
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "FileFormat")%> :</label>
                                        <asp:dropdownlist id="ddlXslFile" runat="server"></asp:dropdownlist>
                                    </div>
                                    <div class="colTwo">
                                        <label>
                                            <asp:label id="lblDosya" runat="server" visible="False"><%=GetGlobalResourceObject("admin", "ImportXmlProductFile")%> :</asp:label></label>
                                        <asp:dropdownlist id="ddlXmlFile" runat="server" visible="False"></asp:dropdownlist>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colTwo">
                                        <label>
                                            <asp:label id="lblXmlPath" runat="server"><%=GetGlobalResourceObject("admin", "ImportXmlProductFileURL")%> : <asp:requiredfieldvalidator id="rq2" runat="server" controltovalidate="txtXmlPath" errormessage="Url Giriniz.">*</asp:requiredfieldvalidator></asp:label></label>
                                        <asp:textbox id="txtXmlPath" runat="server" maxlength="255"></asp:textbox>
                                    </div>
                                    <div class="colTwo">
                                        <label><%=GetGlobalResourceObject("admin", "StartCategory")%> :</label>
                                        <asp:dropdownlist id="ddlCategories" runat="server"></asp:dropdownlist>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne noneDataForm">
                                        <table width="100%" cellpadding="5" cellspacing="0" border="0">
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "PriceAreas")%></b></td>
                                                <td><b>Kaynak Fiyat</b></td>
                                                <td>
                                                    <b>
                                                        <asp:label id="Label17" runat="server">%</asp:label></b>
                                                <td>
                                                    <b>
                                                        <asp:label id="Label4" runat="server"><%=GetGlobalResourceObject("admin", "Additive")%> %</asp:label>
                                                    </b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "PurchasePriceField")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPriceA" runat="server">
                                                        <asp:ListItem Selected="True" Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label33" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtFA" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "MarketPriceField")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPriceP" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Selected="True" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label11" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtFP" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "TransferPriceField")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice0" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label25" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF0" runat="server" DecimalSign="," GroupingSeparator=" " TextAlign="Right">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "SalesPrice1Field")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice1" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label6" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF1" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "SalesPrice2Field")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice2" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label8" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF2" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "SalesPrice3Field")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice3" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label10" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF3" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "SalesPrice4Field")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice4" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label29" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF4" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b><%=GetGlobalResourceObject("admin", "SalesPrice5Field")%> :</b></td>
                                                <td>
                                                    <asp:dropdownlist id="ddlPrice5" runat="server">
                                                        <asp:ListItem Text="<%$ Resources:admin,PurchasePrice %>" Value="AlisFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,MarketPrice %>" Value="PiyasaFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,TransferPrice %>" Value="HavaleFiyati"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice1 %>" Value="SatisFiyati1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice2 %>" Value="SatisFiyati2"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice3 %>" Value="SatisFiyati3"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice4 %>" Value="SatisFiyati4"></asp:ListItem>
                                                        <asp:ListItem Text="<%$ Resources:admin,SalesPrice5 %>" Value="SatisFiyati5" Selected="True"></asp:ListItem>
                                                    </asp:dropdownlist>
                                                <td>
                                                    <asp:label id="Label31" runat="server"> %</asp:label>
                                                </td>
                                                <td>
                                                    <ew:NumericBox ID="txtF5" runat="server" TextAlign="Right" DecimalSign="," GroupingSeparator=" ">1</ew:NumericBox>
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
            <div class="colTwo">
                <asp:updatepanel id="UpdatePanel2" runat="server">
                    <contenttemplate>
                    <asp:Timer id="Timer1" runat="server" Interval="1000"></asp:Timer>
                    <div class="buttonGroup" style="margin-top:22px;">
                    	<asp:LinkButton ID="btnPenta" CssClass="btnDefault" runat="server" EnabledDuringCallBack="False" Text="<%$ Resources:admin,UserExcelMsg9 %>" AutoUpdateAfterCallBack="True"></asp:LinkButton>
                    	<asp:LinkButton ID="btnStop" CssClass="btnDefault" runat="server" CausesValidation="False" EnabledDuringCallBack="True" Text="<%$ Resources:admin,ExcelIntegrationStop %>" AutoUpdateAfterCallBack="True"></asp:LinkButton>
                        <asp:LinkButton ID="btnDoDesc" CssClass="btnDefault" runat="server" Visible="False" EnabledDuringCallBack="False" AutoUpdateAfterCallBack="True">Fiyatlarý Güncelle</asp:LinkButton>
                        <asp:LinkButton ID="btnDoImage" CssClass="btnDefault" runat="server" CausesValidation="False" EnabledDuringCallBack="False" Text="<%$ Resources:admin,PicturesUpdateWithoutProducts %>" AutoUpdateAfterCallBack="True"></asp:LinkButton>
                    </div>
                    <div class="checkList">
                        <ul>
                            <li><label class="labelInput"><asp:checkbox id="chkOnlyPrice" runat="server" text="<%$ Resources:admin,OnlyDealsUpdate %>" autopostback="True" /> <asp:label id="lblmsg1" runat="server" visible="False">Not: Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak.</asp:label></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkOnlyStock" runat="server" text="<%$ Resources:admin,StatusInventoryUpdate %>" autopostback="True" /> <asp:label id="lblmsg2" runat="server" visible="False">Not: Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak.</asp:label></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdatePublishers" runat="server" text="<%$ Resources:admin,PublisherNameUpdate %>" autopostback="True" /> <asp:label id="lblmsg3" runat="server" visible="False">Not: Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak.</asp:label></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdateAuthors" runat="server" text="<%$ Resources:admin,AuthorNameUpdate %>" autopostback="True" /> <asp:label id="lblmsg4" runat="server" visible="False">Not: Kategori ve tadarikçi gözetmeden entegrasyon yapýlýacak.</asp:label></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdateName" runat="server" text="<%$ Resources:admin,UpdateProductName %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdateCodes" runat="server" text="<%$ Resources:admin,ProductSpecialCodesUpdate %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdateDetails" runat="server" text="<%$ Resources:admin,ProductDetailUpdate %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkupdatekeywords" runat="server" text="<%$ Resources:admin,SearchYourWordsUpdate %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkNewProductPassive" runat="server" text="<%$ Resources:admin,NewProductsMakePassive %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkFirstMakePassive" runat="server" checked="False" text="<%$ Resources:admin,MyPassiveProducts %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkUpdateImages" runat="server" checked="False" text="<%$ Resources:admin,PictureLinksUpdateWithout %>" /></label></li>
                            <li><label class="labelInput"><asp:checkbox id="chkDownloadImages" runat="server" checked="False" text="<%$ Resources:admin,PicturesUpdateWithoutPictures %>" /></label></li>
                        </ul>
                    </div>
                    <div class="alert aler-info"><asp:Label ID="lblanthem" runat="server"></asp:Label></div>
                    <div class="alert aler-info"><asp:Label ID="lblanthem1" runat="server"></asp:Label></div>
                    <div class="alert aler-info"><asp:Label ID="lblinfo" runat="server"></asp:Label></div>
                </contenttemplate>
                </asp:updatepanel>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        function EndRequestHandler(sender, args) {
            if (args.get_error() != undefined) {
                if (args.get_response().get_statusCode() == '500') {
                    args.set_errorHandled(true);
                }
                else {
                    args.set_errorHandled(true);
                    alert("There was an error" + args.get_error().message);
                }

            }
        }
    </script>
</div>
