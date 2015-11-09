<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.publishers" EnableViewState="False" Codebehind="publishers.ascx.vb"%>
<%@ OutputCache Duration="1800" VaryByParam="*" %>
<div id="publishers" class="module">
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
            <a href="/store/publishers.aspx?l=A">A</a></li>
        <li>
            <a href="/store/publishers.aspx?l=B">B</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=C">C</a></li>
        <li>
            <a href="/store/publishers.aspx?l=Ç">Ç</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=D">D</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=E">E</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=F">F</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=G">G</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=H">H</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=I">I</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Ý">Ý</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=J">J</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=K">K</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=L">L</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=M">M</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=N">N</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=O">O</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Ö">Ö</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=P">P</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=R">R</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=S">S</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Þ">Þ</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=T">T</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=U">U</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Ü">Ü</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=V">V</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Q">Q</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=W">W</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Y">Y</a></li>
        <li>                              
            <a href="/store/publishers.aspx?l=Z">Z</a></li>
    </ul>
</div>
<div class="clear" />
<div runat="server" id="content">Yayýnevlerini filitrelemek için harf seçiniz.</div>
<asp:Repeater ID="rptpublishers" runat="server">
<HeaderTemplate><ul class="list"></HeaderTemplate>
<FooterTemplate></ul><div class="clear"></div></FooterTemplate>
<ItemTemplate>
<li>
<a href='<%# String.Format(BaseUrl & "/default.aspx?pub={0}", container.dataitem("PublisherId")) %>'><%#Container.DataItem("PublisherName")%></a>
</li>
</ItemTemplate>
</asp:Repeater>

</div>
</div>
</div> 
