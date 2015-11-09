<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="AdvancedSearchFilter.ascx.vb" Inherits="ASPNetPortal.AdvancedSearchFilter" EnableViewState="True" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="AdvancedSearchFilter" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <script type="text/javascript">
            function SearchFilter() {
                var txt = document.getElementById('<%=txtSearch.ClientID%>');
                var Cat = document.getElementById('<%=ddlCategories.ClientID%>');
                var Mark = document.getElementById('<%=ddlMarks.ClientID%>');
                var P1 = document.getElementById('<%=txtPrice1.ClientID%>');
                var P2 = document.getElementById('<%=txtPrice2.ClientID%>');
                var url = '../store/AdvancedSearch.aspx?';
                var btn = document.getElementById('<%=lnkWord.ClientID%>');
                var cName = document.getElementById('<%=chkName.ClientID%>');
                var cDetails = document.getElementById('<%=chkDetails.ClientID%>');
                var barkod = document.getElementById('<%=txtbarkod.ClientID()%>');
                var code1 = document.getElementById('<%=ddlspecial1.ClientID()%>');
                var code2 = document.getElementById('<%=ddlspecial2.ClientID()%>');
                var code3 = document.getElementById('<%=ddlspecial3.ClientID()%>');
                var code4 = document.getElementById('<%=ddlspecial4.ClientID()%>');
                var code5 = document.getElementById('<%=ddlspecial5.ClientID()%>');
                var code6 = document.getElementById('<%=ddlspecial6.ClientID()%>');
                var code7 = document.getElementById('<%=ddlspecial7.ClientID()%>');
                var code8 = document.getElementById('<%=ddlspecial8.ClientID()%>');
                var code9 = document.getElementById('<%=ddlspecial9.ClientID()%>');
                var code10 = document.getElementById('<%=ddlspecial10.ClientID()%>');
                var code11 = document.getElementById('<%=ddlspecial11.ClientID()%>');
                var code12 = document.getElementById('<%=ddlspecial12.ClientID()%>');
                var code13 = document.getElementById('<%=ddlspecial13.ClientID()%>');
                var code14 = document.getElementById('<%=txtspecial14.ClientID()%>');
                var code15 = document.getElementById('<%=txtspecial15.ClientID()%>');
                var author = document.getElementById('<%=ddlYazar.ClientID()%>');
                var publisher = document.getElementById('<%=ddlYayinEvi.ClientID()%>');


                url = url + 'value=' + txt.value

                if (Cat != null) {
                    var CatId = Cat.options[Cat.selectedIndex].value;
                    url = url + '&CatId=' + CatId
                }
                if (Mark != null) {
                    var MarkId = Mark.options[Mark.selectedIndex].value;
                    url = url + '&MarkId=' + MarkId
                }
                if (P1 != null) {
                    url = url + '&P1=' + P1.value
                }
                if (P2 != null) {
                    url = url + '&P2=' + P2.value
                }
                if (cDetails.checked) {
                    url = url + '&Details=True'
                }
                if (cName.checked) {
                    url = url + '&Name=True'
                }
                if (barkod != null) {
                    url = url + '&Barcode=' + barkod.value
                }
                if (code1 != null) {
                    url = url + '&code1=' + code1.options[code1.selectedIndex].text
                }
                if (code2 != null) {
                    url = url + '&code2=' + code2.options[code2.selectedIndex].text
                }
                if (code3 != null) {
                    url = url + '&code3=' + code3.options[code3.selectedIndex].text
                }
                if (code4 != null) {
                    url = url + '&code4=' + code4.options[code4.selectedIndex].text
                }
                if (code5 != null) {
                    url = url + '&code5=' + code5.options[code5.selectedIndex].text
                }
                if (code6 != null) {
                    url = url + '&code6=' + code6.options[code6.selectedIndex].text
                }
                if (code7 != null) {
                    url = url + '&code7=' + code7.options[code7.selectedIndex].text
                }
                if (code8 != null) {
                    url = url + '&code8=' + code8.options[code8.selectedIndex].text
                }
                if (code9 != null) {
                    url = url + '&code9=' + code9.options[code9.selectedIndex].text
                }
                if (code10 != null) {
                    url = url + '&code10=' + code10.options[code10.selectedIndex].text
                }
                if (code11 != null) {
                    url = url + '&code11=' + code11.options[code11.selectedIndex].text
                }
                if (code12 != null) {
                    url = url + '&code12=' + code12.options[code12.selectedIndex].text
                }
                if (code13 != null) {
                    url = url + '&code13=' + code13.options[code13.selectedIndex].text
                }
                if (code14 != null) {
                    url = url + '&code14=' + code14.value
                }
                if (code15 != null) {
                    url = url + '&code15=' + code15.value
                }
                if (author != null) {
                    url = url + '&author=' + author.options[author.selectedIndex].text
                }
                if (publisher != null) {
                    url = url + '&publisher=' + publisher.options[publisher.selectedIndex].text
                }
                else {
                    url = url + '&Name=False'
                }
                document.location.href = url;
            }

        </script>

        <div>
            <table cellspacing="0" cellpadding="3" width="100%" border="0">
                <tr>
                    <td>
                        <table width="355" cellpadding="5" cellspacing="5">
                            <tr>
                                <td align="right" width="10%"><%=GetGlobalResourceObject("lang", "Category")%>:</td>
                                <td width="60%">
                                    <asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td align="right"><%=GetGlobalResourceObject("lang", "Mark")%>:</td>
                                <td><asp:DropDownList ID="ddlMarks" runat="server"></asp:DropDownList></td>
                            </tr>
                            <tr class="fiyatAraligi">
                              <td align="right"><%=GetGlobalResourceObject("lang", "PriceRange")%>:</td>
                                <td><ew:NumericBox ID="txtPrice1" runat="server" DecimalSign="," DecimalPlaces="2"></ew:NumericBox>
                                	<asp:Label ID="Label4" runat="server"></asp:Label><asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("lang", "AndLabel")%></asp:Label>
                                	<ew:NumericBox ID="txtPrice2" runat="server" DecimalSign="," DecimalPlaces="2"></ew:NumericBox><asp:Label ID="Label5" runat="server"></asp:Label><asp:Label ID="Label7" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblsearchkey" Text="Aranacak Kelime:"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtSearch" runat="server" MaxLength="32"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" ID="lblbarkod" Text="BarkodNo:"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtbarkod" runat="server" MaxLength="32"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="ÖzelKod1:"></asp:Label></td>
                                <td>
                                    <asp:DropDownList ID="ddlspecial1" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label2" runat="server" Text="ÖzelKod2:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial2" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                	</td>
                    <td>
                    	<table width="300" cellpadding="5" cellspacing="5">
                            <tr>
                                <td>
                                	<asp:Label ID="Label3" runat="server" Text="ÖzelKod3:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial3" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label8" runat="server" Text="ÖzelKod4:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial4" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label9" runat="server" Text="ÖzelKod5:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial5" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label10" runat="server" Text="ÖzelKod6:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial6" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label11" runat="server" Text="ÖzelKod7:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial7" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                           		<td>
                            		<asp:Label ID="Label12" runat="server" Text="ÖzelKod8:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial8" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                	<asp:Label ID="Label13" runat="server" Text="ÖzelKod9:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial9" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label14" runat="server" Text="ÖzelKod10:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial10" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                    	<table width="300" cellpadding="5" cellspacing="5">
                            <tr>
                                <td>
                                	<asp:Label ID="Label15" runat="server" Text="ÖzelKod11:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlspecial11" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 26px">
                                	<asp:Label ID="Label16" runat="server" Text="ÖzelKod12:"></asp:Label></td>
                                <td style="height: 26px">
                                	<asp:DropDownList ID="ddlspecial12" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label17" runat="server" Text="ÖzelKod13:"></asp:Label></td>
                                <td>
                            		<asp:DropDownList ID="ddlspecial13" runat="server"></asp:DropDownList>
                            	</td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="Label18" runat="server" Text="ÖzelKod14:"></asp:Label></td>
                                <td>
                                	<asp:TextBox ID="txtspecial14" runat="server" MaxLength="32"></asp:TextBox></td>
                                </tr>
                            <tr>
                                <td>
                               		<asp:Label ID="Label19" runat="server" Text="ÖzelKod15:"></asp:Label></td>
                                <td>
                                	<asp:TextBox ID="txtspecial15" runat="server" MaxLength="32"></asp:TextBox></td>
                                </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="lblauthor" runat="server" Text="Yazar:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlYazar" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                	<asp:Label ID="lblpublisher" runat="server" Text="Yayın Evi:"></asp:Label></td>
                                <td>
                                	<asp:DropDownList ID="ddlYayinEvi" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr style="display: none; visibility: hidden;">
                                <td colspan="2">
                                    <asp:CheckBox ID="chkName" runat="server"></asp:CheckBox>
                                    <%=GetGlobalResourceObject("lang", "SearchInNames")%>
                                    <asp:CheckBox ID="chkDetails" runat="server"></asp:CheckBox>
                                    <%=GetGlobalResourceObject("lang", "SearchInDescriptions")%>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                	<asp:HyperLink ID="lnkWord" CssClass="searchbutton" runat="server" NavigateUrl="javascript:SearchFilter();"><%=GetGlobalResourceObject("lang", "Search")%></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
            	 </tr>  
   
                
            </table>
        </div>
    </div>
</div>