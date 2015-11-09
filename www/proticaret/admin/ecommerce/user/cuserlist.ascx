<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cUserList" CodeBehind="CUserList.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc3" %>
<div class="pageUserList">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbljs" runat="server" />

            <div class="buttonGroup">
                <asp:HyperLink ID="lnkAddNew" runat="server" data-width="750" data-height="750" CssClass="btnDefault fancyContent"><i class="fa fa-plus"></i> <%= GetGlobalResourceObject("admin","AddNew") %></asp:HyperLink>
            </div>

            <div class="dataFilter boxToggle">
                <div class="toggleTitle toggleMini">
                    <div class="titleTab">
                        <ul class="tabMenu">
                            <li><a href="#"><%= GetGlobalResourceObject("admin","Filter") %></a></li>
                        </ul>
                    </div>
                    <div class="titleToggle"></div>
                    <div class="titleAdvanced" title="Geliþmiþ Arama"><i class="fa fa-search-plus"></i></div>
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
                                <div class="col col2">
                                    <label>Firma Adý</label>
                                    <asp:TextBox ID="txtcompanyname" runat="server"></asp:TextBox>
                                    <asp:DropDownList ID="ddlcompany" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col4">
                                    <label><%=GetGlobalResourceObject("admin", "CreateDate")%> ></label>
                                    <ew:CalendarPopup ID="Tarih1" runat="server" Text=">" GoToTodayText="Bugün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="tarih2" runat="server" Text="<" GoToTodayText="Bugün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
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
                                        <asp:ListItem Text="<%$ Resources:admin,BankingInsurance %>" Value="Bankacýlýk-sigortacýlýk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ComputerHardware %>" Value="Bilgisayar-donaným"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ComputerSoftware %>" Value="Bilgisayar-yazýlým"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Consulting %>" Value="Danýþmanlýk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Dentist %>" Value="Diþ Hekimi"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Doctor %>" Value="Doktor"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Pharmacist %>" Value="Eczacý"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,EducatorsTeachers %>" Value="Eðitimci-&#246;ðretmen"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Retired %>" Value="Emekli"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Housewife %>" Value="Ev kadýný"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,PublicRelations %>" Value="Halkla iliþkiler"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ServiceIndustry %>" Value="Hizmet Sekt&#246;r&#252;"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,JournalismBroadcasting %>" Value="Gazetecilik-televizyonculuk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Manufacturing %>" Value="Ýmalat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,HumanResources %>" Value="Ýnsan kaynaklarý"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ConstructionContractors %>" Value="Ýnþaat-M&#252;tahit"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ImportExport %>" Value="Ýthalat-ihracat"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Worker %>" Value="Ýþ&#231;i"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Unemployed %>" Value="Ýþsiz"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,CivilServant %>" Value="Memur"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Architect %>" Value="Mimar"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Engineer %>" Value="M&#252;hendis"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,TechnicalStaff %>" Value="Teknik eleman"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Accountancy %>" Value="Muhasebe"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Student %>" Value="&#214;ðrenci"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,LecturerAssistant %>" Value="&#214;ðretim g&#246;revlisi-Asistan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Advertising %>" Value="Reklamcýlýk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,SalesMarketing %>" Value="Satýþ-pazarlama"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Artist %>" Value="Sanat&#231;ý"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Promotion %>" Value="Tanýtým"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Trade %>" Value="Ticaret"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Medicine %>" Value="Týp"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Tourism %>" Value="Turizm"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Publishing %>" Value="Yayýncýlýk"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Author %>" Value="Yazar"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Manager %>" Value="Y&#246;netici"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="Diðer"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col col2">
                                    <label><%=GetGlobalResourceObject("admin", "WhereToHear")%></label>
                                    <asp:DropDownList ID="ddlNereden" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,WhereToHear2 %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,WebSearchEngine %>" Value="Arama Motorlarýndan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,InternetSites %>" Value="Ýnternet sitelerinden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,InternetAdvertising %>" Value="Ýnternet Reklamlarýndan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,NewspaperMagazines %>" Value="Gazete ve Dergilerden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Acquaintance %>" Value="Tanýdýklarýmdan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Television %>" Value="Televizyondan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Radio %>" Value="Radyodan"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Posters %>" Value="Afiþlerden"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,Other %>" Value="Diðer"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col">
                                    <label><%=GetGlobalResourceObject("admin", "Education")%></label>
                                    <asp:DropDownList ID="ddlEgitim" runat="server">
                                        <asp:ListItem Text="<%$ Resources:admin,EducationLevel %>" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="<%$ Resources:admin,ElementarySchool %>" Value="Ýlkokul"></asp:ListItem>
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
                                    <label><%=GetGlobalResourceObject("admin", "LoginDate")%> > </label>
                                    <ew:CalendarPopup ID="LTarih1" runat="server" Text=">" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                    <ew:CalendarPopup ID="LTarih2" runat="server" Text="<" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
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
                        <asp:BoundColumn DataField="Name" Visible="false" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="UCODE1" Visible="False" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,BillingAddress %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink2" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditBilling.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId")  %> '><i class="fa fa-file-text-o"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,ShippingAddress %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink3" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditShipping.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-truck"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Fiy. List" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="hyppricelist" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditPrice.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '>
         <i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Cart %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkcart" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/CartList.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId")  %> '><i class="fa fa-shopping-cart"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Orders %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="Hyperlink4" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/OrderList.aspx?Status=all&email=" & DataBinder.Eval(Container.DataItem,"Email") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem,"UserId") %> '><i class="fa fa-pencil"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>

                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" Enabled="<%# IsAllowedOnDemo() %>" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
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
            <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                <ProgressTemplate>
                    <div class="modalPopup">
                        <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                        <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                    </div>
                </ProgressTemplate>
            </asp:ModalUpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
