<%@ Control Language="vb" Inherits="ASPNetPortal.popup" AutoEventWireup="false" CodeBehind="popup.ascx.vb" EnableViewState="False" %>
<div id="popup" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <div>

            <%  If (Not Page.IsPostBack) And ModuleVisible Then%>
            <script type="text/javascript">
                $(document).ready(function () {
                    $.fn.colorbox({ href: '#' + '<%= popHolder.ClientId %>', inline: true });
});
            </script>
            <div style='display: none'>
                <div id="popHolder" runat="server"></div>
            </div>
            <% End If%>
        </div>
    </div>
</div>
