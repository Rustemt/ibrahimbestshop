<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cUserYear.ascx.vb" Inherits="UserYear" %>
<div id="Ccyrus" class="module">
    <div id="module_content">
         
        <div id="module_title">
            <span><span id="module_title_icon"></span>Üye ( Yıllık )
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='userYear'>     </div>
            <br />
            <div id='userYearTable'> </div>
        </div>
    </div>
</div>
