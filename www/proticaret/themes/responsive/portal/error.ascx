<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.errormodule" CodeBehind="error.ascx.vb" EnableViewState="False" %>
<style type="text/css">
    .error-template {padding: 40px 15px;text-align: center;}
    .error-actions {margin-top:15px;margin-bottom:15px;}
    .error-actions .btn { margin-right:10px; }
</style>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    Oops!</h1>
                <p></p>
                <h2>Sayfa Yüklenirken Bir Hata Oluþtu !</h2> 
                <div class="error-actions">
                    <a href="/default.aspx" class="btn btn-primary btn-lg button"><span class="icon-home-2"></span>
                        Anasayfa </a><a href="/contact.aspx" class="btn btn-default btn-lg button"><span class="icon-mail-alt"></span> Hatayý Bildir ! </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="error" class="error">
    <span style="position: absolute; top:40%; left:50%; color:#2E3A47; ">
    

</span>
    <%--<div id="moduleContent" style="display:none;">
        <% If HeaderVisible Then%>
        <div class="title2"><%=ModuleTitle%></div>
        <% End If%>
        <div id="alert" runat="server" class="title2"><%=GetGlobalResourceObject("lang", "ErrorPageMsg")%></div>
        <label><a class="title2" href="<% =GetBaseUrl() %>/default.aspx"><%=GetGlobalResourceObject("lang", "GoToMainPage")%></a></label>

    </div>--%>
</div>
