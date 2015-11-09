    <%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.CPaymentList" CodeBehind="CPaymentList.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pagePaymentList">    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        	<asp:Label ID="lblSort" runat="server" Visible="False">PaymentId desc</asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
        
            <div class="buttonGroup">
            	<asp:HyperLink ID="HyperLink1" runat="server" CssClass="btnDefault" NavigateUrl="/store/payment.aspx" Target="_blank"><i class="fa fa-credit-card"></i> <%=GetGlobalResourceObject("admin", "PaymentPageClick")%></asp:HyperLink>
            </div>
            
            <div class="dataFilter boxToggle">
				<div class="toggleTitle toggleMini">
					<div class="titleTab">
						<ul class="tabMenu">
							<li><a href="#"><%=GetGlobalResourceObject("admin", "Filter")%></a></li>
						</ul>
					</div>
					<div class="titleToggle"></div>
				</div>
				<div class="toggleContent">
					<div class="tabContent">
						<div class="tab">
							<div class="colGroup">
								<div class="col">
									<label><%=GetGlobalResourceObject("admin", "PaymentStatus")%></label>
									<asp:DropDownList ID="ddlIsPayed" runat="server">
										<asp:ListItem Value="-1">--Tümü--</asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Successful %>" Value="1"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Failed %>" Value="0"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label><%=GetGlobalResourceObject("admin", "PaymentNumber")%></label>
									<ew:NumericBox ID="NumericBox1" runat="server" PositiveNumber="True" DecimalSign="," GroupingSeparator=" "></ew:NumericBox>
								</div>
								<div class="col col2">
									<label><%=GetGlobalResourceObject("admin", "UserName")%></label>
									<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
									<asp:DropDownList ID="ddlfilter" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col">
									<label><%=GetGlobalResourceObject("admin", "PaymentMethod")%></label>
									<asp:DropDownList ID="ddlPaymentType" runat="server"> </asp:DropDownList>
								</div>
								<div class="col col4">
									<label><%=GetGlobalResourceObject("admin", "PaymentDate")%> ></label>
									<ew:CalendarPopup ID="Tarih1" runat="server" Text=">" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" AllowArbitraryText="False" DisableTextBoxEntry="False"> </ew:CalendarPopup>
									<ew:CalendarPopup ID="tarih11" runat="server" Text="<" Nullable="True" ShowGoToToday="True" ClearDateText="Sil" GoToTodayText="Bu Gün:" DisableTextBoxEntry="False"> </ew:CalendarPopup>
								</div>
								<div class="col">
									<label>&nbsp;</label>
									<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
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
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text=">" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqStartDate" ControlToValidate="cpStartDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
                    <ew:CalendarPopup ID="cpEndDate" runat="server" Width="60px" GoToTodayText="Bu Gün:"
                        ClearDateText="Sil" ShowGoToToday="True" Nullable="True" Text="<" DisableTextBoxEntry="False">
                    </ew:CalendarPopup>
                    <asp:RequiredFieldValidator runat="server" ID="rqEndDate" ControlToValidate="cpEndDate" Display="Dynamic" ErrorMessage="Tarih Seçiniz"></asp:RequiredFieldValidator>
            <div class="col">                  
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="searchbutton"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
              </div>
        
    </div>
    </div>

    <div id="report_button">
        <asp:Label ID="lblScriptSaleByDate" runat="server" />
        <asp:Label ID="lblScriptOrderByDate" runat="server" />
        <asp:Label ID="lblScriptOrderByStatus" runat="server" />
        <asp:Label ID="lblScriptOrderByPayType" runat="server" />
        <asp:Label ID="lblScriptOrderByBank" runat="server" />
        <asp:Label ID="lblScriptOrderByCargo" runat="server" />
        <asp:Label ID="lblScriptOrderByCity" runat="server" />
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
    </div>
          <div id='lineSaleByDate' class="user"></div>
    <div id='tableSaleByDate' class="daytable"></div>
    <div class="clear"></div>
    <div id='lineOrderByDate' class="user"></div>
    <div id='tableOrderByDate' class="daytable"></div>
    <div id="report_content">
        <div id='pieOrderByStatus'></div>
        <div id='pieOrderByPayType'></div>
        <div id='tableOrderByStatus'></div>
        <div id='tableOrderByPayType'></div>
        <div class="clear"></div>
        <div id='pieOrderByBank'></div>  
        <div id='tableOrderByBank'></div> 
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>


						</div>

						</div>
					</div>
				</div>
			</div>
            
            <div class="dataTable">
                <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" AllowPaging="True" PageSize="20" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Left" ShowFooter="True">
                    <Columns>
                        <asp:BoundColumn DataField="PaymentId" Visible="false" SortExpression="PaymentId" HeaderText="ID"></asp:BoundColumn>
                        <asp:TemplateColumn SortExpression="PaymentId" HeaderText="ID">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink3" runat="Server" CssClass="btnLink fancyContent"  NavigateUrl='<%# "/admin/ecommerce/orders/EditPayment.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PaymentId") & "&MID=" & 0 & ""","""",""width=1100,height=820,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><%#Eval("PaymentId")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateColumn>
                        <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,UserName %>"></asp:BoundColumn>
                        <asp:BoundColumn DataField="PaymentDate" SortExpression="PaymentDate" HeaderText="<%$ Resources:admin,PaymentDate %>" DataFormatString="{0:d}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentStatus %>" SortExpression="IsPayed">
                            <ItemTemplate>
                                <asp:Label ID="Label6" CssClass='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"Status Status-3","Status Status13") %>' runat="server" Text='<%# iif (DataBinder.Eval(Container, "DataItem.IsPayed"),"Baþarýlý","Baþarýsýz") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,PaymentType %>">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.PaymentType") & "-" & DataBinder.Eval(Container, "DataItem.BankName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn Visible="False" DataField="IsPayed" SortExpression="IsPayed" HeaderText="&#214;dendi"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ToplamTutar" SortExpression="ToplamTutar" HeaderText="<%$ Resources:admin,TotalAmount %>" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="ToplamGider" SortExpression="ToplamGider" HeaderText="<%$ Resources:admin,TotalExpense %>" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:BoundColumn DataField="BankaToplamTutar" SortExpression="BankaToplamTutar" HeaderText="<%$ Resources:admin,TotalAmountPaid %>" DataFormatString="{0:0.00}"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Integration %>">
                            <ItemTemplate>
                                <asp:Label ID="lblent" Visible='<%# DataBinder.Eval(Container.DataItem,"Integreted") %>' runat="server" Text="Entegre Et">Entegre Edildi</asp:Label>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" Visible="false">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="Server" CssClass="btnDefault fancyContent" NavigateUrl='<%# "/admin/ecommerce/orders/EditPayment.aspx?IND=" & DataBinder.Eval(Container.DataItem,"PaymentId") & "&MID=" & 0 & ""","""",""width=1100,height=820,scrollbars=1,toolbar=0,status=1,resizable=1"")" %> '><i class="fa fa-pencil"></i> <%= GetGlobalResourceObject("admin","Detail") %></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="<%$ Resources:admin,Delete %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandName="Delete" CssClass="btnIcon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
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