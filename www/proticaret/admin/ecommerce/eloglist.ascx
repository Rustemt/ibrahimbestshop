<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="eloglist.ascx.vb" Inherits="ASPNetPortal.eloglist1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div class="pageLogList">
    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="lblSort" runat="server" Visible="False">EventId desc</asp:Label>
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
						<div class="col">
							<label><%=GetGlobalResourceObject("admin", "Source")%></label>
							<asp:DropDownList ID="ddlsource" runat="server" TabIndex="9">
								<asp:ListItem Text="<%$ Resources:admin,All %>" Selected="True" Value="*"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,System %>" Value="Sistem"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Integration %>" Value="Entegrasyon"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,User %>" Value="Kullanıcı"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col2">
							<label><%=GetGlobalResourceObject("admin", "ErrorMessages")%></label>
							<asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
							<asp:DropDownList ID="ddlmsg" runat="server">
								<asp:ListItem Text="<%$ Resources:admin,Contains %>" Value="like '%[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Starts %>" Value="like '[]%'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Ends %>" Value="like '%[]'"></asp:ListItem>
								<asp:ListItem Text="<%$ Resources:admin,Equalss %>" Value="='[]'"></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="col col4">
							<label><%=GetGlobalResourceObject("admin", "LogDate")%></label>
							<ew:CalendarPopup ID="Tarih1" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
							<ew:CalendarPopup ID="Tarih2" runat="server" GoToTodayText="Bu Gün:" ClearDateText="Sil" ShowGoToToday="True" Nullable="True" CalendarLocation="Bottom" DisableTextBoxEntry="False"></ew:CalendarPopup>
						</div>
						<div class="col">
							<label>&nbsp;</label>
							<asp:LinkButton ID="btnSearch" runat="server" CssClass="btnDefault"><i class="fa fa-search"></i> <%= GetGlobalResourceObject("admin","Search") %></asp:LinkButton>
						</div>
					</div>
				</div>
				<div class="tab">Raporlar</div>
			</div>
		</div>
	</div>
    
    <div class="dataTable">
    <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center">
        <Columns>
            <asp:BoundColumn DataField="EventId" HeaderText="IND"></asp:BoundColumn>
            <asp:BoundColumn DataField="Source" SortExpression="Source" HeaderText="<%$ Resources:admin,Source %>"></asp:BoundColumn>
            <asp:BoundColumn DataField="LogDateTime" SortExpression="LogDateTime" HeaderText="<%$ Resources:admin,CreateDate %>"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Message %>">
                <ItemTemplate><%# DataBinder.Eval(Container.DataItem,"Message") %></ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="<%$ Resources:admin,Detail %>" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="Server" data-width="750" data-height="500" CssClass="btnIcon fancyContent" NavigateUrl='<%# "/admin/cms/logdetails.aspx?IND=" & DataBinder.Eval(Container.DataItem, "EventId")%> '><i class="fa fa-pencil"></i></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" CssClass="dataPager" PageButtonCount="15" />
    </asp:DataGrid>
    </div>
    
    <div class="buttonGroup">
        <asp:Button ID="btnDel" runat="server" CssClass="btnDefault" OnClick="btnDel_Click" Text="<%$ Resources:admin,LogClear %>" />
    </div>
    
    <div class="dataCount">
        <ul>
            <li><%=GetGlobalResourceObject("admin", "TotalRecording")%> :<asp:Label ID="lblTotalRecord" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "TotalPage")%> :<asp:Label ID="lblPageCount" runat="server"></asp:Label></li>
            <li><%=GetGlobalResourceObject("admin", "CurrentPage")%> :<asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></li>
        </ul>
    </div>

</div>