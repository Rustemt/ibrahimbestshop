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
<h1>Bilgi Bankasý</h1>
<p><%= ConfigurationManager.AppSettings("SiteName") %> bilgi bankasýna hoþgeldiniz.</p>
<p><%= ConfigurationManager.AppSettings("SiteName") %>'ekibi tarafýndan hazýrlanan bu sayfa; proticaret e-ticaret yazýlýmý özellikleri ve kullanýmý ile iligli belgeleri içermektedir.</p>
<p>Tüm makalelere sol tarftaki menüden ulaþabilir veya yukardaki arama kutusundan makalelerin içindeki bir bilgiyi aratabilirsiniz.</p>
<p> </p>
</div>
</div>
</div>