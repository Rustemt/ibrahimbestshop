<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Inherits="ASPNetPortal.MarketSettings" Language="vb" AutoEventWireup="false" CodeBehind="MarketSettings.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<div class="boxToggle publicTab pageMarketSettings" id="TabContainer" runat="server">
    <div class="toggleTitle toggleMini">
        <div class="titleText"><%=GetGlobalResourceObject("admin", "GeneralSettings")%></div>
        <div class="titleTab">
            <ul class="tabMenu">
                <li><a href="#tab_1"><%=GetGlobalResourceObject("admin", "CompanySettings")%></a></li>
                <li><a href="#tab_2"><%=GetGlobalResourceObject("admin", "MailSettings")%></a></li>
                <li><a href="#tab_3"><%=GetGlobalResourceObject("admin", "CommerceSettings")%></a></li>
                <li><a href="#tab_4"><%=GetGlobalResourceObject("admin", "GoogleSettings")%></a></li>
                <li><a href="#tab_5"><%=GetGlobalResourceObject("admin", "FacebookSettings")%></a></li>
                <li><a href="#tab_6"><%=GetGlobalResourceObject("admin", "AffiliateSettings")%></a></li>
                <li><a href="#tab_7">Güven Rehberi</a> </li>
                <li><a href="#tab_8">Anasayfa Yönetim</a></li>
            </ul>
        </div>
    </div>
    <div class="toggleContent">
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" HeaderText="<%$ Resources:admin,MarketSettingsMsg1 %>"></asp:ValidationSummary>
        <div class="tabContent">
            <div class="tab" id="tab_1">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "SiteName")%> :</label>
                            <asp:TextBox ID="siteName" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "SiteUrl")%> <small>(örnek: http://www.siteniz.com , http://magaza.siteniz.com)</small>
                                <asp:RegularExpressionValidator ID="rqsiteurl" runat="server" ControlToValidate="siteUrl" ErrorMessage="<%$ Resources:admin,SiteUrlErrorMsg %>" ValidationExpression="^http://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?">*</asp:RegularExpressionValidator></label>
                            <asp:TextBox ID="siteUrl" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CompanyName")%> :</label>
                            <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CompanyEmail")%> :</label>
                            <asp:TextBox ID="txtCompanyMail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CompanyPhoneNumber")%> :</label>
                            <asp:TextBox ID="txtCompanyPhone" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CompanyFaxNo")%> :</label>
                            <asp:TextBox ID="txtCompanyFax" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CompanyAddress")%> :</label>
                            <asp:TextBox ID="txtCompanyAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "Themes")%> :</label>
                            <asp:DropDownList ID="ddlTemplate" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "IconPath")%> :</label>
                            <asp:TextBox ID="txticon" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MainMenuShow")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkShowMenu" runat="server"></asp:CheckBox>
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "Currency")%> :</label>
                            <asp:DropDownList ID="ddlCurrency" runat="server"></asp:DropDownList>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "StoreAdminMsg1")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkSendFailedLogins" runat="server" Checked="True" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>Haberleri Güncelle(NTVMSNBC) :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkWillCheckNews" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label>Logo:<small>Sadece PNG uzantili resim yükleyebilirsiniz.</small></label>
                            <asp:FileUpload ID="fuLogo" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ApiKey")%> : <small><%=GetGlobalResourceObject("admin", "ApiKeyMessage")%></small></label>
                            <asp:TextBox ID="txtCanliDestekApi" runat="server" MaxLength="10"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_2">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "SenderName")%> :</label>
                            <asp:TextBox ID="emailad" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "EmailAddress")%> :
                                <asp:RequiredFieldValidator ID="emailRequired" runat="server" ControlToValidate="email" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg13 %>">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="emailValid" runat="server" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+" ControlToValidate="email" ErrorMessage="<%$ Resources:admin,UserNameMsg2 %>">*</asp:RegularExpressionValidator></label>
                            <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>Smtp Server :</label>
                            <asp:TextBox ID="txtSmtpServer" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label>Smtp Port :</label>
                            <asp:TextBox ID="txtSmtpPort" runat="server">587</asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "UserName")%> :</label>
                            <asp:TextBox ID="txtSmtpUserName" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MailPassword")%> :</label>
                            <asp:TextBox ID="txtSmtpPassword" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "OrderMailAddress")%> :</label>
                            <asp:TextBox ID="txtMail3" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "OrderArchiveMailAddress")%> :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmail2" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg12 %>">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail2" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg11 %>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator></label>
                            <asp:TextBox ID="txtmail2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">

                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MailSSL")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkSmtpUseSsl" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_3">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CommerceActive")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkIsEmarket" runat="server"></asp:CheckBox>*<%=GetGlobalResourceObject("admin", "CommerceActiveMsg1")%></label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "CommerceType")%> :</label>
                            <asp:DropDownList ID="ddlStoreType" runat="server">
                                <asp:ListItem Text="<%$ Resources:admin,B2C %>" Value="B2C"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,B2B %>" Value="B2B"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,Private2 %>" Value="Private"></asp:ListItem>
                                <asp:ListItem Text="C2C" Value="C2C"></asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ActiveSSL")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chksecureWebPages" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MembershipActivation")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkUseActivation" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MembershipShopping")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkOnlyUsersCanbuy" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ProductReviews")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkDisableReview" runat="server" Checked="True" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductsPerCount")%> :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductsPerPage" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg10 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtProductsPerPage" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="2" PositiveNumber="True" TextAlign="Right">12</ew:NumericBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductsLineCount")%>  :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProductsPerLine" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg9 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtProductsPerLine" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="2" PositiveNumber="True" TextAlign="Right">3</ew:NumericBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductsPageListCount")%>  :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductsPerListPage" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg8 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtProductsPerListPage" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="2" PositiveNumber="True" TextAlign="Right">20</ew:NumericBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "Top10Module")%> :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTopSellersPerPage" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg7 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtTopSellersPerPage" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="2" PositiveNumber="True" TextAlign="Right">5</ew:NumericBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductImageSizeShowCase")%> :
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" runat="server" ControlToValidate="txtGaleryImageSize" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg6 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtGaleryImageSize" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="3" PositiveNumber="True" TextAlign="Right">160</ew:NumericBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductImageSizeList")%> :
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator6" runat="server" ControlToValidate="txtListImageSize" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg6 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtListImageSize" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="3" PositiveNumber="True" TextAlign="Right">50</ew:NumericBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "SmallProductImageSize")%> :
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator12" runat="server" ControlToValidate="txtDetailImageSizeIcon" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg5 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtDetailImageSizeIcon" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="3" PositiveNumber="True" TextAlign="Right">30</ew:NumericBox>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductImageSize")%> :
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator7" runat="server" ControlToValidate="txtDetailImageSize" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg4 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtDetailImageSize" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="3" PositiveNumber="True" TextAlign="Right">200</ew:NumericBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "ProductLargeImageSize")%> :
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator8" runat="server" ControlToValidate="txtDetailImageSizeBig" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg4 %>">*</asp:RequiredFieldValidator></label>
                            <ew:NumericBox ID="txtDetailImageSizeBig" runat="server" DecimalSign="," GroupingSeparator=" " MaxLength="3" PositiveNumber="True" TextAlign="Right">500</ew:NumericBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ProductZoomActive")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkUseZoomOnImages" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "Degree360Image")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chk3dPicture" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "CurrencyFormat")%> : *<%=GetGlobalResourceObject("admin", "CurrencyFormatExample")%>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator10" runat="server" ControlToValidate="txtCurFormat" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg2 %>">*</asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtCurFormat" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <%=GetGlobalResourceObject("admin", "NumberFormat")%> : *<%=GetGlobalResourceObject("admin", "NumberFormatExample")%>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator11" runat="server" ControlToValidate="txtNumFormat" ErrorMessage="<%$ Resources:admin,MarketSettingsMsg3 %>">*</asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtNumFormat" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "MultipleCart")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkUseMultiCart" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FailedPaymentsMail")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkSendFailedPayments" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label>Ürün Resimlerini Resize Etme :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkresize" runat="server" />
                                Aktif/Pasif</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_4">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "GoogleAnalytics")%> :</label>
                            <asp:TextBox ID="txtGoogleCode" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "GoogleAdwords")%> :</label>
                            <asp:TextBox ID="txtAdwordsCode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "GoogleAdwordsTag")%> :</label>
                            <asp:TextBox ID="txtAdwordslabel" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_5">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FacebookConnect")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkFbActive" runat="server"></asp:CheckBox>
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FacebookApiId")%> :</label>
                            <asp:TextBox ID="txtFbApiId" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FacebookApiKey")%> :</label>
                            <asp:TextBox ID="txtFbApikey" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FacebookStoreActive")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkFbStoreActive" runat="server"></asp:CheckBox></label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "FacebookStoreURL")%> :</label>
                            <asp:TextBox ID="txtFbCanvasUrl" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_6">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "AffiliateActive")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkAffiliateActive" runat="server"></asp:CheckBox>
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "AffiliateType")%> :</label>
                            <asp:DropDownList ID="ddlAffiliateType" runat="server" onChange="AffiliateChange()">
                                <asp:ListItem Text="<%$ Resources:admin,ShoppingDegreeAvails %>" Value="3"></asp:ListItem>
                                <asp:ListItem Text="<%$ Resources:admin,ShoppingFixedAmount %>" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label>
                                <asp:Label ID="lblAffiliateValue" runat="server"><%=GetGlobalResourceObject("admin", "AvailsRate")%> :</asp:Label></label>
                            <asp:TextBox ID="txtAffiliateValue" runat="server"></asp:TextBox>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "AffiliateApprove")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkAffiliateAutoActive" runat="server"></asp:CheckBox>
                                Aktif/Pasif</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "ActiveCallSystem")%> :</label>
                            <label class="labelInput">
                                <asp:CheckBox ID="chkInviteAffiliateActive" runat="server"></asp:CheckBox>
                                Aktif/Pasif</label>
                        </div>
                        <div class="colTwo">
                            <label><%=GetGlobalResourceObject("admin", "GiftCertificateAmount")%> : TL</label>
                            <asp:TextBox ID="txtInviteAffiliateValue" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="colTwo"></div>
                        <div class="colTwo"></div>
                    </div>
                    <div class="row">
                        <div class="colTwo"></div>
                        <div class="colTwo"></div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_7">
                <div class="dataForm">
                    <div class="row">
                        <div class="colTwo">
                            <label>Güven Rehberi Kodu :</label>
                            <asp:TextBox ID="txtGuvenRehberCode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab" id="tab_8">
                <div class="dataForm">
                    <div class="row">
                        <div class="colOne" style="border: 1px solid #d8d9db; padding: 10px;">
                            <h3 class="txtRedTitle">Özet Rapor Ayarlarý</h3>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Toplam Ciro <small>(Alanýnda Gösterilecek Sipariþ Durumlarýný Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblClick" runat="server"><i class="fa fa-pencil"></i>Sipariþ Durumlarýný Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="pce1" PopupControlID="divOrder" Position="Bottom" TargetControlID="lblClick"></asp:PopupControlExtender>
                                            <div id="divOrder" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkOrderStatus"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="colTwo">
                                <label>Yönetim Anasayfa / Toplam Üye Adedi<small>(Alanýndaki Gösterilecek Üye Tiplerini Seçiniz)</small></label>
                                <div class="dDwnContent">
                                    <div class="colTwo colBtn" style="position: relative;">
                                        <label class="labelInput"><a id="lblClick2" runat="server"><i class="fa fa-pencil"></i>Kullanýcý Durumlarý Seçiniz</a></label>
                                        <asp:PopupControlExtender runat="server" ID="PopupControlExtender1" PopupControlID="divUsers" Position="Bottom" TargetControlID="lblClick2"></asp:PopupControlExtender>
                                        <div id="divUsers" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                            <style type="text/css">
                                                #divprices input,
                                                #divprices label {
                                                    display: inline-block;
                                                    margin-right: 15px;
                                                }
                                            </style>
                                            <asp:CheckBox ID="chkAll2" Text="Tümü" runat="server" />
                                            <asp:CheckBoxList runat="server" ID="chkUserStatus">
                                                <asp:ListItem Value="0">Bireysel</asp:ListItem>
                                                <asp:ListItem Value="1">Kurumsal</asp:ListItem>
                                                <asp:ListItem Value="2">Plasiyer</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Toplam Online Ödeme <small>(Alanýnda Gösterilecek Online Ödeme Durumlarýný Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblPayment" runat="server"><i class="fa fa-pencil"></i>Ödeme Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender2" PopupControlID="divPayment" Position="Bottom" TargetControlID="lblPayment"></asp:PopupControlExtender>
                                            <div id="divPayment" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll3" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkPayment">
                                                    <asp:ListItem Value="1">Ödendi</asp:ListItem>
                                                    <asp:ListItem Value="0">Ödenmedi</asp:ListItem>
                                                </asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Toplam Toplam Ürün Adedi <small>(Alanýnda Gösterilecek Stok Durumlarýný Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblProduct" runat="server"><i class="fa fa-pencil"></i>Ürün Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender3" PopupControlID="divProduct" Position="Bottom" TargetControlID="lblProduct"></asp:PopupControlExtender>
                                            <div id="divProduct" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll4" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkProduct">
                                                    <asp:ListItem Value="1">Aktif</asp:ListItem>
                                                    <asp:ListItem Value="0">Pasif</asp:ListItem>
                                                </asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="colOne" style="border: 1px solid #d8d9db; padding: 10px;">
                            <h3 class="txtRedTitle">Son 10 Ayarlarý</h3>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Sipariþ <small>(Listesi Ýçin Sipariþ Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopOrder" runat="server"><i class="fa fa-pencil"></i>Sipariþ Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender4" PopupControlID="divTopOrder" Position="Bottom" TargetControlID="lblTopOrder"></asp:PopupControlExtender>
                                            <div id="divTopOrder" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll5" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopOrder"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Ýade-Deðiþim <small>(Listesi Ýçin Ýade-Deðiþim Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopCancelOrder" runat="server"><i class="fa fa-pencil"></i>Ýade-Deðiþim Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender5" PopupControlID="divCancelOrder" Position="Bottom" TargetControlID="lblTopCancelOrder"></asp:PopupControlExtender>
                                            <div id="divCancelOrder" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll6" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopCancelOrder"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Teklif <small>(Listesi Ýçin Teklif Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopOffer" runat="server"><i class="fa fa-pencil"></i>Teklif Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender6" PopupControlID="divTopOffer" Position="Bottom" TargetControlID="lblTopOffer"></asp:PopupControlExtender>
                                            <div id="divTopOffer" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll7" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopOffer"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Rezerv-Sipariþ <small>(Listesi Ýçin Rezerv-Sipariþ Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopBookedOrder" runat="server"><i class="fa fa-pencil"></i>Rezerv-Sipariþ Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender7" PopupControlID="divTopBookedOrder" Position="Bottom" TargetControlID="lblTopBookedOrder"></asp:PopupControlExtender>
                                            <div id="divTopBookedOrder" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll8" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopBookedOrder"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Servis <small>(Listesi Ýçin Servis Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopServiceStatu" runat="server"><i class="fa fa-pencil"></i>Servis Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender10" PopupControlID="divTopServiceStatu" Position="Bottom" TargetControlID="lblTopServiceStatu"></asp:PopupControlExtender>
                                            <div id="divTopServiceStatu" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll9" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopServiceStatu"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Ticket <small>(Listesi Ýçin Ticket Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopTicketStatu" runat="server"><i class="fa fa-pencil"></i>Ticket Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender8" PopupControlID="divTopTicketStatu" Position="Bottom" TargetControlID="lblTopTicketStatu"></asp:PopupControlExtender>
                                            <div id="divTopTicketStatu" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll10" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopTicketStatu"></asp:CheckBoxList>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="colTwo">
                                    <label>Yönetim Anasayfa / Son 10 Mail <small>(Listesi Ýçin Mail Durumu Seçiniz)</small></label>
                                    <div class="dDwnContent">
                                        <div class="colTwo colBtn" style="position: relative;">
                                            <label class="labelInput"><a id="lblTopMailStatu" runat="server"><i class="fa fa-pencil"></i>Mail Durumlarý Seçiniz</a></label>
                                            <asp:PopupControlExtender runat="server" ID="PopupControlExtender9" PopupControlID="divTopMailStatu" Position="Bottom" TargetControlID="lblTopMailStatu"></asp:PopupControlExtender>
                                            <div id="divTopMailStatu" runat="server" style="background-color: #fff; padding: 10px; border: 1px solid #ddd; width: 100%; left: 0px !important;">
                                                <style type="text/css">
                                                    #divprices input,
                                                    #divprices label {
                                                        display: inline-block;
                                                        margin-right: 15px;
                                                    }
                                                </style>
                                                <asp:CheckBox ID="chkAll11" Text="Tümü" runat="server" />
                                                <asp:CheckBoxList runat="server" ID="chkTopMailStatu"></asp:CheckBoxList>
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
        <div class="buttonGroup">
            <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton>
        </div>
    </div>
</div>

<script type="text/javascript">
    function AffiliateChange() {
        var type = document.getElementById("<%= ddlAffiliateType.ClientID%>").value
        if (type == 2) {
            document.getElementById("<%= lblAffiliateValue.ClientID%>").innerHTML = "Sabit Tutar :"
        }
        if (type == 3) {
            document.getElementById("<%= lblAffiliateValue.ClientID%>").innerHTML = "Kâr Orany % :"
        }
    }

    $(function () {
        $("[id*=chkAll]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkOrderStatus] input").attr("checked", "checked");
            } else {
                $("[id*=chkOrderStatus] input").removeAttr("checked");
            }
        });
        $("[id*=chkOrderStatus] input").bind("click", function () {
            if ($("[id*=chkOrderStatus] input:checked").length == $("[id*=chkOrderStatus] input").length) {
                $("[id*=chkAll]").attr("checked", "checked");
            } else {
                $("[id*=chkAll]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll2]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkUserStatus] input").attr("checked", "checked");
            } else {
                $("[id*=chkUserStatus] input").removeAttr("checked");
            }
        });
        $("[id*=chkUserStatus] input").bind("click", function () {
            if ($("[id*=chkUserStatus] input:checked").length == $("[id*=chkUserStatus] input").length) {
                $("[id*=chkAll2]").attr("checked", "checked");
            } else {
                $("[id*=chkAll2]").removeAttr("checked");
            }
        });
    });


    $(function () {
        $("[id*=chkAll3]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkPayment] input").attr("checked", "checked");
            } else {
                $("[id*=chkPayment] input").removeAttr("checked");
            }
        });
        $("[id*=chkPayment] input").bind("click", function () {
            if ($("[id*=chkPayment] input:checked").length == $("[id*=chkPayment] input").length) {
                $("[id*=chkAll3]").attr("checked", "checked");
            } else {
                $("[id*=chkAll3]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll4]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkProduct] input").attr("checked", "checked");
            } else {
                $("[id*=chkProduct] input").removeAttr("checked");
            }
        });
        $("[id*=chkProduct] input").bind("click", function () {
            if ($("[id*=chkProduct] input:checked").length == $("[id*=chkProduct] input").length) {
                $("[id*=chkAll4]").attr("checked", "checked");
            } else {
                $("[id*=chkAll4]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll5]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopOrder] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopOrder] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopOrder] input").bind("click", function () {
            if ($("[id*=chkTopOrder] input:checked").length == $("[id*=chkTopOrder] input").length) {
                $("[id*=chkAll5]").attr("checked", "checked");
            } else {
                $("[id*=chkAll5]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll6]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopCancelOrder] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopCancelOrder] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopCancelOrder] input").bind("click", function () {
            if ($("[id*=chkTopCancelOrder] input:checked").length == $("[id*=chkTopCancelOrder] input").length) {
                $("[id*=chkAll6]").attr("checked", "checked");
            } else {
                $("[id*=chkAll6]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll7]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopOffer] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopOffer] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopOffer] input").bind("click", function () {
            if ($("[id*=chkTopOffer] input:checked").length == $("[id*=chkTopOffer] input").length) {
                $("[id*=chkAll7]").attr("checked", "checked");
            } else {
                $("[id*=chkAll7]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll8]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopBookedOrder] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopBookedOrder] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopBookedOrder] input").bind("click", function () {
            if ($("[id*=chkTopBookedOrder] input:checked").length == $("[id*=chkTopBookedOrder] input").length) {
                $("[id*=chkAll8]").attr("checked", "checked");
            } else {
                $("[id*=chkAll8]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll9]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopServiceStatu] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopServiceStatu] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopServiceStatu] input").bind("click", function () {
            if ($("[id*=chkTopServiceStatu] input:checked").length == $("[id*=chkTopServiceStatu] input").length) {
                $("[id*=chkAll9]").attr("checked", "checked");
            } else {
                $("[id*=chkAll9]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll10]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopTicketStatu] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopTicketStatu] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopTicketStatu] input").bind("click", function () {
            if ($("[id*=chkTopTicketStatu] input:checked").length == $("[id*=chkTopTicketStatu] input").length) {
                $("[id*=chkAll10]").attr("checked", "checked");
            } else {
                $("[id*=chkAll10]").removeAttr("checked");
            }
        });
    });

    $(function () {
        $("[id*=chkAll11]").bind("click", function () {
            if ($(this).is(":checked")) {
                $("[id*=chkTopMailStatu] input").attr("checked", "checked");
            } else {
                $("[id*=chkTopMailStatu] input").removeAttr("checked");
            }
        });
        $("[id*=chkTopMailStatu] input").bind("click", function () {
            if ($("[id*=chkTopMailStatu] input:checked").length == $("[id*=chkTopMailStatu] input").length) {
                $("[id*=chkAll11]").attr("checked", "checked");
            } else {
                $("[id*=chkAll11]").removeAttr("checked");
            }
        });
    });


</script>
