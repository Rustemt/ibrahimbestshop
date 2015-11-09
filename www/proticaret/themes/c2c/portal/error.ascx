<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.errormodule" CodeBehind="error.ascx.vb" EnableViewState="False" %>
<div id="error">
    <div id="moduleContent">
        <% If HeaderVisible Then%>
        <div class="title2"><%=ModuleTitle%></div>
        <% End If%>
            <div id="alert" runat="server" class="title2"><%=GetGlobalResourceObject("lang", "ErrorPageMsg")%></div>
            <label><a class="title2" href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>
    </div>
</div>
