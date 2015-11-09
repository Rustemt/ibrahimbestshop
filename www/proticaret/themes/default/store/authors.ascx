<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.authors" EnableViewState="False" Codebehind="authors.ascx.vb"%>
<%@ OutputCache Duration="1800" VaryByParam="*" %>
<div id="authors" class="module">
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
<div class="letter">
    <ul>
        <li>
            <a href="/store/authors.aspx?l=A">A</a></li>
        <li>
            <a href="/store/authors.aspx?l=B">B</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=C">C</a></li>
        <li>
            <a href="/store/authors.aspx?l=Ç">Ç</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=D">D</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=E">E</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=F">F</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=G">G</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=H">H</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=I">I</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Ý">Ý</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=J">J</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=K">K</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=L">L</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=M">M</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=N">N</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=O">O</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Ö">Ö</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=P">P</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=R">R</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=S">S</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Þ">Þ</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=T">T</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=U">U</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Ü">Ü</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=V">V</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Q">Q</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=W">W</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Y">Y</a></li>
        <li>                              
            <a href="/store/authors.aspx?l=Z">Z</a></li>
    </ul>
</div>
<div class="clear" />
<div runat="server" id="content">Yazarlarý filitrelemek için harf seçiniz.</div>
<asp:Repeater ID="rptauthors" runat="server">
<HeaderTemplate><ul class="list"></HeaderTemplate>
<FooterTemplate></ul><div class="clear"></div></FooterTemplate>
<ItemTemplate>
<li>
<a href='<%# String.Format(BaseUrl & "/default.aspx?auth={0}", container.dataitem("AuthorId")) %>'><%#Container.DataItem("AuthorName")%></a>
</li>
</ItemTemplate>
</asp:Repeater>

</div>
</div>
</div> 
