<%@ Control Language="VB" AutoEventWireup="false" CodeBehind="cPaymentTypeOrderCount.ascx.vb" Inherits="PaymentTypeOrderCount" %>
<div id="cproviders" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span>Ödeme Türüne Göre Sipariş
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit">
                    <%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div>
            <asp:Label ID="lblScript" runat="server" />
            <div id='PaymentTypeOrderCount'>     </div>
            <br />
            <div id='PaymentTypeOrderCountTable'> </div>
        </div>
    </div>
</div>
