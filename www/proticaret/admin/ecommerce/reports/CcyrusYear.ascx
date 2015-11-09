<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="CcyrusYear.ascx.vb" Inherits="CcyrusYear" %>
<div id="Ccyrus" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>Ciro ( Yıllık )
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='cyrusTotalYear'>     </div>
            <br />
            <div id='cyrusTotalYearTable'> </div>
        </div>
    </div>
</div>
