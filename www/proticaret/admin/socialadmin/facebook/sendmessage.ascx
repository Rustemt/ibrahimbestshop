<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sendmessage.ascx.vb" Inherits=".sendmessage1" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageSocialSendMessage">
    <div id="content" runat="server">
        <div class="dataForm">
            <div class="row">
                <div class="colTwo">
                    <div class="dataForm">
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "Title")%></label>
                                <asp:TextBox runat="server" ID="txtUstBaslik"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "TitleUrl")%></label>
                                <asp:TextBox runat="server" ID="txtUstBaslikLink"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "SubTitle")%></label>
                                <asp:TextBox runat="server" ID="txtAltBaslik"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "UploadImage")%></label>
                                <asp:FileUpload runat="server" ID="fiUpload" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "Description")%></label>
                                <asp:TextBox runat="server" ID="txtAciklama" TextMode="MultiLine" Height="50px"></asp:TextBox>
                            </div>
                            <div class="colTwo">
                                <label><%=GetGlobalResourceObject("admin", "Message")%> <small><%=GetGlobalResourceObject("admin", "FacebookMenuMsg3")%></small>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMessage" ValidationGroup="message" ErrorMessage="<%$ Resources:admin,FacebookMenuMsg4 %>">*</asp:RequiredFieldValidator></label>
                                <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" Height="50px"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="colTwo">
                    <label><%=GetGlobalResourceObject("admin", "FacebookMenuMsg1")%> :</label>
                    <img src="/admin/assets/images/social/facebook.jpg" alt="" />
                </div>
            </div>
        </div>
        <div class="buttonGroup">
            <aspzone:OneClickButton ID="btnSend" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,SendMessage %>" ValidationGroup="message" WaitText="<%$ Resources:admin,SendingMessage %>"></aspzone:OneClickButton>
        </div>
    </div>
    <div id="alert" runat="server" class="alert" visible="false">
        <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label></div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,AddNew %>" Visible="false"></asp:HyperLink>
            </div>
            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li> 
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced active" title="Gelişmiş Arama"><i class="fa fa-search-plus"></i></div>
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
                                <div class="col">
                                    <label>&nbsp;</label>
                                    <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%=GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                </div>
                            </div>
                            <div class="colGroup colGroupAdvanced">
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "CreateDate")%></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" Text=">" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" Text="<" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
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
                                    <ew:CalendarPopup ID="LTarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" Text=">" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="LTarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" Text="<" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                    <Columns>
                        <asp:BoundColumn DataField="UserId" SortExpression="UserId" Visible="false" HeaderText="IND"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId")%> '><%#Eval("Name")%></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                        <asp:BoundColumn DataField="UCODE1" Visible="false" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") &  ""","""",""width=750,height=850,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-user"></i> <%=GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Delete %>">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" Enabled="<%# IsAllowedOnDemo() %>" CausesValidation="false" CommandName="Delete" CssClass="btnDefault" Text="<%$ Resources:admin,Delete %>" Visible="false"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                </asp:DataGrid>
            </div>
            <div class="dataCount">
                <ul>
                    <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                    <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                </ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
