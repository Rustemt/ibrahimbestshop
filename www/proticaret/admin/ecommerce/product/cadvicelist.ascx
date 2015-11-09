<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.cadvicelist" Codebehind="cadvicelist.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAdviceList">    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        	<asp:Label ID="lblMsg" runat="server" Visible="false"  CssClass="alert alert-info"></asp:Label>
            <asp:Label ID="msg" runat="server" Visible="False" CssClass="alert alert-info"></asp:Label> 
            <asp:Label ID="lblSort" runat="server" Visible="False" >AdviceId</asp:Label>
            <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label> 
            
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
								<div class="col col2">
									<label><%=GetGlobalResourceObject("admin", "UserName")%></label>
									<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
									<asp:DropDownList ID="ddlUserFilter" runat="server">
										<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Ends %>"  Value="like '%[]'"></asp:ListItem>
										<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col col4">
									<label><%=GetGlobalResourceObject("admin", "CreateDate")%></label>
									<ew:CalendarPopup ID="txtCreatedDate1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text=">" DisableTextboxEntry="False"> </ew:CalendarPopup>
									<ew:CalendarPopup ID="txtCreatedDate2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" Text="<" DisableTextboxEntry="False"> </ew:CalendarPopup>
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
        <asp:Label ID="lblScriptAdviceByDate" runat="server" />        
        <asp:Button ID="btnDay" runat="server" Text="Gün" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnWeek" runat="server" Text="Hafta" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnMonth" runat="server" Text="Ay" CssClass="lightbox btnDefault" />
        <asp:Button ID="btnYear" runat="server" Text="Yýl" CssClass="lightbox btnDefault" />
    </div>
          <div id='lineAdviceByDate' class="user"></div>
          <div id='tableAdviceByDate' class="daytable"></div>   
    <div class="clear"></div>
</div>
<div class="clear"></div>


						</div>

						</div>
					</div>
				</div>
			</div>
            
            <div class="dataTable">
            <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
                <Columns>
                    <asp:BoundColumn DataField="AdviceId" SortExpression="AdviceId" Visible="false" HeaderText="IND"></asp:BoundColumn>
                    <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="<%$ Resources:admin,FullName %>"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Emails" HeaderText="<%$ Resources:admin,Email %>" SortExpression="Emails"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,ProductDetails %>">                            
                        <ItemTemplate>
                            <asp:HyperLink ToolTip="Ürün Detayý" CssClass="btnIcon" ID="HyperLink1" runat="Server" Target="_blank" NavigateUrl='<%# DataBinder.Eval(Container.DataItem,"Url") %>'>
                            <i class="fa fa-pencil"></i></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="Note" HeaderText="<%$ Resources:admin,Message %>"></asp:BoundColumn>
                    <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="<%$ Resources:admin,Delete %>">
                        <ItemTemplate>
                            <asp:CheckBox ToolTip="Silmek Ýçin Seçiniz." ID="chkdelete" runat="server"></asp:CheckBox>
                        </ItemTemplate>
                        <FooterTemplate>
                            <input id="chkAllItems" type="checkbox" onclick="CheckAllDataGridCheckBoxes('chkdelete',this.checked);" />
                            <%=GetGlobalResourceObject("admin", "All2")%>  </FooterTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15"></PagerStyle>
            </asp:DataGrid>
            </div>
            
            <div class="buttonGroup">    
				<asp:Button ID="btnExport" runat="server" CssClass="btnDefault" Text="<%$ Resources:admin,ExportExcel %>"/>
				<asp:LinkButton ID="btnDel" runat="server"  CssClass="btnDefault"><i class="fa fa-trash-o"></i> <%= GetGlobalResourceObject("admin","Delete") %></asp:LinkButton>
            </div>
            
            <div class="dataCount">
				<ul>
					<li><%=GetGlobalResourceObject("admin", "TotalRecording")%>  :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
					<li><%=GetGlobalResourceObject("admin", "TotalPage")%>  :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
					<li><%=GetGlobalResourceObject("admin", "CurrentPage")%>  :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>                           
				</ul>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>