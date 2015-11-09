<%@ Control Language="vb" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False" %>
<div id="productsearch" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <script runat="server">
            Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
                btnSearch.NavigateUrl = "javascript:LigthSearchx('" & txtSearch.ClientID & "','" & btnSearch.ClientID & "');"
                txtSearch.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {LigthSearchx('" & txtSearch.ClientID & "','" & btnSearch.ClientID & "');return false;}} else {return true}; ")
                lnkAdv.NavigateUrl = BaseUrl & "/store/AdvancedSearch.aspx"
            End Sub
        </script>
        <div>
            <label>
                <asp:TextBox ID="txtSearch" runat="server" onclick="this.value='';" onblur="this.value=!this.value?'Arama':this.value;"></asp:TextBox>
                <asp:HyperLink ID="btnSearch" CssClass="searchbutton" runat="server" NavigateUrl=""><%=GetGlobalResourceObject("lang", "Search")%></asp:HyperLink></label>
            <label>
                <asp:HyperLink ID="lnkAdv" CssClass="button" runat="server"><%=GetGlobalResourceObject("lang", "SearchAdvance")%></asp:HyperLink></label>
        </div>
    </div>
</div>
