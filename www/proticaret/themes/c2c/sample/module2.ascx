
<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.PortalModuleControl" %>

<div id="sample" class="module">
    <div id="module_content">
    <% if HeaderVisible then %>
    <div id="module_title">
        <span>
        <span id="module_title_icon"></span> <%=ModuleTitle%>
        <% if IsEditable then %>
        <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
        <% end if %>
        </span>
    </div>
    <% end if %>
    <div>
    <p> Örnek Ýçerik </p>
    <p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    </div>
</div>

<script type="text/VB" runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    IsEditable = True
        EditText = GetGlobalResourceObject("lang", "edit")
        EditUrl = "/admin/duzenle.aspx"
        EditWidth = 800
        EditHeight = 600

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = "Test Modülü"
        
    End Sub

</script>