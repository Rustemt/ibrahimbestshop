<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Mizan.ascx.vb" Inherits="ASPNetPortal.Mizan" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<BR>
<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label><asp:dropdownlist id="ddlFirmalar" runat="server" AutoPostBack="True" Width="204px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist>&nbsp;
<BR>
<TABLE id="filter" style="WIDTH: 400px; HEIGHT: 4px" cellSpacing="0" cellPadding="0" width="400"
	border="0" runat="server">
	<TR>
		<TD height="33"><asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label><asp:dropdownlist id="ddlDonem" runat="server" Width="160px" AutoPostBack="True" CssClass="Global_Normal_ComboBox"></asp:dropdownlist></TD>
		<TD height="33"><asp:label id="Label6" runat="server" CssClass="Global_Normal_Label">Rapor :</asp:label><asp:dropdownlist id="ddlType" runat="server" Width="142px" CssClass="Global_Normal_ComboBox">
				<asp:ListItem Value="&#214;zet">&#214;zet</asp:ListItem>
				<asp:ListItem Value="Detay">Detay</asp:ListItem>
			</asp:dropdownlist></TD>
		<TD height="33"></TD>
		<TD height="33"></TD>
		<TD height="33"></TD>
	</TR>
	<TR>
		<TD height="32">
			<asp:label id="Label7" runat="server" CssClass="Global_Normal_Label">Baþlangýþ Hesap Kodu:</asp:label>
			<ew:MaskedTextBox id="MaskedtxtStartNumber" runat="server" Width="40px" Mask="999" MaxLength="3" Text="100"
				CssClass="Global_Normal_TextBox"></ew:MaskedTextBox></TD>
		<TD height="32">
			<asp:label id="Label8" runat="server" CssClass="Global_Normal_Label">Bitiþ Hesap Kodu:</asp:label>
			<ew:MaskedTextBox id="MaskedtxtEndNumber" runat="server" Width="40px" Mask="999" MaxLength="3" Text="999"
				CssClass="Global_Normal_TextBox"></ew:MaskedTextBox></TD>
		<TD height="32"></TD>
		<TD height="32"></TD>
		<TD height="32"></TD>
	</TR>
	<TR>
		<TD><asp:label id="Label4" runat="server" CssClass="Global_Normal_Label">Baþlangýç Tarihi:</asp:label><ew:calendarpopup id="Tarih1" runat="server" Width="68px" DisableTextboxEntry="False" GoToTodayText="Bugün">
				<TextboxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextboxLabelStyle>
				<WeekdayStyle CssClass="Global_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
				<MonthHeaderStyle CssClass="Global_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
				<OffMonthStyle CssClass="Global_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
				<ButtonStyle CssClass="Global_DateTime_Picker_ButtonStyle"></ButtonStyle>
				<GoToTodayStyle CssClass="Global_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
				<TodayDayStyle CssClass="Global_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
				<DayHeaderStyle CssClass="Global_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
				<WeekendStyle CssClass="Global_DateTime_Picker_WeekendStyle"></WeekendStyle>
				<SelectedDateStyle CssClass="Global_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
				<ClearDateStyle CssClass="Global_DateTime_Picker_ClearDateStyle"></ClearDateStyle> 
			</ew:calendarpopup></TD>
		<TD><asp:label id="Label5" runat="server" CssClass="Global_Normal_Label">Bitiþ Tarihi:</asp:label><ew:calendarpopup id="Tarih2" runat="server" Width="68px" DisableTextboxEntry="False">
				<TextboxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextboxLabelStyle>
				<WeekdayStyle CssClass="Global_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
				<MonthHeaderStyle CssClass="Global_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
				<OffMonthStyle CssClass="Global_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
				<ButtonStyle CssClass="Global_DateTime_Picker_ButtonStyle"></ButtonStyle>
				<GoToTodayStyle CssClass="Global_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
				<TodayDayStyle CssClass="Global_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
				<DayHeaderStyle CssClass="Global_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
				<WeekendStyle CssClass="Global_DateTime_Picker_WeekendStyle"></WeekendStyle>
				<SelectedDateStyle CssClass="Global_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
				<ClearDateStyle CssClass="Global_DateTime_Picker_ClearDateStyle"></ClearDateStyle> 
			</ew:calendarpopup>&nbsp;</TD>
		<TD>
			<asp:LinkButton class="btnStyle" id="LinkButton1" runat="server" CssClass="Global_Normal_Link">Uygula</asp:LinkButton></TD>
		<TD>&nbsp;</TD>
		<TD noWrap>
			<asp:LinkButton class="btnStyle" id="LinkButton2" runat="server" CssClass="Global_Normal_Link">Excell'e Gönder</asp:LinkButton></TD>
	</TR>
</TABLE>
<BR>
<asp:datagrid id="CariList" runat="server" Width="444px" ShowFooter="True" AutoGenerateColumns="False">
	<HeaderStyle CssClass="Global_TabloBaslik"></HeaderStyle>		<PagerStyle CssClass="Global_TabloBaslik"></PagerStyle>
	<ItemStyle CssClass="Global_TabloSatir"></ItemStyle>
	<AlternatingItemStyle CssClass="Global_TabloAlternatifSatir"></AlternatingItemStyle>
	<FooterStyle CssClass="Global_TabloBaslik"></FooterStyle>
	<Columns>
		<asp:BoundColumn DataField="HESAPKODU" HeaderText="HESAP KODU">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="HESAPADI" HeaderText="HESAP ADI">
			<HeaderStyle Wrap="False"></HeaderStyle>
			<ItemStyle Wrap="False"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="CBORC" HeaderText="BORC" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="CALACAK" HeaderText="ALACAK" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:TemplateColumn HeaderText="BOR&#199; BAKÝYE">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<ItemTemplate>
				<asp:Label runat="server" Text='<%# checkbakiye(DataBinder.Eval(Container, "DataItem.BAKIYE", "{0:###,##0.00}"),True) %>'>
				</asp:Label>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:TemplateColumn HeaderText="ALACAK BAKÝYE">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<ItemTemplate>
				<asp:Label runat="server" Text='<%# checkbakiye(DataBinder.Eval(Container, "DataItem.BAKIYE", "{0:###,##0.00}"),False) %>'>
				</asp:Label>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn DataField="DOVIZBORC" HeaderText="D&#214;VÝZ BORC" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="DOVIZALACAK" HeaderText="D&#214;VÝZ ALACAK" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:TemplateColumn HeaderText="D&#214;VÝZ BOR&#199; BAKÝYE">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<ItemTemplate>
				<asp:Label runat="server" Text='<%# checkbakiye(DataBinder.Eval(Container, "DataItem.DBAKIYE", "{0:###,##0.00}"),True) %>' ID="Label1" NAME="Label1">
				</asp:Label>
			</ItemTemplate>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:TemplateColumn>
		<asp:TemplateColumn HeaderText="D&#214;VÝZ ALACAK BAKÝYE">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<ItemTemplate>
				<asp:Label runat="server" Text='<%# checkbakiye(DataBinder.Eval(Container, "DataItem.DBAKIYE", "{0:###,##0.00}"),False) %>' ID="Label2" NAME="Label2">
				</asp:Label>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn DataField="GIRENMIKTAR" HeaderText="GÝREN MÝKTAR" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="CIKANMIKTAR" HeaderText="&#199;IKAN MÝKTAR" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
		<asp:BoundColumn DataField="KALANMIKTAR" HeaderText="KALAN MÝKTAR" DataFormatString="{0:###,##0.00}">
			<HeaderStyle Wrap="False" Width="100px"></HeaderStyle>
			<ItemStyle Wrap="False" HorizontalAlign="Right"></ItemStyle>
			<FooterStyle Wrap="False"></FooterStyle>
		</asp:BoundColumn>
	</Columns>
</asp:datagrid>
