<%@ Control Language="vb" Inherits="ASPNetPortal.PortalModuleControl" EnableViewState="False" %>
<div id="kbsearch" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span>
</div>
<% end if %>
<script runat="server">
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        btnSearch.NavigateUrl = "javascript:KbSearch('" & txtSearch.ClientID & "','" & btnSearch.ClientID & "');"
        txtSearch.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {KbSearch('" & txtSearch.ClientID & "','" & btnSearch.ClientID & "');return false;}} else {return true}; ")
        
        If Request.QueryString("value") <> "" Then
            txtSearch.Text = Request.QueryString("value")
        End If
        ModuleTitle = GetGlobalResourceObject("lang", "KbSearch")
    End Sub
</script>
<div>
<label>Aranacak Kelime : <asp:TextBox id="txtSearch" runat="server"></asp:TextBox>
<asp:HyperLink id="btnSearch" onclick="this.value='';" onblur="this.value=!this.value?'Arama':this.value;"  CssClass="searchbutton" runat="server" NavigateUrl=""><%=GetGlobalResourceObject("lang", "Search")%></asp:HyperLink></label>
</div>
</div>
</div>
<script>
function KbSearch(txt,btn)
{
var txt = document.getElementById(txt);

var url ='<%=(BaseUrl & UseV3SeoKbWord) %>default.aspx?';
var btn = document.getElementById(btn);
if (txt.value.length > 2)
{
btn.style.cursor='wait';
txt.style.cursor='wait';
document.location.href=url + 'value='+ txt.value;
//event.returnValue=false;
}
if (txt.value.length < 3)
{
alert('Arama Kriteri olarak en az ьз harf girmelisiniz.');
//event.returnValue=false;
}

}
</script>