<%@ Control Language="vb" AutoEventWireup="false" Codebehind="FaaliyetRaporu.ascx.vb" Inherits="ASPNetPortal.FaaliyetRaporu" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>

<BR>
<asp:label id="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:label>
<asp:dropdownlist id="ddlFirmalar" runat="server" Width="204px" AutoPostBack="True" CssClass="Global_Normal_ComboBox"></asp:dropdownlist><BR>
<BR>
<TABLE id="filter" style="WIDTH: 400px; HEIGHT: 4px" cellSpacing="0" cellPadding="0" width="400"
	border="0" runat="server">
	<TR>
		<TD>
			<asp:label id="Label3" runat="server" CssClass="Global_Normal_Label">Dönem :</asp:label>
			<asp:dropdownlist id="ddlDonem" runat="server" AutoPostBack="True" Width="160px" CssClass="Global_Normal_ComboBox"></asp:dropdownlist></TD>
		<TD></TD>
		<TD></TD>
	</TR>
	<TR>
		<TD>
			<asp:Label id="Label4" runat="server" CssClass="Global_Normal_Label">Baþlangýç Tarihi:</asp:Label>
			<ew:CalendarPopup id="Tarih1" runat="server" AutoPostBack="True" Width="80px" Height="21px" GoToTodayText="Bu Gün:" >
				<TextboxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextboxLabelStyle> <WeekdayStyle CssClass="Global_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
				<MonthHeaderStyle CssClass="Global_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
				<OffMonthStyle CssClass="Global_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
				<ButtonStyle CssClass="Global_DateTime_Picker_ButtonStyle"></ButtonStyle>
				<GoToTodayStyle CssClass="Global_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
				<TodayDayStyle CssClass="Global_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
				<DayHeaderStyle CssClass="Global_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
				<WeekendStyle CssClass="Global_DateTime_Picker_WeekendStyle"></WeekendStyle>
				<SelectedDateStyle CssClass="Global_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
				<ClearDateStyle CssClass="Global_DateTime_Picker_ClearDateStyle"></ClearDateStyle></ew:CalendarPopup></TD>
		<TD>
			<asp:Label id="Label5" runat="server" CssClass="Global_Normal_Label">Bitiþ Tarihi:</asp:Label>
			<ew:CalendarPopup id="Tarih2" runat="server" AutoPostBack="True" Width="80px" GoToTodayText="Bu Gün:" >
				<TextboxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextboxLabelStyle> <WeekdayStyle CssClass="Global_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
				<MonthHeaderStyle CssClass="Global_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
				<OffMonthStyle CssClass="Global_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
				<ButtonStyle CssClass="Global_DateTime_Picker_ButtonStyle"></ButtonStyle>
				<GoToTodayStyle CssClass="Global_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
				<TodayDayStyle CssClass="Global_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
				<DayHeaderStyle CssClass="Global_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
				<WeekendStyle CssClass="Global_DateTime_Picker_WeekendStyle"></WeekendStyle>
				<SelectedDateStyle CssClass="Global_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
				<ClearDateStyle CssClass="Global_DateTime_Picker_ClearDateStyle"></ClearDateStyle></ew:CalendarPopup></TD>
		<TD></TD>
	</TR>
</TABLE>
<BR>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:HyperLink id="showReport" runat="server" Visible="False" Target="_blank" CssClass="Global_Normal_Link">Rapor Göster</asp:HyperLink>
