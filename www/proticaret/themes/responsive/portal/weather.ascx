<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.Weather" Codebehind="weather.ascx.vb" EnableViewState="False" %>
<div id="weather" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<asp:Image ID="img" runat="server" ImageAlign="Left" ImageUrl="http://www.dmi.gov.tr/sunum/tahmingor-a1.aspx?g=1&m=ISTANBUL" BorderStyle="None"></asp:Image>
</div>
<div class="clear"></div>
</div>
</div>