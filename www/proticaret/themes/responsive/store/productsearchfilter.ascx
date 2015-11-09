<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.productsearchfilter" EnableViewState="True" CodeBehind="productsearchfilter.ascx.vb" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<div id="productsearchfilter" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <script type="text/javascript">
            function SearchFilter() {
                var txt = document.getElementById('<%=txtSearch.ClientID%>');
        var Cat = document.getElementById('<%=ddlCategories.ClientID%>');
        var Mark = document.getElementById('<%=ddlMarks.ClientID%>');
        var P1 = document.getElementById('<%=txtPrice1.ClientID%>');
        var P2 = document.getElementById('<%=txtPrice2.ClientID%>');
        var url = 'ProductSearch.aspx?';
        var btn = document.getElementById('<%=lnkWord.ClientID%>');
    var cName = document.getElementById('<%=chkName.ClientID%>');
        var cDetails = document.getElementById('<%=chkDetails.ClientID%>');

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
        else {
            url = url + '&Name=False'
        }
        document.location.href = url;
    }

        </script>
        <table cellspacing="0" cellpadding="3" width="100%" border="0">
            <tr>
                <td align="right" width="40%"><%=GetGlobalResourceObject("lang", "Category")%> :</td>
                <td width="60%"><asp:DropDownList ID="ddlCategories" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right"><%=GetGlobalResourceObject("lang", "Mark")%> :</td>
                <td><asp:DropDownList ID="ddlMarks" runat="server"></asp:DropDownList></td>
            </tr>
            <tr>
                <td align="right"><%=GetGlobalResourceObject("lang", "PriceRange")%> :</td>
                <td>
                    <ew:NumericBox ID="txtPrice1" runat="server" DecimalSign="," DecimalPlaces="2"></ew:NumericBox>&nbsp;
                    <asp:Label ID="Label4" runat="server"></asp:Label>&nbsp;
                    <asp:Label ID="Label6" runat="server"><%=GetGlobalResourceObject("lang", "AndLabel")%></asp:Label>&nbsp;
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <ew:NumericBox ID="txtPrice2" runat="server" DecimalSign="," DecimalPlaces="2"></ew:NumericBox>&nbsp;
                    <asp:Label ID="Label5" runat="server"></asp:Label>&nbsp;
                    <asp:Label ID="Label7" runat="server"><%=GetGlobalResourceObject("lang", "Between")%></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right"><%=GetGlobalResourceObject("lang", "SearchKeyword")%> :</td>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" MaxLength="32"></asp:TextBox></td>
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
                <td></td>
                <td align="left">
                    <asp:HyperLink ID="lnkWord" CssClass="button" runat="server" NavigateUrl="javascript:SearchFilter();"><%=GetGlobalResourceObject("lang", "Search")%></asp:HyperLink></td>
            </tr>
        </table>
    </div>
</div>
