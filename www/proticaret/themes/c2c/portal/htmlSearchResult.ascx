<%@ Control Language="vb" AutoEventWireup="false" Inherits="ASPNetPortal.htmlSearchResult" Codebehind="htmlSearchResult.ascx.vb" EnableViewState="False" %>
<div id="htmlSearchResult" class="module">
<div id="module_content">
<% if HeaderVisible then %>
<div id="module_title"> <span> <span id="module_title_icon"></span> <%=ModuleTitle%>
<% if IsEditable then %>
<a href="<%=EditNavigateUrl %>" id="module_title_edit"><%=EditText %></a>
<% end if %>
</span> </div>
<% end if %>
<div>
<label><asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
<asp:HyperLink id="btnSearch" CssClass="button" runat="server" NavigateUrl=""><%=GetGlobalResourceObject("lang", "Search")%></asp:HyperLink>
</label>

<label><asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label></label>
</div>
<div>
<label><%=GetGlobalResourceObject("lang", "SearchResults")%></label>
    <asp:DataGrid class="btnStyle" ID="DataGrid1" runat="server" EnableViewState="False" Width="100%" AutoGenerateColumns="False" CssClass="datalist" HeaderStyle-CssClass="title" GridLines="none" ItemStyle-CssClass="row">
        <HeaderStyle CssClass="title" />
        <FooterStyle CssClass="footer" />
        <PagerStyle CssClass="pager"></PagerStyle>
        <Columns>
        <asp:TemplateColumn HeaderText="<%$ Resources:lang, Page%>">
        <ItemTemplate >
        <a href="<%# GetPageLink(DataBinder.Eval(Container.DataItem,"TabId")) %>"><%#DataBinder.Eval(Container.DataItem,"TabName") %></a>
        </ItemTemplate>
        </asp:TemplateColumn>
        <asp:BoundColumn DataField="ModuleTitle" HeaderText="<%$ Resources:lang, Section%>"></asp:BoundColumn>
        </Columns>
    </asp:DataGrid>
</div>
</div>
</div>