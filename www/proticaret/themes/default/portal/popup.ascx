<%@ Control Language="vb" Inherits="ASPNetPortal.popup" AutoEventWireup="false" CodeBehind="popup.ascx.vb" EnableViewState="False" %>
<div id="popup" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span>
                <span id="module_title_icon"></span>
                <%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
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
