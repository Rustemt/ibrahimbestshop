<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sendmail.aspx.vb" Inherits="ASPNetPortal.sendmail" %>

<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register TagPrefix="FCKeditorV2" Namespace="FredCK.FCKeditorV2" Assembly="FredCK.FCKeditorV2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= GetGlobalResourceObject("admin","BulkMailSent") %></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagePopup">
            <div class="boxToggle">
                <div class="toggleTitle">
                    <div class="titleText" runat="server"><%= GetGlobalResourceObject("admin","BulkMailSent") %></div>
                </div>
                <div class="toggleContent">
                    <div id="alert" runat="server" class="alert alert-info" visible="false">
                        <asp:Label ID="lblError" runat="Server" EnableViewState="False"></asp:Label>
                    </div>

                    <div class="dataForm" id="content" runat="server">
                        <div class="row">
                            <div class="col1-1">
                                <div class="row">
                                    <div class="colOne">
                                        <label><%=GetGlobalResourceObject("admin", "CampainName")%> :</label>
                                        <label class="labelInput">
                                            <asp:Label runat="server" ID="lblCampaignName"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%=GetGlobalResourceObject("admin", "Subject")%> :</label>
                                        <label class="labelInput">
                                            <asp:Label runat="server" ID="lblSubject"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%=GetGlobalResourceObject("admin", "FromName")%> :</label>
                                        <label class="labelInput">
                                            <asp:Label runat="server" ID="lblFromName"></asp:Label></label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <label><%=GetGlobalResourceObject("admin", "Message")%> :</label>
                                        <asp:Label runat="server" ID="LblMailTxt"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="colOne">
                                        <aspzone:OneClickButton ID="btnSend" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,MailSent %>" ValidationGroup="message" WaitText="<%$ Resources:admin,SendingMessage %>"></aspzone:OneClickButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="cUserList" class="module">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                            <ContentTemplate>
                                <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,AddNew %>" Visible="false"></asp:HyperLink>
                                <div class="alert alert-info">
                                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                                </div>
                                <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                                <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>

                                <div class="dataFilter">
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
                                        <div class="col col4">
                                            <label><%=GetGlobalResourceObject("admin", "CreateDate")%></label>
                                            <ew:CalendarPopup ID="Tarih1" Text=">" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                            <ew:CalendarPopup ID="tarih2" Text="<" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        </div>
                                        <div class="col">
                                            <label><%=GetGlobalResourceObject("admin", "MailReceivingStatus")%></label>
                                            <asp:DropDownList ID="ddlMailListActive" runat="server">
                                                <asp:ListItem Text="<%$ Resources:admin,UserAll %>" Value="-1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Active %>" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="<%$ Resources:admin,Passive %>" Value="0"></asp:ListItem>
                                            </asp:DropDownList>
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
                                        <div class="col" style="display: none;">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td id="Td1" runat="server" visible="false">
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
                                                    </td>
                                                </tr>
                                            </table>
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
                                            <ew:CalendarPopup ID="LTarih1" runat="server" Text=">" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                            <ew:CalendarPopup ID="LTarih2" runat="server" Text="<" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
                                        </div>
                                        <div class="col">
                                            <label>&nbsp;</label>
                                            <asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i><%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                                <div class="dataTable">
                                    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" HeaderStyle-CssClass="title" Width="100%" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True">
                                        <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
                                        <Columns>
                                            <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND" Visible="false"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>



                                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,UserName %>">
                                                <ItemTemplate>
                                                    <%--<asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><%# Eval("Name")%></asp:HyperLink>--%>
                                                    <a href="javascript:void(0)" class="btnLink"  onclick="<%# "popupWindow(625,850,50,'/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")  & "','popup');"%>"><%#Eval("Name")%></a>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>

                                            <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="UCODE1" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>" Visible="false"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                                            <asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
                                            <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,MailReceivingStatus %>">
                                                <ItemTemplate>
                                                    <asp:CheckBox runat="server" Enabled="False" Checked='<%# DataBinder.Eval(Container.DataItem, "IsSendMail") %>' ID="Checkbox1"></asp:CheckBox>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>

                                            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                                                <ItemTemplate>
                                                    <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/ecommerce/user/EditUser.aspx?IND=" & DataBinder.Eval(Container.DataItem, "UserId")%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                            <asp:TemplateColumn Visible="false" HeaderText="<%$ Resources:admin,Delete %>">
                                                <ItemTemplate>
                                                    <asp:LinkButton Visible="false" Enabled="<%# IsAllowedOnDemo() %>" ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="deletebutton"><i class="fa fa-trash-o"></i><%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid>
                                </div>
                                <div class="dataCount">
                                    <ul>
                                        <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
                                        <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :
                                            <asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
                                        <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :
                                            <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
                                    </ul>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
