
<%@ Control Language="C#" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" %>

<div id="sample" class="module">
    <div id="module_content">
    <% if (HeaderVisible){  %>
    <div id="module_title">
        <span>
        <span id="module_title_icon"></span> <%=ModuleTitle%>
        <% if (IsEditable){  %>
        <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
        <% } %>
        </span>
    </div>
    <% } %>
    <div>
    <p> Örnek Ýçerik </p>
    <p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </p>
    </div>
</div>

<script type="text/C#" runat="server">

protected void Page_Load(object sender, System.EventArgs e)
{
    IsEditable = true;
	EditText = GetGlobalResourceObject("lang", "edit").ToString();
	EditUrl = "/admin/duzenle.aspx";
	EditWidth = 800;
	EditHeight = 600;


}

protected void Button1_Click(object sender, System.EventArgs e)
{
	Label1.Text = "Test Modülü";
}

</script>