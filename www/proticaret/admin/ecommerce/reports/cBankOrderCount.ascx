<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cBankOrderCount.ascx.vb"
    Inherits="BankOrderCount" %>
<div id="cproviders" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>Bankaya Göre Sipariş
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='BankOrderCount'>     </div>
            <br />
            <div id='BankOrderCountTable'> </div>
        </div>
    </div>
</div>
