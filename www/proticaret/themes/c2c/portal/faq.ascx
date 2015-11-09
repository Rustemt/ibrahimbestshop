<%@ Control Language="vb" Inherits="ASPNetPortal.faq" AutoEventWireup="false" Codebehind="faq.ascx.vb" EnableViewState="False" %>
<div id="faq" class="module">
	<% if HeaderVisible then %>
        <div class="moduleTitle">
            <%=ModuleTitle%>
            <% if IsEditable then %>
            <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
            <% end if %>
        </div>
    <% end if %>
    <div class="moduleContent moduleContentCol1">
        <asp:Repeater ID="rptfaq" runat="server">
        <HeaderTemplate><dl id="faq"></HeaderTemplate>
        <ItemTemplate>
        <%--<label><%#Container.DataItem("FaqAuthor")%></label>
        <label><%#DataBinder.Eval(Container.DataItem, "FaqDate", "{0: dd.MM.yyyy HH:mm}")%></label>
        <label><%#container.dataitem("FaqTitle")%></label>
        <label><%#Server.HtmlDecode(Container.DataItem("FaqDetails"))%></label>
        <label><%#Server.HtmlDecode(Container.DataItem("FaqAnswer"))%></label>
        --%>
        <dt class="moduleTitle radius5"><%#container.dataitem("FaqTitle")%></dt>
        <dd class="radius5"><div class="answer"><%#Server.HtmlDecode(Container.DataItem("FaqAnswer"))%></div></dd>
        <%if IsEditable then%>
        <a href='<%# "Javascript:var PopUpWin = window.open(""/admin/modules/editfaqs.aspx?FaqId=" & DataBinder.Eval(Container.DataItem,"FaqId") & "&mid=" & ModuleId & ""","""",""width=800,height=600,scrollbars=1,status=1,toolbar=0,resizable=1"")" %>' id="edit" class="button">Düzenle</a>
        <% end if %>
        </ItemTemplate>
        <FooterTemplate></dl></FooterTemplate>
        </asp:Repeater> 
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