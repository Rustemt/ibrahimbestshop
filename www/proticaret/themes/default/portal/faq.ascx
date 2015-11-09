<%@ Control Language="vb" Inherits="ASPNetPortal.faq" AutoEventWireup="false" Codebehind="faq.ascx.vb" EnableViewState="False" %>
<div id="faq" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %> 
<div>
<asp:Repeater ID="rptfaq" runat="server">
<HeaderTemplate><dl id="faq"></HeaderTemplate>
<ItemTemplate>
<%--<label><%#Container.DataItem("FaqAuthor")%></label>
<label><%#DataBinder.Eval(Container.DataItem, "FaqDate", "{0: dd.MM.yyyy HH:mm}")%></label>
<label><%#container.dataitem("FaqTitle")%></label>
<label><%#Server.HtmlDecode(Container.DataItem("FaqDetails"))%></label>
<label><%#Server.HtmlDecode(Container.DataItem("FaqAnswer"))%></label>
--%>
<dt><%#container.dataitem("FaqTitle")%></dt>
<dd><div class="answer"><%#Server.HtmlDecode(Container.DataItem("FaqAnswer"))%></div></dd>
<%if IsEditable then%>
<a href='<%# "Javascript:var PopUpWin = window.open(""/admin/editfaqs.aspx?FaqId=" & DataBinder.Eval(Container.DataItem,"FaqId") & "&mid=" & ModuleId & ""","""",""width=800,height=600,scrollbars=1,status=1,toolbar=0,resizable=1"")" %>' id="edit">Düzenle</a>
<% end if %>
</ItemTemplate>
<FooterTemplate></dl></FooterTemplate>
</asp:Repeater> 
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
$('#faq').find('dd').hide().end().find('dt').click(function() {
var answer = $(this).next();
if (answer.is(':visible')) {
answer.slideUp();
} else {
answer.slideDown('slow');
}
});
});
</script>