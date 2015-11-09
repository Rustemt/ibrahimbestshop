<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="Register" CodeBehind="Register.ascx.vb" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc1" %>

<div id="register" class="module clearFix">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="registerContent clearFix">
        <div id="alert1" runat="server" class="alert">
            <asp:Label ID="lblError1" runat="Server"></asp:Label>
        </div>
        <div class="moduleCol1 registerTop radius5 clearFix">
        	<label class="title2"><%=GetGlobalResourceObject("lang", "RequiredFields")%></label>
            <div class="moduleCol2">
                <label class="title3"><%=GetGlobalResourceObject("lang", "RegisterType")%></label>
                <asp:RadioButtonList ID="rblUyeType" CellPadding="10" CellSpacing="10" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                    <asp:ListItem Value="0" Selected="True" Text="<%$ Resources:lang, RegisterPersonal%>"></asp:ListItem>
                    <asp:ListItem Value="1" Text="<%$ Resources:lang, RegisterCommercial%>"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="moduleCol2">
                <% If ConfigurationManager.AppSettings("FaceBookActive") = "True" And Not HttpContext.Current.User.Identity.IsAuthenticated() Then%>
                <div id="fb-root"></div>
                <script type="text/javascript">
                    //initializing API
                    window.fbAsyncInit = function () {
                        FB.init({ appId: '<% =ConfigurationManager.AppSettings("FaceBookApiId") %>', status: true, cookie: true, xfbml: true });
                    };
                    (function () {
                        var e = document.createElement('script'); e.async = true;
                        e.src = document.location.protocol +
                          '//connect.facebook.net/en_US/all.js';
                        document.getElementById('fb-root').appendChild(e);
                    }());
                </script>
                <script type="text/javascript">
                    function fblogin() {
                        FB.login(function (response) {
                            FB.api('/me', function (response) {
                                if (response.id != null) {
                                    ASPNetPortal.UserService.FbLogin(response.id, response.name, response.email, FbResponse);
                                    //  ASPNetPortal.UserService.funFbPost(response.id);
                                }
                                else {
                                    window.parent.location.href = '/default.aspx';
                                }
                            });
                        }, { perms: 'email,publish_stream,publish_actions,read_friendlists,offline_access' });
                    }
                    function FbResponse(result) {
                        window.location.reload();
                    }
                </script>
                <label class="registerFacebook"><a href="#" onclick="fblogin();return false;"><img src="<%=getThemePath()%>/images/facebook_login.png" /></a></label>
                <% End If%>
            </div>
        </div>
        <div class="moduleContentCol2 registerLeft radius5 clearFix">
            <label class="title3"><%=GetGlobalResourceObject("lang", "UserInformation")%></label>
            <div class="individual clearFix">
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "LoginName")%></label>
                    <asp:TextBox ID="txtLoginName" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister1" runat="server" ControlToValidate="txtLoginName" ErrorMessage="<%$ Resources:lang, RegisterMsg3%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "Email")%></label>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister2" runat="server" ControlToValidate="txtEmail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+">*</asp:RegularExpressionValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "Password")%></label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister3" runat="server" ControlToValidate="txtPassword" ErrorMessage="<%$ Resources:lang, RegisterMsg2%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "RepetPassword")%></label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister4" runat="server" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RegisterMsg4%>">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="<%$ Resources:lang, RegisterMsg5%>">*</asp:CompareValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "Name")%></label>
                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister21" runat="server" ControlToValidate="txtUserName" ErrorMessage="<%$ Resources:lang, RegisterMsg6%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "SureName")%></label>
                    <asp:TextBox ID="txtSureName" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister22" runat="server" ControlToValidate="txtSureName" ErrorMessage="<%$ Resources:lang, RegisterMsg7%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "Country")%></label>
                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="select">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddlCountry"
                        ErrorMessage="Lütfen Ülke seçiniz" InitialValue="">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "City")%></label>
                    <asp:DropDownList ID="ddlCity" runat="server" CssClass="select">
                    </asp:DropDownList>
                    <cc1:RequiredFieldValidator ID="rq3" runat="server" ControlToValidate="ddlCity" ErrorMessage="<%$ Resources:lang, RegisterMsg16%>" InitialValue="">*</cc1:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "District")%></label>
                    <asp:DropDownList ID="ddlDistrict" runat="server">
                    </asp:DropDownList>
                </div>
                 <%--elvan--%>
                <cc3:CascadingDropDown ID="CascadingDropDown1" runat="server" TargetControlID="ddlCountry"
                    Category="CountryId" PromptText="-Ülke Seçiniz-" ServicePath="/services/city.asmx" ServiceMethod="GetCountry" />
                <cc3:CascadingDropDown ID="CascadingDropDown2" runat="server" TargetControlID="ddlCity"
                    ParentControlID="ddlCountry" Category="CityId" PromptText="-Þehir Seçiniz-" ServicePath="/services/city.asmx"
                    ServiceMethod="GetCity" />
                <cc3:CascadingDropDown ID="CascadingDropDown3" runat="server" TargetControlID="ddlDistrict"
                    ParentControlID="ddlCity" Category="DistrictId" PromptValue="0" PromptText="-Ýlçe Seçiniz-" ServicePath="/services/city.asmx"
                    ServiceMethod="GetDistict" />
            </div>
        </div>
        <div id="register_firma_form" class="moduleContentCol2 registerRight radius5 clearFix" runat="server">
            <label class="title3"><%=GetGlobalResourceObject("lang", "RegisterCompanyInfo")%></label>
            <div class="individual">
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyName")%></label>
                    <asp:TextBox ID="txtFirmaUnvan" runat="server" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister111x" runat="server" ControlToValidate="txtFirmaUnvan" ErrorMessage="<%$ Resources:lang, RegisterMsg20%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyTaxOffice")%></label>
                    <asp:TextBox ID="txtVergiD" runat="server" MaxLength="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister111vd" runat="server" ControlToValidate="txtVergiD" ErrorMessage="<%$ Resources:lang, RegisterMsg21%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label>* <%=GetGlobalResourceObject("lang", "RegisterCompanyTaxNo")%></label>
                    <asp:TextBox ID="txtVergiNo" runat="server" MaxLength="15"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister111vno" runat="server" ControlToValidate="txtVergiNo" ErrorMessage="<%$ Resources:lang, RegisterMsg22%>">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "RegisterCompanyPhone")%></label>
                    <ew:MaskedTextBox ID="txtFirmaTel" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                    <asp:RequiredFieldValidator ID="rqRegister111" runat="server" ControlToValidate="txtFirmaTel" ErrorMessage="<%$ Resources:lang, RegisterMsg23%>" Visible="False">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "RegisterCompanyFax")%></label>
                    <ew:MaskedTextBox ID="txtFirmaFax" runat="server" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
                    <asp:RequiredFieldValidator ID="rqRegister112" runat="server" ControlToValidate="txtFirmaFax" ErrorMessage="<%$ Resources:lang,RegisterMsg24 %>" Visible="False">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "RegisterCompanyEmail")%></label>
                    <asp:TextBox ID="txtFirmaMail" runat="server"  MaxLength="50" ToolTip="<%$ Resources:lang,RegisterMsg24 %>"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister113" runat="server" ControlToValidate="txtFirmaMail" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" Visible="False">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rqRegister113_1" runat="server" ControlToValidate="txtFirmaMail" Display="Dynamic" ErrorMessage="<%$ Resources:lang, RequiredEmailMessage%>" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+" Visible="False">*</asp:RegularExpressionValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "RegisterCompanyAddress")%></label>
                    <asp:TextBox ID="txtFirmaAdres" runat="server"  MaxLength="300" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqRegister115" runat="server" ControlToValidate="txtFirmaAdres" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>" Visible="False">*</asp:RequiredFieldValidator>
                </div>
                <div class="moduleCol2">
                    <label><%=GetGlobalResourceObject("lang", "RegisterCompanyWeb")%></label>
                    <asp:TextBox ID="txtWeb" runat="server"  MaxLength="100"></asp:TextBox>
                </div>
                <div class="moduleContentCol2"><label><asp:Label ID="lblSozlesme" runat="server"></asp:Label></label></div>
            </div>
        </div>
        <div style="display: none">
        <label><%=GetGlobalResourceObject("lang", "SocialSecurityNumber")%></label>
        <asp:TextBox ID="txtTCKNo" runat="server" MaxLength="11" Visible="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqRegister101" runat="server" ControlToValidate="txtTCKNo" ErrorMessage="<%$ Resources:lang, RegisterMsg8%>" Visible="False">*</asp:RequiredFieldValidator>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://tckimlik.nvi.gov.tr/Web/QueryIdentityNumber.aspx" Target="_blank">T.C. Kimlik No Sorgula.</asp:HyperLink>

        <label><%=GetGlobalResourceObject("lang", "Sex")%></label>
        <asp:RadioButtonList ID="rbSex" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Text="<%$ Resources:lang, Male%>" Value="1"></asp:ListItem>
            <asp:ListItem Text="<%$ Resources:lang, Fmale%>" Value="0"></asp:ListItem>
        </asp:RadioButtonList>

        <label><%=GetGlobalResourceObject("lang", "BirthDate")%></label>
        <asp:DropDownList ID="ddlDay" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, Day%>" Value="1"></asp:ListItem>
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="11">11</asp:ListItem>
            <asp:ListItem Value="12">12</asp:ListItem>
            <asp:ListItem Value="13">13</asp:ListItem>
            <asp:ListItem Value="14">14</asp:ListItem>
            <asp:ListItem Value="15">15</asp:ListItem>
            <asp:ListItem Value="16">16</asp:ListItem>
            <asp:ListItem Value="17">17</asp:ListItem>
            <asp:ListItem Value="18">18</asp:ListItem>
            <asp:ListItem Value="19">19</asp:ListItem>
            <asp:ListItem Value="20">20</asp:ListItem>
            <asp:ListItem Value="21">21</asp:ListItem>
            <asp:ListItem Value="22">22</asp:ListItem>
            <asp:ListItem Value="23">23</asp:ListItem>
            <asp:ListItem Value="24">24</asp:ListItem>
            <asp:ListItem Value="25">25</asp:ListItem>
            <asp:ListItem Value="26">26</asp:ListItem>
            <asp:ListItem Value="27">27</asp:ListItem>
            <asp:ListItem Value="28">28</asp:ListItem>
            <asp:ListItem Value="29">29</asp:ListItem>
            <asp:ListItem Value="30">30</asp:ListItem>
            <asp:ListItem Value="31">31</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister102" runat="server" ControlToValidate="ddlDay" ErrorMessage="<%$ Resources:lang, RegisterMsg9%>" InitialValue="0" Visible="False">*</asp:RequiredFieldValidator>
        <asp:DropDownList ID="ddlMounth" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, Month%>" Value="1"></asp:ListItem>
            <asp:ListItem Value="1">1</asp:ListItem>
            <asp:ListItem Value="2">2</asp:ListItem>
            <asp:ListItem Value="3">3</asp:ListItem>
            <asp:ListItem Value="4">4</asp:ListItem>
            <asp:ListItem Value="5">5</asp:ListItem>
            <asp:ListItem Value="6">6</asp:ListItem>
            <asp:ListItem Value="7">7</asp:ListItem>
            <asp:ListItem Value="8">8</asp:ListItem>
            <asp:ListItem Value="9">9</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="11">11</asp:ListItem>
            <asp:ListItem Value="12">12</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister102_1" runat="server" ControlToValidate="ddlMounth" ErrorMessage="<%$ Resources:lang, RegisterMsg9%>" InitialValue="0" Visible="False">*</asp:RequiredFieldValidator>
        <asp:DropDownList ID="ddlYear" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, Year%>" Value="1990"></asp:ListItem>
            <asp:ListItem Value="1920">1920</asp:ListItem>
            <asp:ListItem Value="1921">1921</asp:ListItem>
            <asp:ListItem Value="1922">1922</asp:ListItem>
            <asp:ListItem Value="1923">1923</asp:ListItem>
            <asp:ListItem Value="1924">1924</asp:ListItem>
            <asp:ListItem Value="1925">1925</asp:ListItem>
            <asp:ListItem Value="1926">1926</asp:ListItem>
            <asp:ListItem Value="1927">1927</asp:ListItem>
            <asp:ListItem Value="1928">1928</asp:ListItem>
            <asp:ListItem Value="1929">1929</asp:ListItem>
            <asp:ListItem Value="1930">1930</asp:ListItem>
            <asp:ListItem Value="1931">1931</asp:ListItem>
            <asp:ListItem Value="1932">1932</asp:ListItem>
            <asp:ListItem Value="1933">1933</asp:ListItem>
            <asp:ListItem Value="1934">1934</asp:ListItem>
            <asp:ListItem Value="1935">1935</asp:ListItem>
            <asp:ListItem Value="1936">1936</asp:ListItem>
            <asp:ListItem Value="1937">1937</asp:ListItem>
            <asp:ListItem Value="1938">1938</asp:ListItem>
            <asp:ListItem Value="1939">1939</asp:ListItem>
            <asp:ListItem Value="1940">1940</asp:ListItem>
            <asp:ListItem Value="1941">1941</asp:ListItem>
            <asp:ListItem Value="1942">1942</asp:ListItem>
            <asp:ListItem Value="1943">1943</asp:ListItem>
            <asp:ListItem Value="1944">1944</asp:ListItem>
            <asp:ListItem Value="1945">1945</asp:ListItem>
            <asp:ListItem Value="1946">1946</asp:ListItem>
            <asp:ListItem Value="1947">1947</asp:ListItem>
            <asp:ListItem Value="1948">1948</asp:ListItem>
            <asp:ListItem Value="1949">1949</asp:ListItem>
            <asp:ListItem Value="1950">1950</asp:ListItem>
            <asp:ListItem Value="1951">1951</asp:ListItem>
            <asp:ListItem Value="1952">1952</asp:ListItem>
            <asp:ListItem Value="1953">1953</asp:ListItem>
            <asp:ListItem Value="1954">1954</asp:ListItem>
            <asp:ListItem Value="1955">1955</asp:ListItem>
            <asp:ListItem Value="1956">1956</asp:ListItem>
            <asp:ListItem Value="1957">1957</asp:ListItem>
            <asp:ListItem Value="1958">1958</asp:ListItem>
            <asp:ListItem Value="1959">1959</asp:ListItem>
            <asp:ListItem Value="1960">1960</asp:ListItem>
            <asp:ListItem Value="1961">1961</asp:ListItem>
            <asp:ListItem Value="1962">1962</asp:ListItem>
            <asp:ListItem Value="1963">1963</asp:ListItem>
            <asp:ListItem Value="1964">1964</asp:ListItem>
            <asp:ListItem Value="1965">1965</asp:ListItem>
            <asp:ListItem Value="1966">1966</asp:ListItem>
            <asp:ListItem Value="1967">1967</asp:ListItem>
            <asp:ListItem Value="1968">1968</asp:ListItem>
            <asp:ListItem Value="1969">1969</asp:ListItem>
            <asp:ListItem Value="1970">1970</asp:ListItem>
            <asp:ListItem Value="1971">1971</asp:ListItem>
            <asp:ListItem Value="1972">1972</asp:ListItem>
            <asp:ListItem Value="1973">1973</asp:ListItem>
            <asp:ListItem Value="1974">1974</asp:ListItem>
            <asp:ListItem Value="1975">1975</asp:ListItem>
            <asp:ListItem Value="1976">1976</asp:ListItem>
            <asp:ListItem Value="1977">1977</asp:ListItem>
            <asp:ListItem Value="1978">1978</asp:ListItem>
            <asp:ListItem Value="1979">1979</asp:ListItem>
            <asp:ListItem Value="1980">1980</asp:ListItem>
            <asp:ListItem Value="1981">1981</asp:ListItem>
            <asp:ListItem Value="1982">1982</asp:ListItem>
            <asp:ListItem Value="1983">1983</asp:ListItem>
            <asp:ListItem Value="1984">1984</asp:ListItem>
            <asp:ListItem Value="1985">1985</asp:ListItem>
            <asp:ListItem Value="1986">1986</asp:ListItem>
            <asp:ListItem Value="1987">1987</asp:ListItem>
            <asp:ListItem Value="1988">1988</asp:ListItem>
            <asp:ListItem Value="1989">1989</asp:ListItem>
            <asp:ListItem Value="1990">1990</asp:ListItem>
            <asp:ListItem Value="1991">1991</asp:ListItem>
            <asp:ListItem Value="1992">1992</asp:ListItem>
            <asp:ListItem Value="1993">1993</asp:ListItem>
            <asp:ListItem Value="1994">1994</asp:ListItem>
            <asp:ListItem Value="1995">1995</asp:ListItem>
            <asp:ListItem Value="1996">1996</asp:ListItem>
            <asp:ListItem Value="1997">1997</asp:ListItem>
            <asp:ListItem Value="1998">1998</asp:ListItem>
            <asp:ListItem Value="1999">1999</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister102_2" runat="server" ControlToValidate="ddlYear" ErrorMessage="<%$ Resources:lang, RegisterMsg9%>" Visible="False" InitialValue="0">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "Profession")%></label>
        <asp:DropDownList ID="ddlMeslek" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, Profession2%>" Value="0"></asp:ListItem>
            <asp:ListItem Value="Analist">Analist</asp:ListItem>
            <asp:ListItem Value="Askeri personel">Askeri personel</asp:ListItem>
            <asp:ListItem Value="Avukat">Avukat</asp:ListItem>
            <asp:ListItem Value="Bankacýlýk-sigortacýlýk">Bankacýlýk-sigortacýlýk</asp:ListItem>
            <asp:ListItem Value="Bilgisayar-donaným">Bilgisayar-donaným</asp:ListItem>
            <asp:ListItem Value="Bilgisayar-yazýlým">Bilgisayar-yazýlým</asp:ListItem>
            <asp:ListItem Value="Danýþmanlýk">Danýþmanlýk</asp:ListItem>
            <asp:ListItem Value="Diþ Hekimi">Diþ Hekimi</asp:ListItem>
            <asp:ListItem Value="Doktor">Doktor</asp:ListItem>
            <asp:ListItem Value="Eczacý">Eczacý</asp:ListItem>
            <asp:ListItem Value="Eðitimci-&#246;ðretmen">Eðitimci-&#246;ðretmen</asp:ListItem>
            <asp:ListItem Value="Emekli">Emekli</asp:ListItem>
            <asp:ListItem Value="Ev kadýný">Ev kadýný</asp:ListItem>
            <asp:ListItem Value="Halkla iliþkiler">Halkla iliþkiler</asp:ListItem>
            <asp:ListItem Value="Hizmet Sekt&#246;r&#252;">Hizmet Sekt&#246;r&#252;</asp:ListItem>
            <asp:ListItem Value="Gazetecilik-televizyonculuk">Gazetecilik-televizyonculuk</asp:ListItem>
            <asp:ListItem Value="Ýmalat">Ýmalat</asp:ListItem>
            <asp:ListItem Value="Ýnsan kaynaklarý">Ýnsan kaynaklarý</asp:ListItem>
            <asp:ListItem Value="Ýnþaat-Muteahhit">Ýnþaat-Muteahhit</asp:ListItem>
            <asp:ListItem Value="Ýthalat-ihracat">Ýthalat-ihracat</asp:ListItem>
            <asp:ListItem Value="Ýþ&#231;i">Ýþ&#231;i</asp:ListItem>
            <asp:ListItem Value="Ýþsiz">Ýþsiz</asp:ListItem>
            <asp:ListItem Value="Memur">Memur</asp:ListItem>
            <asp:ListItem Value="Mimar">Mimar</asp:ListItem>
            <asp:ListItem Value="M&#252;hendis">M&#252;hendis</asp:ListItem>
            <asp:ListItem Value="Teknik eleman">Teknik eleman</asp:ListItem>
            <asp:ListItem Value="Muhasebe">Muhasebe</asp:ListItem>
            <asp:ListItem Value="Otomotiv">Otomotiv</asp:ListItem>
            <asp:ListItem Value="&#214;ðrenci">&#214;ðrenci</asp:ListItem>
            <asp:ListItem Value="&#214;ðretim g&#246;revlisi-Asistan">&#214;ðretim g&#246;revlisi-Asistan</asp:ListItem>
            <asp:ListItem Value="Reklamcýlýk">Polis</asp:ListItem>
            <asp:ListItem Value="Reklamcýlýk">Reklamcýlýk</asp:ListItem>
            <asp:ListItem Value="Satýþ-pazarlama">Satýþ-pazarlama</asp:ListItem>
            <asp:ListItem Value="Sanat&#231;ý">Sanat&#231;ý</asp:ListItem>
            <asp:ListItem Value="Tanýtým">Tanýtým</asp:ListItem>
            <asp:ListItem Value="Ticaret">Ticaret</asp:ListItem>
            <asp:ListItem Value="Týp">Týp</asp:ListItem>
            <asp:ListItem Value="Turizm">Turizm</asp:ListItem>
            <asp:ListItem Value="Yayýncýlýk">Yayýncýlýk</asp:ListItem>
            <asp:ListItem Value="Yazar">Yazar</asp:ListItem>
            <asp:ListItem Value="Y&#246;netici">Y&#246;netici</asp:ListItem>
            <asp:ListItem Value="Diðer">Diðer</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister103" runat="server" ControlToValidate="ddlMeslek" ErrorMessage="<%$ Resources:lang, RegisterMsg10%>" InitialValue="0" Visible="False">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "Education")%></label>
        <asp:DropDownList ID="ddlEgitim" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, Education2%>" Value="0"></asp:ListItem>
            <asp:ListItem Value="Ýlkokul">Ýlkokul</asp:ListItem>
            <asp:ListItem Value="Ortaokul">Ortaokul</asp:ListItem>
            <asp:ListItem Value="Lise">Lise</asp:ListItem>
            <asp:ListItem Value="&#220;niversite">&#220;niversite</asp:ListItem>
            <asp:ListItem Value="Y&#252;ksek Lisans">Y&#252;ksek Lisans</asp:ListItem>
            <asp:ListItem Value="Doktora">Doktora</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister104" runat="server" ControlToValidate="ddlEgitim" ErrorMessage="<%$ Resources:lang, RegisterMsg11%>" InitialValue="0" Visible="False">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "WhereToHear")%></label>
        <asp:DropDownList ID="ddlNereden" runat="server" Visible="True">
            <asp:ListItem Text="<%$ Resources:lang, WhereToHear2%>" Value="0"></asp:ListItem>
            <asp:ListItem Value="Arama Motorlarýndan">Arama Motorlarýndan</asp:ListItem>
            <asp:ListItem Value="Ýnternet sitelerinden">Ýnternet sitelerinden</asp:ListItem>
            <asp:ListItem Value="Ýnternet Reklamlarýndan">Ýnternet Reklamlarýndan</asp:ListItem>
            <asp:ListItem Value="Gazete ve Dergilerden">Gazete ve Dergilerden</asp:ListItem>
            <asp:ListItem Value="Tanýdýklarýmdan">Tanýdýklarýmdan</asp:ListItem>
            <asp:ListItem Value="Televizyondan">Televizyondan</asp:ListItem>
            <asp:ListItem Value="Radyodan">Radyodan</asp:ListItem>
            <asp:ListItem Value="Afiþlerden">Afiþlerden</asp:ListItem>
            <asp:ListItem Value="Diðer">Diðer</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rqRegister105" runat="server" ControlToValidate="ddlNereden" ErrorMessage="<%$ Resources:lang, RegisterMsg12%>" InitialValue="0" Visible="False">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "PhoneHome")%></label>
        <ew:MaskedTextBox ID="txtUserTel" runat="server" Width="100px" ErrorMessage="geçersiz giriþ" ErrorText="*" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
        <asp:RequiredFieldValidator ID="rqRegister106" runat="server" ControlToValidate="txtUserTel" ErrorMessage="<%$ Resources:lang, RegisterMsg13%>" Visible="False">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "PhoneWork")%></label>
        <ew:MaskedTextBox ID="txtUserIsTel" runat="server" Width="100px" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
        <asp:RequiredFieldValidator ID="rqRegister107" runat="server" ControlToValidate="txtUserIsTel" ErrorMessage="<%$ Resources:lang, RegisterMsg14%>" Visible="False">*</asp:RequiredFieldValidator>

        <label><%=GetGlobalResourceObject("lang", "PhoneGsm")%></label>
        <ew:MaskedTextBox ID="txtUserGsm" runat="server" Width="100px" ErrorMessage="geçersiz giriþ" Mask="9999999999999" MaxLength="14"></ew:MaskedTextBox>
        <asp:RequiredFieldValidator ID="rqRegister108" runat="server" ControlToValidate="txtUserGSM" ErrorMessage="<%$ Resources:lang, RegisterMsg15%>" Visible="False">*</asp:RequiredFieldValidator>

        <%--arash--%>

        <%--arash--%>

        <label><%=GetGlobalResourceObject("lang", "Address")%></label>
        <asp:TextBox ID="txtUserAddress" runat="server" Width="200px" MaxLength="300" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqRegister110" runat="server" ControlToValidate="txtUserAddress" ErrorMessage="<%$ Resources:lang, RegisterMsg19%>" Visible="False">*</asp:RequiredFieldValidator>
    </div>
        <div class="captha radius5 clearFix">
            <div class="moduleCol2">
                <label><%=GetGlobalResourceObject("lang", "Captha")%></label>
                <label>
                    <img runat="server" id="imgCaptha" src="/services/captha.aspx" border="0" alt="" width="132" height="30" />
                </label>
            </div>
            <div class="moduleCol2">
                <label>
                    <asp:TextBox ID="txtCaptha" runat="server"></asp:TextBox>
                </label>
            </div>
            <div class="moduleCol2">
                <label>
                    <asp:CheckBox ID="chkTerms" runat="server"></asp:CheckBox><%=GetGlobalResourceObject("lang", "AcceptTerms")%>
                    <asp:CustomValidator ID="rqterms" runat="server" ClientValidationFunction="ValidateTerms" ErrorMessage="<%$ Resources:lang, RegisterMsg29%>">*</asp:CustomValidator>
                </label>
            </div>
            <div class="moduleCol2">
                <label>
                    <asp:Label ID="lblRegister404" runat="server" Text="<%$ Resources:lang, RegisterMsg1%>"></asp:Label></label>
                <div id="alert" runat="server" class="alert">
                    <asp:Label ID="lblError" runat="Server"></asp:Label>
                </div>
                <asp:LinkButton ID="RegisterBtn" runat="server" CssClass="button" Text="<%$ Resources:lang, RegisterButton%>"></asp:LinkButton>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
            </div>
        </div>
	</div>
</div>
    <script type="text/javascript">
        function ValidateTerms(source, args) {
            args.IsValid = document.getElementById('<%= chkTerms.ClientID %>').checked;
        }
    </script>
