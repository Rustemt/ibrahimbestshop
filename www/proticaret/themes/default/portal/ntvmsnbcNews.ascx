<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.ntvmsnbcNews" CodeBehind="ntvmsnbcNews.ascx.vb" EnableViewState="False" %>
<div id="ntvmsnbcnews" class="module">
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
            <iframe src="http://www.ntvhaber.org/iframe.asp?kategori=&siralama=yeni&sayi=20&artalan=&yazirenk=&yaziboyut=9&kalinlik=standart&cizgirenk=" width="100%" height="250" border="0" frameborder="0"></iframe>
        </div>
    </div>
</div>
