<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.brands" EnableViewState="False" Codebehind="brands.ascx.vb"%>
<%@ OutputCache Duration="1800" VaryByParam="*" %>
<div id="brands" class="module">
    <% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <div class="letter">
            <ul>
                <li><a href="/store/brands.aspx?l=A">A</a></li>
                <li><a href="/store/brands.aspx?l=B">B</a></li>
                <li><a href="/store/brands.aspx?l=C">C</a></li>
                <li><a href="/store/brands.aspx?l=Ç">Ç</a></li>
                <li><a href="/store/brands.aspx?l=D">D</a></li>
                <li><a href="/store/brands.aspx?l=E">E</a></li>
                <li><a href="/store/brands.aspx?l=F">F</a></li>
                <li><a href="/store/brands.aspx?l=G">G</a></li>
                <li><a href="/store/brands.aspx?l=H">H</a></li>
                <li><a href="/store/brands.aspx?l=I">I</a></li>
                <li><a href="/store/brands.aspx?l=Ý">Ý</a></li>
                <li><a href="/store/brands.aspx?l=J">J</a></li>
                <li><a href="/store/brands.aspx?l=K">K</a></li>
                <li><a href="/store/brands.aspx?l=L">L</a></li>
                <li><a href="/store/brands.aspx?l=M">M</a></li>
                <li><a href="/store/brands.aspx?l=N">N</a></li>
                <li><a href="/store/brands.aspx?l=O">O</a></li>
                <li><a href="/store/brands.aspx?l=Ö">Ö</a></li>
                <li><a href="/store/brands.aspx?l=P">P</a></li>
                <li><a href="/store/brands.aspx?l=R">R</a></li>
                <li><a href="/store/brands.aspx?l=S">S</a></li>
                <li><a href="/store/brands.aspx?l=Þ">Þ</a></li>
                <li><a href="/store/brands.aspx?l=T">T</a></li>
                <li><a href="/store/brands.aspx?l=U">U</a></li>
                <li><a href="/store/brands.aspx?l=Ü">Ü</a></li>
                <li><a href="/store/brands.aspx?l=V">V</a></li>
                <li><a href="/store/brands.aspx?l=Q">Q</a></li>
                <li><a href="/store/brands.aspx?l=W">W</a></li>
                <li><a href="/store/brands.aspx?l=Y">Y</a></li>
                <li><a href="/store/brands.aspx?l=Z">Z</a></li>
            </ul>
        </div>
        <asp:Repeater ID="rptbrands" runat="server">
            <HeaderTemplate><ul class="list"></HeaderTemplate>
            <FooterTemplate></ul><div class="clear"></div></FooterTemplate>
            <ItemTemplate>
            <li>
            <span class="thumb"><a href='<%# String.Format(BaseUrl & "/marka/{0}" & ".aspx", doUrl(container.dataitem("MarkName"))) %>'>
            <img alt="img" src='<%# BaseUrl & "/store/makethumb.aspx?file=../../" + container.dataitem("Image") & "&intSize=50" %>' /></a></span>
            <a href='<%# String.Format(BaseUrl & "/marka/{0}" & ".aspx", doUrl(container.dataitem("MarkName"))) %>'><%#Container.DataItem("MarkName")%></a>
            </li>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
