<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.errormodule" CodeBehind="error.ascx.vb" EnableViewState="False" %>
<div id="error" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <%--<div>
            <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "ErrorPageMsg")%></div>
            <label><a href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
        </div>--%>
        <div style="width: 604px; margin: 100px auto 0 auto; background-image: url(error.png); background-repeat: no-repeat; padding-left: 356px; padding-bottom: 100px;">
            <div style="font-size: 35px; color: #2e3a47; padding-top: 50px;">SAYFA YÜKLENÝRKEN HATA OLUÞTU</div>
            <div style="padding-top: 50px; color: #f87330; font-size: 30px;">Proticaret Destek</div>
            <a href="http://www.proticaret.org" target="_blank" style="display: block; font-size: 25px; color: #2e3a47; line-height: 35px; text-decoration: none;">info@proticaret.org<br />
                www.proticaret.org (Canlý Destek)<br />
                Hata ile Ýlgili Yardým Alabilirsiniz.<br />
            </a>
        </div>
    </div>
</div>
