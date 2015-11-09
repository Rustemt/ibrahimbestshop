<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cCityOrderCount.ascx.vb"
    Inherits="CityOrderCount" %>
<div id="cproviders" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>İllere Göre Sipariş
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='CityOrderChart'> </div>
            <br />
            <div id='CityOrderTable'> </div>

        </div>
    </div>
</div>
