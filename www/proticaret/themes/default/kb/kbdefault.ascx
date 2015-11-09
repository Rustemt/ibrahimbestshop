<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.kbdefault" EnableViewState="False" Codebehind="kbdefault.ascx.vb" %>
<div id="kbdetails" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title">
<span>
<span id="module_title_icon"></span>
<%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> 
</div>
<% end if %>
<div>
<h1>Bilgi Bankas�</h1>
<p><%= ConfigurationManager.AppSettings("SiteName") %> bilgi bankas�na ho�geldiniz.</p>
<p><%= ConfigurationManager.AppSettings("SiteName") %>'ekibi taraf�ndan haz�rlanan bu sayfa; proticaret e-ticaret yaz�l�m� �zellikleri ve kullan�m� ile iligli belgeleri i�ermektedir.</p>
<p>T�m makalelere sol tarftaki men�den ula�abilir veya yukardaki arama kutusundan makalelerin i�indeki bir bilgiyi aratabilirsiniz.</p>
<p> </p>
</div>
</div>
</div>