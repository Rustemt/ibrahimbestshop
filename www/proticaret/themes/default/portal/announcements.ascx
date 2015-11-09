<%@ Control Language="vb" Inherits="ASPNetPortal.Announcements" AutoEventWireup="false" CodeBehind="announcements.ascx.vb" EnableViewState="False" %>
<div id="announcements" class="module">
    <div id="module_content">
        <% If HeaderVisible Then%>
        <div id="module_title">
            <span><span id="module_title_icon"></span><%=ModuleTitle%>
                <% If IsEditable Then%>
                <a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
                <% End If%>
            </span>
        </div>
        <% End If%>
        <div id="announcement_form" runat="server">
            <asp:Repeater ID="rptAnnouncements" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <% If IsEditable Then%>
                        <a href='<%# "Javascript:var PopUpWin = window.open(""/admin/EditAnnouncements.aspx?ItemId=" & DataBinder.Eval(Container.DataItem,"ItemId") & "&mid=" & ModuleId & ""","""",""width=800,height=600,scrollbars=1,status=1,toolbar=0,resizable=1"")" %>' id="edit">Düzenle</a>
                        <% End If%>
                        <img alt="" height="50px" src="<%# DataBinder.Eval(Container.DataItem,"MobileMoreLink") %>" align="left" /><a href='<%# "Javascript:var PopUpWin = window.open(""/admin/ShowAnnounce.aspx?IND=" & DataBinder.Eval(Container.DataItem,"ItemId") &  ""","""",""width=600,height=400,scrollbars=1,toolbar=0,status=1,resizable=1"")" %>'> <%# DataBinder.Eval(Container.DataItem,"Title") %></a>
                        <div class="clear"></div>
                    </li>
                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
