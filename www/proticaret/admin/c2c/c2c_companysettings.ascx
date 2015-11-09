<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="c2c_companysettings.ascx.vb" Inherits="ASPNetPortal.c2c_companysettings" %>
 

<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<div class="boxToggle publicTab pageMarketSettings" id="TabContainer" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <div class="toggleTitle toggleMini">
                <div class="titleText"><%=GetGlobalResourceObject("admin", "GeneralSettings")%></div>
                <div class="titleTab">
                    <ul class="tabMenu">
                        <li><a href="#tab_1">Şirket Bilgileri</a></li>
                        <li><a href="#tab_2">İmza ve İletşim Bilgileri</a></li>
                        <li><a href="#tab_3">Banka Hesabı Bilgileri</a></li>
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
                                    <label>Şirket Adı (Ünvan) :</label>
                                    <asp:TextBox ID="txtmagazaname" runat="server"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Şirket Rumuzu :</label>
                                    <asp:TextBox ID="txtrumuz" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Şirket Türü :</label>
                                    <asp:DropDownList ID="ddlStoreType" runat="server">
                                        <asp:ListItem Text="Anonim" Value="Anonim"></asp:ListItem>
                                        <asp:ListItem Text="Limited" Value="Limited"></asp:ListItem>
                                        <asp:ListItem Text="Hisseli Komandit" Value="Hisseli"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="colTwo">
                                    <label>Kayıtlı olduğu ticaret odası :</label>
                                    <asp:TextBox ID="txtticoda" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Ticaret sicil numarası :</label>
                                    <asp:TextBox ID="txtsicil" runat="server" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Vergi Dairesi(Ülke) :</label>
                                    <asp:DropDownList ID="ddlCountry" CssClass="select" runat="server">
                                        <asp:ListItem Text="Türkiye" Value="1" Selected="True" ></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlCountry" ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Vergi Dairesi(İl) :</label>
                                    <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true" ></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rqs3" runat="server" ControlToValidate="ddlCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</asp:RequiredFieldValidator>
                                </div>
                                <div class="colTwo">
                                    <label>Vergi Dairesi(İlçe) :</label>
                                    <asp:DropDownList ID="ddlDistrict" CssClass="select" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Vergi No :</label>
                                    <asp:TextBox ID="txtvergino" runat="server" MaxLength="50"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>
                                        Cep Telefonu :</label>
                                    <ew:NumericBox ID="txtcep" runat="server" GroupingSeparator=" " MaxLength="14" PositiveNumber="True" TextAlign="Left"></ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>
                                        İş Telefonu  :</label>
                                    <ew:NumericBox ID="txtis" runat="server" GroupingSeparator=" " MaxLength="14" PositiveNumber="True" TextAlign="Left"></ew:NumericBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Adres :</label>
                                    <asp:TextBox ID="txtadress" runat="server" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Not (Mağaza Profil Sayfasında Gözükecek Olan Mağaza Detayı) :</label>
                                    <asp:TextBox ID="txtnote" runat="server" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="tab" id="tab_2">
                        <div class="dataForm">
                            <div class="row">
                                <label><b>İmza Yetkilisi Bilgileri</b></label>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Adı Soyadı :</label>
                                    <asp:TextBox ID="txtsignad" runat="server" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>İmza Yetkilisi Unvanı :</label>
                                    <asp:TextBox ID="txtsigndegree" runat="server" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Sabit Hat :</label>
                                    <asp:TextBox ID="txtsignphone" MaxLength="14" runat="server"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Cep Telefonu :</label>
                                    <asp:TextBox ID="txtsignmobile" MaxLength="14" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <label><b>İletişim Yetkilisi Bilgileri</b></label>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Adı Soyadı :</label>
                                    <asp:TextBox ID="txtcomad" runat="server" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>İmza Yetkilisi Unvanı :</label>
                                    <asp:TextBox ID="txtcomdegree" runat="server" MaxLength="50"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Sabit Hat :</label>
                                    <asp:TextBox ID="txtcomphone" runat="server" MaxLength="14"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Cep Telefonu :</label>
                                    <asp:TextBox ID="txtcommobile" runat="server" MaxLength="14"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab" id="tab_3">
                        <div class="dataForm">

                            <div class="row">
                                <div class="colTwo">
                                    <label>Hesap Sahibinin Adı Soyadı/Ünvanı :</label>
                                    <asp:TextBox ID="txthesapsahibi" runat="server" MaxLength="20"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>Banka :</label>
                                    <asp:DropDownList ID="ddlbanks" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="colTwo">
                                    <label>Şube :</label>
                                    <asp:TextBox ID="txtbanksube" runat="server" MaxLength="100"></asp:TextBox>
                                </div>
                                <div class="colTwo">
                                    <label>IBAN No :</label>
                                    <asp:TextBox ID="txtbankiban" runat="server" MaxLength="50"></asp:TextBox>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </ContentTemplate>

    </asp:UpdatePanel>

            <div class="buttonGroup">
                <asp:LinkButton ID="applyBtn" runat="server" CssClass="btnDefault"><i class="fa fa-save"></i> <%= GetGlobalResourceObject("admin","SaveSettings") %></asp:LinkButton>
            </div>
</div>
