<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cCargoOrderCount.ascx.vb"
    Inherits="CargoOrderCount" %>
<div id="cproviders" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>Kargolara Göre Sipariş
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='CargoOrderCount'>
            </div>
            <br />
            <div id='CargoOrderCountTable'>
            </div>
        </div>
    </div>
</div>
