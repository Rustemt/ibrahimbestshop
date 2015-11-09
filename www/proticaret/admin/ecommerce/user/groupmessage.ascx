<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="groupmessage.ascx.vb" Inherits=".groupmessage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageGroupMessage">	
	<asp:UpdatePanel ID="updatepanel1" runat="server" UpdateMode="Always">
	<ContentTemplate>
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
								<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
								<ew:CalendarPopup ID="tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
							</div>
							<div class="col colAuto">
								<label>&nbsp;</label>
								<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
							</div>
						</div>
                        <div class="colGroup colGroupAdvanced">
                        	<div class="col">
								<label> <%=GetGlobalResourceObject("admin", "Country")%></label>
								<asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="true"></asp:DropDownList>
							</div>
							<div class="col">
								<label> <%=GetGlobalResourceObject("admin", "City")%></label>
								<asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true"></asp:DropDownList>
							</div>
							<div class="col">
								<label> <%=GetGlobalResourceObject("admin", "District")%></label>
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
								<asp:DropDownList ID="ddlCode1" runat="server"> </asp:DropDownList>
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
								<ew:CalendarPopup ID="LTarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" Text=">" DisableTextBoxEntry="False"></ew:CalendarPopup>
								<ew:CalendarPopup ID="LTarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" calendarlocation="Bottom" Text="<" DisableTextBoxEntry="False"></ew:CalendarPopup>
							</div>
                        </div>
					</div>
					<div class="tab">

                        <div id="report_container">
    <div id="report_history">
       <div class="colGroup">
                  <div class="col col4">
                    <label>
                        Tarih</label>
                    <ew:CalendarPopup ID="cpStartDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">>" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                    <ew:CalendarPopup ID="cpEndDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<<" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
            <div class="col">                  
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="searchbutton">Ara</asp:LinkButton>
              </div>
        
    </div>
    </div>

    <div id="report_button">
        <asp:Label ID="lblScriptOrderByDate" runat="server" />
        <asp:Label ID="lblScriptOrderByStatus" runat="server" />
 
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnYear" runat="server" Text="Yıl" CssClass="lightbox btnDefault" />
    </div>
    <div class="clear"></div>
    <div id='lineMessageByDate' class="user"></div>
    <div id='tableMessageByDate' class="daytable"></div>
    <div id="report_content">
        <div id='pieMessageByCount'></div>        
        <div id='tableMessageByCount'></div>        
           </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>


						</div>


					</div>
				</div>
			</div>
		</div>
        <div class="dataForm">
        	<div class="row">
            	<div class="col1-1">
                	<asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
                    <div class="dataForm">
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "SelectAnnouncements")%>:</label>
                                <asp:DropDownList ID="ddlproblem" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "MessagesSubject")%> <asp:RequiredFieldValidator ID="rvfkonu" runat="server" ControlToValidate="txtmessageheader" ErrorMessage="*" ValidationGroup="btnclck"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtmessageheader" runat="server" MaxLength="40" ValidationGroup="btnclck"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                                <label><%=GetGlobalResourceObject("admin", "MessageContent")%> <asp:RequiredFieldValidator ID="rvficerik" runat="server" ControlToValidate="txtmessage" ErrorMessage="*" ValidationGroup="btnclck"></asp:RequiredFieldValidator></label>
                                <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" ValidationGroup="btnclck"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="colOne">
                            	<div class="buttonGroup">
                                    <asp:Button ID="btn" runat="server" Text="<%$ Resources:admin,Send %>" CssClass="btnDefault" ValidationGroup="btnclck" />
                                    <asp:HyperLink ID="hypaddproblem" Text="<%$ Resources:admin,AddNewEdit %>" runat="Server" CssClass="btnDefault fancyContent"></asp:HyperLink>
                                    <asp:HyperLink ID="hypSentMessage" runat="Server" Text="<%$ Resources:admin,SentMessages %>" CssClass="btnDefault fancyContent"></asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col1-3">
                	<div class="dataTable">
						<asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="50" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title">
							<PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
							<Columns>
								<asp:BoundColumn Visible="false" DataField="UserId" SortExpression="UserId" HeaderText="IND"></asp:BoundColumn>
								<asp:BoundColumn DataField="CompanyCode" SortExpression="CompanyCode" HeaderText="<%$ Resources:admin,CompanyCode %>"></asp:BoundColumn>
								<asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
								<asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
								<asp:BoundColumn DataField="email" HeaderText="<%$ Resources:admin,Email %>" SortExpression="email"></asp:BoundColumn>
								<asp:BoundColumn DataField="UCODE1" Visible="false" SortExpression="UCODE1" HeaderText="<%$ Resources:admin,Code1 %>"></asp:BoundColumn>
								<asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
								<asp:BoundColumn DataField="LastLogin" SortExpression="LastLogin" HeaderText="<%$ Resources:admin,LastLogin %>"></asp:BoundColumn>
							</Columns>
						</asp:DataGrid>
					</div>
                </div>
            </div>
        </div>
	</ContentTemplate>
	</asp:UpdatePanel>
</div>