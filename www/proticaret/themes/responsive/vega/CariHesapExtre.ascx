<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="CariHesapExtre.ascx.vb" Inherits="ASPNetPortal.CariHesapExtre" TargetSchema="http://schemas.microsoft.com/intellisense/ie3-2nav3-0" %>

<br>
<asp:Label ID="lblMessage" runat="server" CssClass="Global_Normal_Label"></asp:Label>

<table id="filter" style="width: 400px; height: 4px" cellspacing="0" cellpadding="0" width="400"
    border="0" runat="server">

    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" CssClass="Global_Normal_Label">Baþlangýç Tarihi:</asp:Label>
            <ew:CalendarPopup ID="Tarih1" runat="server" AutoPostBack="True" Width="100px" Height="21px" CssClass="Global_Normal_TextBox">
                <TextBoxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextBoxLabelStyle>
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
            </ew:CalendarPopup>
        </td>
        <td>
            <asp:Label ID="Label5" runat="server" CssClass="Global_Normal_Label">Bitiþ Tarihi:</asp:Label>
            <ew:CalendarPopup ID="Tarih2" runat="server" AutoPostBack="True" Width="100px" CssClass="Global_Normal_TextBox">
                <TextBoxLabelStyle CssClass="Global_DateTime_Picker_TextStyle"></TextBoxLabelStyle>
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
            </ew:CalendarPopup>
        </td>
        <td></td>
    </tr>
</table>

<asp:HyperLink ID="hypozettl" runat="server" Text="özet TL" CssClass="button" Target="_blank" />
<asp:HyperLink ID="hypozetdoviz" runat="server" Text="özet döviz" CssClass="button" Target="_blank" />
<br> 
<asp:HyperLink ID="hypdetaytl" runat="server" Text="detaylý tl" CssClass="button" Target="_blank" />
<asp:HyperLink ID="hypdetaydoviz" runat="server" Text="detaylý doviz" CssClass="button" Target="_blank" />