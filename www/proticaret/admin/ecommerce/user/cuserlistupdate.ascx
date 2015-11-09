<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="cuserlistupdate.ascx.vb" Inherits="ASPNetPortal.cuserlistupdate" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<div class="pageUserListUpdate">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li> 
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
                </div>
                <div class="toggleContent">
                    <div class="tabContent">
                        <div class="tab">
                            <div class="colGroup">
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "MemberType")%></label>
                                    <asp:DropDownList ID="ddlUserType" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Individual %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Institutional %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Salesman %>" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Dealer")%></label>
                                    <asp:DropDownList ID="ddlBayi" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Yes %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,No %>" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "CompanyCode")%></label>
                                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlCodeFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "UserName")%></label>
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlfilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "Email")%></label>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlemail" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "FullName")%></label>
                                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "CreateDate")%></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text=">" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Text="<" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                                <div class="col colAuto">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                            	<div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Country")%></label>
                                    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "City")%></label>
                                    <asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "District")%></label>
                                    <asp:DropDownList ID="ddlDistrict" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Job")%></label>
                                    <asp:DropDownList ID="ddlMeslek" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,YourProfession %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Analyst %>" Value="Analist"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MilitaryPersonnel %>" Value="Askeri personel"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Lawyer %>" Value="Avukat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,BankingInsurance %>" Value="Bankacılık-sigortacılık"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ComputerHardware %>" Value="Bilgisayar-donanım"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ComputerSoftware %>" Value="Bilgisayar-yazılım"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Consulting %>" Value="Danışmanlık"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Dentist %>" Value="Diş Hekimi"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Doctor %>" Value="Doktor"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Pharmacist %>" Value="Eczacı"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,EducatorsTeachers %>" Value="Eğitimci-&#246;ğretmen"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Retired %>" Value="Emekli"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Housewife %>" Value="Ev kadını"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PublicRelations %>" Value="Halkla ilişkiler"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ServiceIndustry %>" Value="Hizmet Sekt&#246;r&#252;"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,JournalismBroadcasting %>" Value="Gazetecilik-televizyonculuk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Manufacturing %>" Value="İmalat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,HumanResources %>" Value="İnsan kaynakları"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ConstructionContractors %>" Value="İnşaat-M&#252;tahit"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ImportExport %>" Value="İthalat-ihracat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Worker %>" Value="İş&#231;i"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Unemployed %>" Value="İşsiz"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CivilServant %>" Value="Memur"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Architect %>" Value="Mimar"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Engineer %>" Value="M&#252;hendis"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TechnicalStaff %>" Value="Teknik eleman"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Accountancy %>" Value="Muhasebe"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Student %>" Value="&#214;ğrenci"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,LecturerAssistant %>" Value="&#214;ğretim g&#246;revlisi-Asistan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Advertising %>" Value="Reklamcılık"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesMarketing %>" Value="Satış-pazarlama"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Artist %>" Value="Sanat&#231;ı"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Promotion %>" Value="Tanıtım"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Trade %>" Value="Ticaret"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Medicine %>" Value="Tıp"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Tourism %>" Value="Turizm"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Publishing %>" Value="Yayıncılık"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Author %>" Value="Yazar"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Manager %>" Value="Y&#246;netici"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="Diğer"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "WhereToHear")%></label>
                                    <asp:DropDownList ID="ddlNereden" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,WhereToHear2 %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,WebSearchEngine %>" Value="Arama Motorlarından"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,InternetSites %>" Value="İnternet sitelerinden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,InternetAdvertising %>" Value="İnternet Reklamlarından"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,NewspaperMagazines %>" Value="Gazete ve Dergilerden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Acquaintance %>" Value="Tanıdıklarımdan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Television %>" Value="Televizyondan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Radio %>" Value="Radyodan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Posters %>" Value="Afişlerden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="Diğer"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Education")%></label>
                                    <asp:DropDownList ID="ddlEgitim" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,EducationLevel %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ElementarySchool %>" Value="İlkokul"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SecondarySchool %>" Value="Ortaokul"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,HighSchool %>" Value="Lise"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,University %>" Value="&#220;niversite"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,MasterDegree %>" Value="Y&#252;ksek Lisans"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Doctorate %>" Value="Doktora"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Code1")%></label>
                                    <asp:DropDownList ID="ddlCode1" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "Password")%></label>
                                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlPassword" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Affiliates")%></label>
                                    <asp:DropDownList ID="ddlAfiliate" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,All %>" Selected="True" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "LoginDate")%></label>
                                    <ew:CalendarPopup ID="LTarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="LTarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                            </div>
                        </div>
                        <div class="tab">Raporlar</div>
                    </div>
                </div>
            </div>

            <div class="dataForm">
                <div class="row">
                    <div class="col1-1">
                        <div class="boxToggle">
                            <div class="toggleTitle toggleMini">
                                <div class="titleText">Toplu Kullanıcı Güncelleme</div>
                            </div>
                            <div class="toggleContent" style="padding: 10px;">
                                <div class="dataForm">
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "MemberType")%></label>
                                            <asp:DropDownList ID="ddlUserTypeUpdate" runat="server">
                                                <asp:ListItem Value="-1" Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Individual %>" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Institutional %>" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Salesman %>" Value="2"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnUpdateUserType" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                            <asp:Label ID="lblUserTypeError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "UserStatus")%></label>
                                            <asp:DropDownList ID="ddlIsActive" runat="server">
                                                <asp:ListItem Value="-1" Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                                <asp:ListItem Value="0" Text="<%$ Resources:admin,Passive %>"></asp:ListItem>
                                                <asp:ListItem Value="1" Text="<%$ Resources:admin,Active %>"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnIsActive" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                            <asp:Label ID="lblIsActiveError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Affiliates")%></label>
                                            <asp:DropDownList ID="ddlSalePartner" runat="server">
                                                <asp:ListItem Value="-1" Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Pending %>" Value="2"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnSalePartner" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                            <asp:Label ID="lblSalePartnerError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "Discount")%></label>
                                            <asp:TextBox ID="txtDisAccount" runat="server"></asp:TextBox>
                                            <asp:Button ID="btnDisAccount" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                            <asp:Label ID="lblDisAccountError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne colBtn">
                                            <label><%=GetGlobalResourceObject("admin", "StockPrice")%></label>
                                            <asp:DropDownList ID="ddlStokIsk" runat="server">
                                                <asp:ListItem Value="-1" Text="<%$ Resources:admin,SelectUserUpdate %>"></asp:ListItem>
                                                <asp:ListItem Value="1" Text="<%$ Resources:admin,SalesPrice1 %>"></asp:ListItem>
                                                <asp:ListItem Value="2" Text="<%$ Resources:admin,SalesPrice2 %>"></asp:ListItem>
                                                <asp:ListItem Value="3" Text="<%$ Resources:admin,SalesPrice3 %>"></asp:ListItem>
                                                <asp:ListItem Value="4" Text="<%$ Resources:admin,SalesPrice4 %>"></asp:ListItem>
                                                <asp:ListItem Value="5" Text="<%$ Resources:admin,SalesPrice5 %>"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:Button ID="btnStokIsk" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                            <asp:Label ID="lblStokIskError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="colOne">
                                            <label><%=GetGlobalResourceObject("admin", "Code")%></label>
                                            <asp:DropDownList ID="ddlCode" runat="server" AutoPostBack="True"></asp:DropDownList>
                                           <div class="colOne colBtn"> 
                                           <asp:DropDownList ID="ddlCodeUpdate" runat="server"></asp:DropDownList>
                                            <asp:Button ID="btnCode" CssClass="btnDefault" runat="server" Text="<%$ Resources:admin,Update %>" />
                                           </div>
                                            <asp:Label ID="lblCodeError" runat="server" CssClass="textRed"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col1-3">
                        <div class="dataTable">
                            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                                <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager"></PagerStyle>
                                <Columns>
                                    <asp:BoundColumn DataField="UserId" Visible="false" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
                                    <asp:TemplateColumn SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink5" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><%#Eval("Name")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="email" SortExpression="email" HeaderText="<%$ Resources:admin,Email %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="UCODE1" Visible="False" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                                    <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:admin,BillingAddress %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditBilling.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:admin,ShippingAddress %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="Hyperlink3" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditShipping.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:admin,Cart %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="lnkcart" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/CartList.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-shopping-cart"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn Visible="False" HeaderText="<%$ Resources:admin,Orders %>">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="Hyperlink4" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/OrderList.aspx?Status=all&email=" & DataBinder.Eval(Container.DataItem,"Email") %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" Visible="false">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </div>
                        <div class="dataCount clearfix">
                            <ul>
                                <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                <li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
        <ProgressTemplate>
            <div class="modalPopup">
                <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
            </div>
        </ProgressTemplate>
    </asp:ModalUpdateProgress>
</div>
