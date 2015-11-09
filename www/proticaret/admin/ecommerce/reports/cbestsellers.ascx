<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Control Language="vb" AutoEventWireup="false" Inherits="CBestSellers" enableViewState="True" Codebehind="CBestSellers.ascx.vb" %>
<div class="pageCBestSeller">

    <table id="Table4" cellspacing="0" cellpadding="0" width="100%" bgcolor="dce4f9" height="479"
        border="0">
        <tr>
            <td class="Admin_Modul_Banner"><asp:label id="Label1" runat="server" CssClass="Admin_Normal_Label">En Çok Satanlar</asp:label></TD>
        </TR>
        <tr>
                <td align="center" valign="top" >
                <table id="Table3" cellspacing="0" cellpadding="0" border="0" runat="server" align="center" >
                    <tr >
                        <td valign="bottom" align="center" width="81">
                            <br />
                            <asp:label id="Label5" runat="server" CssClass="Admin_Modul_Label2">Kategori :</asp:label><asp:dropdownlist id="ddlCategories" runat="server" Width="180px" CssClass="Admin_Normal_ComboBox"></asp:dropdownlist></TD>
                        <td valign="bottom" align="center">
                            <br />
                            <asp:label id="Label10" CssClass="Admin_Modul_Label2" runat="server">Sipariþ Tar >:</asp:label><br/>
                            <ew:calendarpopup id="Tarih1" runat="server" Width="68px" Nullable="True" ShowGoToToday="True"
                                ClearDateText="Sil" GoToTodayText="Bu Gün:">
                                <TextboxLabelStyle CssClass="Admin_DateTime_Picker_TextStyle"></TextboxLabelStyle>
                                <WeekdayStyle CssClass="Admin_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
                                <MonthHeaderStyle CssClass="Admin_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
                                <OffMonthStyle CssClass="Admin_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
                                <ButtonStyle CssClass="Admin_DateTime_Picker_ButtonStyle"></ButtonStyle>
                                <GoToTodayStyle CssClass="Admin_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
                                <TodayDayStyle CssClass="Admin_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
                                <DayHeaderStyle CssClass="Admin_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
                                <WeekendStyle CssClass="Admin_DateTime_Picker_WeekendStyle"></WeekendStyle>
                                <SelectedDateStyle CssClass="Admin_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
                                <ClearDateStyle CssClass="Admin_DateTime_Picker_ClearDateStyle"></ClearDateStyle>
                                
                            </ew:calendarpopup>
                        </TD>
                        <td valign="bottom" align="center">
                            <br />
                            <asp:label id="Label11" CssClass="Admin_Modul_Label2" runat="server">Sipariþ Tar <:</asp:label><br/>
                            <ew:calendarpopup id="tarih11" runat="server" Width="68px" Nullable="True" ShowGoToToday="True"
                                ClearDateText="Sil" GoToTodayText="Bu Gün:">
                                <TextboxLabelStyle CssClass="Admin_DateTime_Picker_TextStyle"></TextboxLabelStyle>
                                <WeekdayStyle CssClass="Admin_DateTime_Picker_WeekdayStyle"></WeekdayStyle>
                                <MonthHeaderStyle CssClass="Admin_DateTime_Picker_MonthHeaderStyle"></MonthHeaderStyle>
                                <OffMonthStyle CssClass="Admin_DateTime_Picker_OffMonthStyle"></OffMonthStyle>
                                <ButtonStyle CssClass="Admin_DateTime_Picker_ButtonStyle"></ButtonStyle>
                                <GoToTodayStyle CssClass="Admin_DateTime_Picker_GoToTodayStyle"></GoToTodayStyle>
                                <TodayDayStyle CssClass="Admin_DateTime_Picker_TodayDayStyle"></TodayDayStyle>
                                <DayHeaderStyle CssClass="Admin_DateTime_Picker_DayHeaderStyle"></DayHeaderStyle>
                                <WeekendStyle CssClass="Admin_DateTime_Picker_WeekendStyle"></WeekendStyle>
                                <SelectedDateStyle CssClass="Admin_DateTime_Picker_SelectedDateStyle"></SelectedDateStyle>
                                <ClearDateStyle CssClass="Admin_DateTime_Picker_ClearDateStyle"></ClearDateStyle>
                                
                            </ew:calendarpopup></TD>
                        <td valign="bottom" align="center"><br/>
                        </TD>
                        <td valign="bottom" align="center"><br/>
                        </TD>
                        <td valign="bottom" align="center"><asp:button id="btnSearch" runat="server" Text="Listele" CssClass="Admin_Normal_Buton"></asp:button></TD>
                    </TR>
                </table>
            </TD>
        </TR>
        <tr align="center" >
                    <td>
                <asp:datagrid id="MyList" runat="server" Width="949px" cellpadding="4" AutoGenerateColumns="False"
                    BorderWidth="0px">
                    <FooterStyle CssClass="Admin_TabloBaslik"></FooterStyle>
                    <AlternatingItemStyle CssClass="Admin_TabloAlternatifSatir"></AlternatingItemStyle>
                    <ItemStyle CssClass="Admin_TabloSatir"></ItemStyle>
                    <HeaderStyle CssClass="Admin_TabloBaslik"></HeaderStyle>
                    <Columns>
                        <asp:TemplateColumn HeaderText="Miktar">
                            <HeaderStyle Wrap="False" HorizontalAlign="Left"></HeaderStyle>
                            <ItemStyle Wrap="False" HorizontalAlign="Left"></ItemStyle>
                            <ItemTemplate>
                                <asp:HyperLink id="Hyperlink1" runat="server" CssClass="Admin_Normal_Link" text='<%# container.dataitem("Total")  %>' NavigateUrl='<%# string.format("../store/product.aspx?ProductId={0}",container.dataitem("ProductId")) %>'>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="&#220;r&#252;n Kodu">
                            <HeaderStyle Wrap="False"></HeaderStyle>
                            <ItemTemplate>
                                <asp:HyperLink id="Hyperlink2" runat="server" CssClass="Admin_Normal_Link" text='<%# container.dataitem("ProductCode")  %>' NavigateUrl='<%# string.format("../store/product.aspx?ProductId={0}",container.dataitem("ProductId")) %>'>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="&#220;r&#252;n Adý">
                            <HeaderStyle Wrap="False"></HeaderStyle>
                            <ItemTemplate>
                                <asp:HyperLink id="Hyperlink7" runat="server" CssClass="Admin_Normal_Link" text='<%# container.dataitem("ProductName")  %>' NavigateUrl='<%# string.format("../store/product.aspx?ProductId={0}",container.dataitem("ProductId")) %>'>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle CssClass="dataPager"></PagerStyle>
                </asp:datagrid></TD>
        </TR>
        
    </table>
    <asp:label id="msg" CssClass="Admin_HataMesaji" runat="server"></asp:label>
</div>